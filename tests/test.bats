setup() {
  set -eu -o pipefail
  export DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )/.."
  export TESTDIR=~/tmp/test-woodoo
  mkdir -p $TESTDIR
  export PROJNAME=test-woodoo
  export DDEV_ADDON=dermatz/ddev-woodoo-buildtools-magento
  export DDEV_NON_INTERACTIVE=true
  ddev delete -Oy ${PROJNAME} >/dev/null 2>&1 || true
  cd "${TESTDIR}"
  ddev config --project-name=${PROJNAME}
  ddev start -y >/dev/null
}

health_checks() {
  run ddev frontend --version
}

teardown() {
  set -eu -o pipefail
  cd ${TESTDIR} || ( printf "unable to cd to ${TESTDIR}\n" && exit 1 )
  ddev delete -Oy ${PROJNAME} >/dev/null 2>&1
  [ "${TESTDIR}" != "" ] && rm -rf ${TESTDIR}
}

@test "install from directory" {
  set -eu -o pipefail
  cd ${TESTDIR}
  echo "# ddev get ${DIR} with project ${PROJNAME} in ${TESTDIR} ($(pwd))" >&3
  ddev get ${DIR}
  ddev restart
  health_checks
}

@test "install from release" {
  set -eu -o pipefail
  cd ${TESTDIR} || ( printf "unable to cd to ${TESTDIR}\n" && exit 1 )
  echo "# ddev get ${DDEV_ADDON} with project ${PROJNAME} in ${TESTDIR} ($(pwd))" >&3
  ddev get ${DDEV_ADDON}
  ddev restart >/dev/null
  health_checks
}

@test "magshare command updates Magento base URL" {
  set -eu -o pipefail
  cd ${TESTDIR}
  ddev get ${DIR}
  ddev restart
  run ddev magshare
  [ "$status" -eq 0 ]
  run ddev exec bin/magento config:show web/unsecure/base_url
  [ "$status" -eq 0 ]
  [[ "$output" == https://*.ngrok.io/ ]]
  run ddev exec bin/magento config:show web/secure/base_url
  [ "$status" -eq 0 ]
  [[ "$output" == https://*.ngrok.io/ ]]
}

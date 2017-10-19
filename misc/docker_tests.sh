#!/usr/bin/env bash

# todo push image to docker registry
docker run -it bioinfo_base

#curl -Lso /bin/kscript https://raw.githubusercontent.com/holgerbrandl/kscript/abb5f4c6ee72ec90d22c0fe913284e92363cad0e/kscript && chmod u+x /bin/kscript
curl -Lso /bin/kscript https://www.dropbox.com/s/l5g8vr0wz78y3zy/kscript?dl=1 && chmod u+x /bin/kscript

kscript --help
kscript --self-update


## or using github repo
git clone https://github.com/holgerbrandl/kscript.git
cd kscript
export KSCRIPT_HOME=$(pwd)

gradle shadowJar && cp build/libs/kscript-0.1-SNAPSHOT-all.jar kscript.jar

kscript --clear-cache

${KSCRIPT_HOME}/test/test_suite.sh
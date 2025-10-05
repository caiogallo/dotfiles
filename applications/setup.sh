#!/usr/bin/env bash

grep -rL "NoDisplay" /usr/share/applications/ | xargs -I{} sudo sh -c "echo 'NoDisplay=true' >> {}"

BASEDIR=$(dirname $0)
sudo cp ${BASEDIR}/* /usr/share/applications/.

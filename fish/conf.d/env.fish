#!/usr/bin/env fish
set -Ux JAVA_HONE /usr/lib/jvm/default-runtime
set -Ux M2_HOME /opt/maven
set -Ux MVND_HOME /opt/mvnd
set -Ux fish_user_paths $HOME/bin $HOME/.local/bin $JAVA_HONE/bin $M2_HOME/bin $MVND_HOME/bin

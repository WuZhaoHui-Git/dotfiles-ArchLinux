export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.cargo/bin

if [[ -f /usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator ]]; then
	set -o allexport
	source <(/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)
	set +o allexport
fi

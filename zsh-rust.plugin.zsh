export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"

export PATH="${PATH}:${CARGO_HOME}/bin:${RUSTUP_HOME}/toolchains/stable-x86_64-unknown-linux-gnu/bin"

# Install rustup if it isn't installed already
if ! [[ -d "${RUSTUP_HOME}" ]]; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- --no-modify-path -y
fi

# Setup rustup and cargo environments
export RUSTUP_HOME=$HOME/.rustup
export CARGO_HOME=$HOME/.cargo
export PATH=$CARGO_HOME/bin:$PATH

# Install rustup if it isn't installed already
if ! [[ -s "${HOME}/.rustup" ]]; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- --no-modify-path -y
fi

#!/bin/bash

set -e

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y

sudo ln -s "${HOME}/.cargo/bin/cargo"		'/usr/local/bin/cargo'
sudo ln -s "${HOME}/.cargo/bin/cargo-clippy"	'/usr/local/bin/cargo-clippy'
sudo ln -s "${HOME}/.cargo/bin/cargo-fmt"	'/usr/local/bin/cargo-fmt'
sudo ln -s "${HOME}/.cargo/bin/cargo-miri"	'/usr/local/bin/cargo-miri'
sudo ln -s "${HOME}/.cargo/bin/clippy-driver"	'/usr/local/bin/clippy-driver'
sudo ln -s "${HOME}/.cargo/bin/rls"		'/usr/local/bin/rls'
sudo ln -s "${HOME}/.cargo/bin/rustc"		'/usr/local/bin/rustc'
sudo ln -s "${HOME}/.cargo/bin/rustdoc"		'/usr/local/bin/rustdoc'
sudo ln -s "${HOME}/.cargo/bin/rustfmt"		'/usr/local/bin/rustfmt'
sudo ln -s "${HOME}/.cargo/bin/rust-gdb"	'/usr/local/bin/rust-gdb'
sudo ln -s "${HOME}/.cargo/bin/rust-gdbgui"	'/usr/local/bin/rust-gdbgui'
sudo ln -s "${HOME}/.cargo/bin/rust-lldb"	'/usr/local/bin/rust-lldb'
sudo ln -s "${HOME}/.cargo/bin/rustup"		'/usr/local/bin/rustup'

rustup default nightly

sudo apt-get -y install		\
	build-essential		\
	libglib2.0-dev		\
	libgtk-3-dev		\
	librust-alsa-sys-dev	\
	librust-libudev-dev	\
	librust-atk-dev		\
	pkg-config


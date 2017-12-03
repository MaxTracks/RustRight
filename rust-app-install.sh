#!/bin/bash

# install/update rust dedicated server
function install_rust_dedi () {
	steamcmd +login anonymous +force_install_dir rust +app_update 258550 validate +quit
}

# copy startup script into directory
function install_startup_script () {
	cp rust-dedi-startup.sh ~/.steam/steamcmd/rust/
}

# install oxide
function install_oxide () {
	curdir = $PWD
	cd ~/.steam/steamcmd/rust
	# download oxide
	wget https://github.com/OxideMod/Oxide/releases/download/latest/Oxide-Rust/Oxide-Rust.zip
	# extract oxide
	unzip Oxide-Rust.zip
	# TODO: get plugins?
	cd $curdir
}

# start the server
function start_rust_dedi () {
	./rust-dedi-startup.sh
}

# TODO: Parse arguments for server settings and mods

sudo apt update
sudo apt -y upgrade
sudo apt install -y steam
sudo apt install -y steamcmd

install_rust_dedi
install_startup_script

# Install Oxide if desired
#install_oxide

# Change to the rust server directory and start for the first time
cd ~/.steam/steamcmd/rust/
start_rust_dedi

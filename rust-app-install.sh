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
	echo "asdf"
	# TODO: download oxide
	# TODO: extract oxide
	# TODO: get plugins?
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

# Change to the rust server directory and start for the first time
cd ~/.steam/steamcmd/rust/
start_rust_dedi

#!/bin/bash

# install/update rust dedicated server
function install_rust_dedi () {
	./steamcmd +login anonymous +force_install_dir rust +app_update 258550 validate +quit
}

# copy startup script into directory
function install_startup_script () {
	cp rust-dedi-startup.sh ~/.steam/steamcmd/rust/
}

# install oxide
function install_oxide () {
	echo "asdf"
}

# start the server
function start_rust_dedi () {
	~/.steam/steancmd/rust/rustr-dedi-startup.sh
}

sudo apt update
sudo apt upgrade
sudo apt install steam
sudo apt install steamcmd

install_rust_dedi
install_startup_script
start_rust_dedi


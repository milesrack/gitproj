#!/bin/bash

dependencies=(git curl sed jq)

for cmd in ${dependencies[@]}
do
	[[ $(which $cmd 2>/dev/null) ]] || (echo "$cmd is not installed" && exit)
done

mkdir -p $HOME/.config/gitproj
echo -e "PROJECT_DIR=\"\"\nAPI_TOKEN=\"\"" > $HOME/.config/gitproj/config
sudo cp gitproj /usr/local/bin/
sudo chmod +x /usr/local/bin/gitproj
sudo ln -fs /usr/local/bin/gitproj /usr/local/bin/gp

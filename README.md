# GitProj
GitProj is a command-line utility designed to automate creating new GitHub repositories.

## Requirements
- `git`
- `curl`
- `sed`
- `jq`

## Installation
```bash
git clone https://github.com/milesrack/gitproj
cd gitproj
chmod +x install.sh && ./install.sh
```

## Usage
To create a new repository, run the `gitproj` command (or `gp`) followed by the name of your project. Additionally, you can specify a description, topics, and whether the repository should be private or not. 
```
Usage: gitproj <name>

-d	Repository description.
-t	Repository topics seperated by a space.
-p	Create a private repository.
```

## Configuration
`gitproj` reads a configuration file from `$HOME/.config/gitproj/config`. If a configuration file is not present, an empty one will be created.
```
PROJECT_DIR=""
API_TOKEN=""
```
The `PROJECT_DIR` variable specifies the directory new repositories will be created in. The `API_TOKEN` variable contains your GitHub API token. You can generate a GitHub API token [here](https://github.com/settings/tokens).

## License
Licensed under the [GNU General Public License Version 3.0](https://www.gnu.org/licenses/gpl-3.0.txt)

#!/bin/bash
# Filenaam: 00_create_git_remote_repos.sh
# Functie: create centrale remote git repository van de commandline
# Opmerking: nieuwe style mbv GitHub API Token 
# Referentie: https://medium.com/better-programming/create-github-repos-remotely-25153a6e6890

### BEGIN Variable deel van het script ###
# Maak eerst op github site een access token aan en copieer de waarde op
# https://github.com/settings/tokens
# settings: https://miro.medium.com/max/1400/1*dsEiSQknY4CdhDVEGnTfsg.png
# de plaats <access token waarde> in GH_API_TOKEN='<access token waarde>'
GH_API_TOKEN='ce8c66f892faa72ca28341c7d64ad4d3683e658f'
# Variable to store first argument to setup-repo, the repo name. Will be used as GH repo name, too.
NEW_REPO_NAME='cx1964ReposGraphics'
### EINDE Variable deel van het script ###

### BEGIN constante deel van het script ###
# GitHub User Name
GH_USER='cx1964' #@gail.com'
# Store current working directory.
CURRENT_DIR=$PWD
# Project directory can be passed as second argument to setup-repo, or will default to current working directory.
PROJECT_DIR=${2:-$CURRENT_DIR}
# GitHub repos Create API call
curl -H "Authorization: token $GH_API_TOKEN" https://api.github.com/user/repos -d '{"name": "'"${NEW_REPO_NAME}"'"}'
git init $PROJECT_DIR
# Initialize Git in project directory, and add the GH repo remote.
git -C $PROJECT_DIR remote add origin git@github.com:$GH_USER/$NEW_REPO_NAME.git
#git remote add origin https://github.com/cx1964/cx1964ReposPlot.git

git push -u origin master
### EINDE constante deel van het script ###
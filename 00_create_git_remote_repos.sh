#!/bin/bash
# Filenaam: 00_create_git_remote_repos.sh
# Functie: create centrale remote git repository van de commandline
# Opmerking: nieuwe style mbv GitHub API Token 
# Referentie: https://medium.com/better-programming/create-github-repos-remotely-25153a6e6890

###########################################
### BEGIN Variable deel van het script ###
##########################################
#
# ### 00 Eenmalig voor iedere nieuwe Github repository deploy ment key aanmaken ###
# --------------------------------------------------------------------------------- 
# Om access tokens te kunnen gebruiken (zie hieronder bij "01 Instelling en aanmaken access token")
# moet men eerst eenmalig de deploy keys aanmaken
# zie procedure https://developer.github.com/v3/guides/managing-deploy-keys/#deploy-keys

# stap1: Run het command ssh-keygen op je werkstation
#        Default wodt er onder Linux er 3 files aangemaakt in /home/.shh met keygegevens
# Vervolgens moet voor iedere nieuwe repository stap2 t/m stap8 van het aanmaken van deploy keys doorlopen.
# Volg vanaf stap2 de overige 8 stappen van de Setup paragraaf van https://developer.github.com/v3/guides/managing-deploy-keys/#deploy-keys  
# In stap6 gebruik de volledige inhoud van de file home/.shh/id_rsa.pub
# bij het aanmaken van een deployment key van een specifieke respository
# zie https://github.com/cx1964/<respository naam>/settings/keys
#
# ### 01 Instelling en aanmaken access token ###
#-----------------------------------------------
# Maak eerst op github site een access token aan en copieer de waarde op
# https://github.com/settings/tokens
# en settings: https://miro.medium.com/max/1400/1*dsEiSQknY4CdhDVEGnTfsg.png
# de plaats <access token waarde> in GH_API_TOKEN='<access token waarde>'
GH_API_TOKEN='ce8c66f892faa72ca28341c7d64ad4d3683e658f'
#
# ## 02 Instelling githup Repository naam ##
#-----------------------------------------------
# Variable to store first argument to setup-repo, the repo name. Will be used as GH repo name, too.
NEW_REPO_NAME='cx1964ReposGraphics'
### EINDE Variable deel van het script ###
#
#
#
###########################################
### BEGIN constante deel van het script ###
###########################################
# GitHub User Name
GH_USER='cx1964' #@gail.com'
# Store current working directory.
CURRENT_DIR=$PWD
# Project directory can be passed as second argument to setup-repo, or will default to current working directory.
PROJECT_DIR=${2:-$CURRENT_DIR}
# GitHub repos Create API call
curl -H "Authorization: token $GH_API_TOKEN" https://api.github.com/user/repos -d '{"name": "'"${NEW_REPO_NAME}"'"}'
git init $PROJECT_DIR

git add *.sh
git add *.py
git add README.md
git add .gitignore

git commit -m "Initiele files"

# Initialize Git in project directory, and add the GH repo remote.
git -C $PROJECT_DIR remote add origin git@github.com:$GH_USER/$NEW_REPO_NAME.git

git push -u origin master
### EINDE constante deel van het script ###
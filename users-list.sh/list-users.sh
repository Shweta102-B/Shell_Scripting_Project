#!/bin/bash

#Github API URL 
API_URL="https://api.github.com"

#Github username and personal access token 
USERNAME=$username
Token=$token

#user and Repository information
REPO_OWNER=$1
REPO_NAME=$2

#Function to make a GET request to the Github API

function github_api_get {
	local endpoint="$1"
	local url="${API_URL}/${endpoint}"

	#send a GET request to the Github API with authentication 
	curl -s -u "${USERNAME}:${TOKEN}" "$url"

}

#function to list users with read access to the repostory
 function list_users_with_read_access {
  local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

  #fetch the list of collaborators on the repostiory
  collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"


  #Display the lists of collabrators with read access
  if [[ -z "$collaborators" ]]; then 
	 echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}"
 else
	echo "Users with the read access to ${REPO_OWNER}/${REPO_NAME}:"	
	echo "$collaborators"

  fi
}

#main script
#
echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}"
list_users_with_read_access 




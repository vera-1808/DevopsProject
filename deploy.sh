#!/bin/bash

# Check the Git branch
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    ./build.sh

    # Log in to Docker Hub (replace with your actual Docker Hub credentials)
    docker login -u veera1808 -p dckr_pat_C7FMRRRiGBfoZvetq6DDyyYf8OU

  
    # Tag the image
    docker tag react-appimg veera1808/dev_repo

    # Push the image to the Dev Docker Hub repository
    docker push veera1808/dev_repo

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    # Build your project
    ./build.sh

    # Log in to Docker Hub (replace with your actual Docker Hub credentials)
    docker login -u veera1808 -p dckr_pat_C7FMRRRiGBfoZvetq6DDyyYf8OU

   
    # Tag the image
    docker tag react-appimg veera1808/prod_repo 

    # Push the image to the Prod Docker Hub repository
    docker push veera1808/prod_repo
else
    echo "Deployment error"
fi


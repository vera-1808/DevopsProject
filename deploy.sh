#!/bin/bash

# Check the Git branch
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    ./build.sh

    # Log in to Docker Hub (replace with your actual Docker Hub credentials)
    docker login -u vera1808 -p dckr_pat_xxDIcXWe_KR09IrYop_gOzksgnE

  
    # Tag the image
    docker tag react-appimg vera1808/dev_repo

    # Push the image to the Dev Docker Hub repository
    docker push vera1808/dev_repo

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    # Build your project
    ./build.sh

    # Log in to Docker Hub (replace with your actual Docker Hub credentials)
    docker login -u vera1808 -p dckr_pat_xxDIcXWe_KR09IrYop_gOzksgnE

   
    # Tag the image
    docker tag react-appimg vera1808/prod_repo 

    # Push the image to the Prod Docker Hub repository
    docker push vera1808/prod_repo
else
    echo "Deployment error"
fi


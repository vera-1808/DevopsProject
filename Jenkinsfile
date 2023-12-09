pipeline {
    agent any
 stages {
        stage('cleaning the os') {
            steps {
                sh 'docker rm -f $(docker ps -aq)' 
            }
        }
    stages {
        stage('Checkout') {
            steps {
               git branch: 'main',
               url: 'https://github.com/Chaitra1803/Reactapp-Project.git'
            }
        }

        stage('Build and Push Docker Image') {
            steps {
                // Grant executable permissions to the build script
                sh 'chmod +x deploy.sh'

                // Build the Docker image using the build script
                sh './deploy.sh'

              
            }
        }
    }
}

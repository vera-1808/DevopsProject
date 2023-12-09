pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
               git branch: 'main',
               url: 'https://github.com/vera-1808/DevopsProject.git'
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

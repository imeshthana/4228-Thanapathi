
pipeline {
    agent any

    environment {
        GITHUB_REPO_URL = 'https://github.com/imeshthana/4228-Thanapathi.git'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: "${env.GITHUB_REPO_URL}"
            }
        }
        stage('Docker Build') {
            steps {
                bat 'docker build -t location_device_manager .'
            }
        }
        stage('Run Docker Image') {
            steps {
                bat 'docker run -d -p 5000:5000 location_device_manager'
            }
        }
    }
    
}
pipeline {
    agent any

    stages {

        stage('Pull Code from Git') {
            steps {
                git branch: 'master',
                    url: 'https://github.com/YOUR_USERNAME/cicd-practice.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t cicd-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 80:80 --name cicd-container cicd-app'
            }
        }

    }
}
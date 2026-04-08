pipeline {
    agent { label 'ci-agent' }

    stages {

        stage('Pull Code from Git') {
            steps {
                git branch: 'master',
                    url: 'https://github.com/Teju-hub/cicd-practice.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t cicd-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                    docker stop cicd-container || true
                    docker rm cicd-container || true
                    docker run -d -p 80:80 --name cicd-container cicd-app
                '''
            }
        }

    }
}
pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Check Docker') {
            steps {
                sh 'docker --version'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t github-jenkins-demo:v1 .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker rm -f github-jenkins-demo || true'
                sh 'docker run -d --name github-jenkins-demo -p 8096:80 github-jenkins-demo:v1'
            }
        }

        stage('Verify') {
            steps {
                sh 'curl -f http://localhost:8096'
            }
        }
    }
}

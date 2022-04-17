pipeline {
    agent any
    stages {
        stage('CI') {
            agent {
                docker { image 'node:16.13.1-alpine' }
            }
    stages {
        stage('NPM') {
            steps {
                sh 'ls -a'
                sh 'rm -rf build.zip'
                sh 'rm -rf build'
                sh 'node --version'
                sh 'npm ci'
            }
        }
    }
        }
    }
}

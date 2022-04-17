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
                sh 'ls -la'
                sh 'rm -rf build.zip'
                sh 'rm -rf build'
                sh 'node --version'
                sh 'npm ci'
            }
        }
        stage('Test') {
            steps {
                sh 'npm test -- --coverage' 
                sh 'ls -la' 
                archiveArtifacts artifacts: 'coverage/*.*', followSymlinks: false
                cobertura autoUpdateHealth: false, autoUpdateStability: false, coberturaReportFile: 'coverage/coberturacoverage.xml', conditionalCoverageTargets: '70, 0, 0', failUnhealthy: false, failUnstable: false, lineCoverageTargets: '80, 0, 0', maxNumberOfBuilds: 0, methodCoverageTargets: '80, 0, 0', onlyStable : false, sourceEncoding: 'ASCII', zoomCoverageChart: false
            }
        }
    }
        }
    }
}

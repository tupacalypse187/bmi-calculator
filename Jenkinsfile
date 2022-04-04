pipeline {
    agent any
        stages {
            stage('SCA') {
                //agent {
                  //  docker {
                    //    image 'sonarsource/sonar-scanner-cli:latest'
                    //}
                //}
                environment {
                    scannerHome = tool 'SonarQubeScanner'
                }
                steps {
                    echo "Steps to execute SCA"
                withSonarQubeEnv(installationName: 'sonarqube', credentialsId: 'SonarToken') {
                    // sh 'sonar-scanner -Dsonar.projectVersion=1.0 -Dsonar.projectKey=react-bmi-app -Dsonar.sources=src'
                    sh "${scannerHome}/bin/sonar-scanner -Dsonar.projectVersion=1.0 -Dsonar.projectKey=react-bmi-app -Dsonar.sources=src"
                }
                    waitForQualityGate(abortPipeline: true, credentialsId: 'SonarToken')
                }
            }
        }
}

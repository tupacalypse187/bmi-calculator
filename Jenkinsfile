pipeline {
    agent any
        stages {
            stage('SCA') {
                agent {
                    docker {
                        image 'sonarsource/sonar-scanner-cli:latest'
                    }
                }
                steps {
                    echo "Steps to execute SCA"
                withSonarQubeEnv(installationName: 'sonarqube', credentialsId: 'SonarToken') {
                    sh 'sonar-scanner -Dsonar.projectVersion=1.0 -Dsonar.projectKey=react-bmi-app -Dsonar.sources=src -Dorg.jenkinsci.plugins.durabletask.BourneShellScript.LAUNCH_DIAGNOSTICS=true'
                }
                    waitForQualityGate(abortPipeline: true, credentialsId: 'SonarToken')
                }
            }
        }
}

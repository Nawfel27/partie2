pipeline {
    agent any
    tools {
        maven "MonMaven"
    }
    stages {
        stage("Git Checkout") {
            steps {
                git credentialsId: "connection_git-jenkins", url: "https://github.com/YassineBoutouil/Jenkins.git"
            }
        }
        stage('Build the application') {
            steps {
                sh "mvn clean install"
            }
        }
        stage("Unit Test Execution") {
            steps{
                sh "mvn test"
            }
        }
    }
}
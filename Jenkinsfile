pipeline {
    agent any
    tools {
        maven "MonMaven"
    }
    stages {
        stage("Git Checkout") {
            steps {
                git credentialsId: "id_git", url: "https://github.com/Nawfel27/partie2.git"
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

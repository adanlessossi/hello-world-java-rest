pipeline {
    agent any
    //agent { docker { image '3.6.3'}}
    environment {
        // mavenHome 'jenkins-maven'
        // dockerHome 'jenkins-docker'
        //PATH '$dockerHome/bin:$mavenHome/bin:$PATH'
    }
    stages {
        stage('Checkout') {
            steps {
                echo "Build"
                sh 'mvn --version'
                sh 'docker --version'
            }
        }
        stage('Build') {
            steps {
                echo "Build"
                sh 'mvn clean compile'
            }
        }
        stage ('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage ('Integration Test') {
            steps {
                sh 'mvn failsafe:integration-test'
            }
        }
    } post {
        always {
            echo "Run always"
        }
        success {
            echo "Run On Success"
        }
        failure {
            echo "Run on Failure"
        }
    }
}

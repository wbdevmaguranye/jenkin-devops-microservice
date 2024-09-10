pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Build"
            }
        }
        stage('Test') {
            steps {
                echo "Test"
            }
        }
        stage('Integration Test') {
            steps {
                echo "Integration Test"
            }
        }
    }
    post {
        always {
            echo 'I’m always running'
        }
        success {
            echo 'I run when success'
        }
        failure {
            echo 'I run when fail'
        }
    }
}

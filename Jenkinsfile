pipeline {
    agent {
        docker { 
            image 'maven:3.6.3'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    stages {
        stage('Build') {
            steps {
                echo "Build"
                sh "mvn --version"
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

pipeline {
    agent any
    environment {
        dockerHome = tool name: 'myDocker', type: 'org.jenkinsci.plugins.docker.commons.tools.DockerTool'
        mavenHome = tool name: 'myMaven', type: 'hudson.tasks.Maven$MavenInstallation'
        PATH = "${dockerHome}/bin:${mavenHome}/bin:${env.PATH}"
    }
    stages {
        stage('Checkout') {
            steps {
                sh "mvn --version"
                sh "docker version"
                echo "Build"
                echo "PATH - ${env.PATH}"
                echo "BUILD_NUMBER - ${env.BUILD_NUMBER}"
                echo "BUILD_ID - ${env.BUILD_ID}"
                echo "JOB_NAME - ${env.JOB_NAME}"
                echo "BUILD_TAG - ${env.BUILD_TAG}"
                echo "BUILD_URL - ${env.BUILD_URL}"
            }
        }
        stage('Compile') {
            steps {
                sh "mvn clean compile"
               
            }
        }
        stage('Test') {
            steps {
                sh "mvn test"
            }
        }
        stage('Integration Test') {
            steps {
                echo "mvn failsafe:integration-test failsafe:verify"
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
        // Uncomment if you want to do something when the build status changes
        // changed {
        //     echo 'Do something when the status of the build changes'
        // }
    }
}

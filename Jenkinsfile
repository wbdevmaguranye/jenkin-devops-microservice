pipeline {
   agent any
	// agent{
	// 	docker{image 'maven:3.6.3'}
	// }
    stages {
        stage('Build') {
            steps {
                echo "Build"
				// sh "mvn --version"
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
		//  changed {
        //     echo 'Do  something when the status of the build changes'
        // }
    }
}

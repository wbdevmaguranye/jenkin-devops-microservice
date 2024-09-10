pipeline {
   agent any{
	// agent{
	// 	docker{image 'maven:3.6.3'}
	// }
    // agent{
	// 	docker{image 'node:13.8'}
	// }
    // stages {
        stage('Build') {
            steps {
        //  sh "mvn --version"
        //   sh "node --version"
                echo "Build"
                echo "PATH-$PATH"
                echo "BUILD_NUMBER-$env.BUILD_NUMBER"
                echo "BUILD_ID-$env.ID"
                echo "JOB_NAME-$env.JOB_NAME"
                echo "BUILD_TAG-$env.BUILD_TAG"
				echo "BUILD_URL-$env.URL"
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

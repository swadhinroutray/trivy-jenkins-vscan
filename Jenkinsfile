pipeline {
	agent any

	
	environment {
		IMAGE_NAME = "swadhinroutray/trivy-scan:latest"
		// DOCKER_HOST ='/usr/local/bin'
		TRIVY_HOST  ='/opt/homebrew/opt/trivy/bin'
		}
	
	// aquasec/trivy
	
	stages {
		// stage('initialize') {
		// 	steps {
				
		// 		sh	"${DOCKER_HOST}/docker version" // DOCKER_CERT_PATH is automatically picked up by the Docker client
		// 	}
		// }
		stage("Scan") {

			steps {
				sh '${TRIVY_HOST}/trivy image ${IMAGE_NAME} > scan.txt'
			}
		}
	}
	post {
        always {
            archiveArtifacts artifacts: 'scan.txt', onlyIfSuccessful: true
            
            echo 'I will always say Hello again!'
                
            emailext attachLog: true, attachmentsPattern: 'scan.txt',
                body: "${currentBuild.currentResult}: Job ${env.JOB_NAME} build ${env.BUILD_NUMBER}\n More info at: ${env.BUILD_URL}",
                recipientProviders: [developers(), requestor()],
                subject: "Jenkins Build ${currentBuild.currentResult}: Job ${env.JOB_NAME}"
            
        }
    }

	
}

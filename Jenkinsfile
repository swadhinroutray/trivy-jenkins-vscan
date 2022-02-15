pipeline {
	agent any

	
	environment {
		IMAGE_NAME = "swadhinroutray/trivy-scan:latest"
		DOCKER_HOST ='/usr/local/bin'
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
				sh '${TRIVY_HOST}/trivy image ${IMAGE_NAME}'
			}
		}
	}

	
}

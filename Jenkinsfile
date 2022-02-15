pipeline {
	agent any

	
	environment {
		IMAGE_NAME = "swadhinroutray/trivy-scan:latest"

		}
	
	// aquasec/trivy
	
	stages {
		stage('initialize') {
			steps {
				sh 	"export PATH=/usr/local/bin"
				sh 	"env"
				sh	"docker version" // DOCKER_CERT_PATH is automatically picked up by the Docker client
			}
		}
		stage("Scan") {
			agent {
               docker {
                    image 'aquasec/trivy'
					reuseNode true
                }
            }

			steps {
				sh 'trivy image ${IMAGE_NAME}'
			}
		}
	}

	
}

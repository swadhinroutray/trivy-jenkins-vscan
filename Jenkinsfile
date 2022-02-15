pipeline {
	agent any

	
	environment {
		IMAGE_NAME = "swadhinroutray/trivy-scan:latest"
		}
	
	// aquasec/trivy
	stages {
    stage('checkDocker') {
      steps {
        sh "docker version" // DOCKER_CERT_PATH is automatically picked up by the Docker client
      }
    }
  }
	stages {
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

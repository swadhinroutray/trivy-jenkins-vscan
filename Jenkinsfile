pipeline {
	agent any

	
	environment {
		IMAGE_NAME = "swadhinroutray/trivy-scan:latest"
		}
	
	// aquasec/trivy
	stages {
		stage("Scan") {
			agent {
                docker {
                    image 'aquasec/trivy'
                }
            }

			steps {
				sh 'trivy image ${IMAGE_NAME}'
			}
		}
	}

	
}

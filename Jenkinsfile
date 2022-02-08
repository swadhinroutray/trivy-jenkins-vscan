pipeline {
	agent any

	parameters{
		environment{
			IMAGE_NAME = "trivy-scan:1"
		}
	}
	stages {
		stage("Build") {
			
			steps {
				sh 'cd src/main/docker && docker build docker build -t trivy-scan:1 . '
			}
		}
		stage("Scan") {
			
			steps {
				sh 'trivy image ${IMAGE_NAME}'
			}
		}
	}

	
}

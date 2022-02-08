pipeline {
	agent{
		docker{
			image "maven:latest"
			label "docker" 
		}
	}

	stages {
		stage("Install") {
			
			steps {
				sh './scripts/install.sh'
			}
		}
		stage("Scan") {
			
			steps {
				sh './scripts/scan.sh'
			}
		}
		stage("Run") {
			
			steps {
				sh './scripts/install.sh'
			}
		}
	}

	
}

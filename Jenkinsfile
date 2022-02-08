pipeline {
	agent { docker { image 'maven:3.3.3' } }

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

pipeline {
	agent {
		label 'linux'
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

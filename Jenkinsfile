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
				sh 'mvn clean install'
				sh 'cp -r target/docker-java-sample-webapp-1.0-SNAPSHOT.war src/main/docker/' 
				sh 'cd src/main/docker'
				sh "docker build -t trivy-scan:1 . "
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

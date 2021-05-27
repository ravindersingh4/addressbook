pipeline {
    agent any
    stages {
        stage('Compile') {
            steps { 
                sh 'mvn compile'
            }
        }
        stage('test') {
            steps { 
                sh 'mvn test'
            }
        }
        stage('package') {
            steps { 
                sh 'mvn package'
            }
        }
	stage('dockerbuild'){
		steps {
			sh 'cp /var/lib/jenkins/workspace/raviPipeline/addressbook_main/target/addressbook.war .'
			sh 'echo "FROM bitnami/tomcat" > dockerfile'
			sh 'echo "COPY addressbook.war /opt/bitnami/tomcat/webapps_default/addressbook.war" >> dockerfile'
			sh 'sudo docker build -t ravidockerimage:1 -f dockerfile .'
			}
		}
    }
}

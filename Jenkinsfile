pipeline {
    environment{
        imageName =""
    }
    agent any
    stages {
        stage('Git pull') {
            steps {
                git 'https://github.com/coder1356/CalculatorRepo.git'
            }
        }
        stage('Maven Build') {
            steps {
                script{
                    sh 'mvn clean install'
                }
            }
        }
        stage('Docker Build to Image') {
            steps {
                script{
                    imageName=docker.build "anish8505/calcdocker"
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script{
                    docker.withRegistry('','docker-jenkins'){
                        imageName.push()
                    }
                }
            }
        }
    }
}

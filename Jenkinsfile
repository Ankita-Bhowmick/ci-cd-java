pipeline {
    agent any

    stages {

        stage('pull code') {
            steps {
                git branch: 'main', url: 'https://github.com/Ankita-Bhowmick/ci-cd-java.git'
                sh 'mvn clean install'
            }
        }

        stage('build docker image') {
            steps {
                script {
                    echo "building docker image"
                    image = docker.build("ci-cd-java:${env.BUILD_NUMBER}")
                }
            }
        }

        stage('Test') {
            steps {
                echo "no test available"
            }
        }
    }

    post {
        always {
            echo "Pipeline completed with status: ${currentBuild.currentResult}"
        }
    }
}

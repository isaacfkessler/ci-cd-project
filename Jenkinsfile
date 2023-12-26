pipeline {
    agent any
    environment {
        DOCKER_HUB = 'isaacfkessler/devops-app'
        APP_VERSION = 'v1'
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')

    }
    stages {
        stage('Build Image') {
            steps {
                sh "docker build -t ${DOCKER_HUB}:${APP_VERSION}.${BUILD_NUMBER} ."
            }
        }

        stage('Docker Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }

        stage('Push Container') {
            steps {
                sh "docker push ${DOCKER_HUB}:${APP_VERSION}.${BUILD_NUMBER}"
                sh "docker pull ${DOCKER_HUB}:${APP_VERSION}.${BUILD_NUMBER}"
                sh "sed -i 's|${DOCKER_HUB}*|${DOCKER_HUB}:${APP_VERSION}|' app-deployment.yaml"
            }
        }

        stage('Deploy to K8S Production') {
            steps {
                sh "kubectl apply -f app-deployment.yaml"
            }
        }
    }
}

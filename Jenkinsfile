pipeline {
  agent any
  environment {
    registry = "centos"
    dockerImage = ''
  }
  stages {
    stage('Build') {
      steps {
        echo 'Building...'
        script {
          dockerImage = docker.build registry + ":7"
        }
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying...'
        script {
          docker.withRegistry('localhost') { 
            dockerImage.push()
          }
        }
      }
    }
  }
}

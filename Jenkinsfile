pipeline {
  agent any
  environment {
    registry = "localhost:5000/centos"
  }
  stages {
    stage('Build') {
      steps {
        echo 'Building...'
        script {
          docker Image = docker.build registry + ":7"
        }
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying...'
        script {
          dockerImage.push()
        }
      }
    }
  }
}

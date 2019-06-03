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
          docker.build registry + ":7"
        }
      }
    }
    stage('Test') {
      steps {
        echo 'Testing...'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying...'
      }
    }
  }
}

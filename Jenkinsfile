pipeline {
  agent any
  environment {
    registry = "localhost:5000"
  }
  stages {
    stage('Build') {
      steps {
        echo 'Building...'
        docker build registry + ":7"
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

pipeline {
  agent { dockerfile true }
  stages {
    stage('Build') {
      steps {
        echo 'Building...'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing...'
        sh 'cat /etc/os-release'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying...'
        sh 'docker tag centos:7 localhost:5000/centos:7'
      }
    }
  }
}

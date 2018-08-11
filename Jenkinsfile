pipeline {
  agent any
  stages {
    stage('SCM') {
      steps {
        git(url: 'https://github.com/tetradev01/customers.git', branch: 'master')
      }
    }
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }
    stage('Tests') {
      parallel {
        stage('Tests') {
          steps {
            sh 'npm install mocha -g'
          }
        }
        stage('Mocha Test') {
          steps {
            sh 'node app.js'
            sh 'npm test'
          }
        }
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying Application'
      }
    }
  }
}
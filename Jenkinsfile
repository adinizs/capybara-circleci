pipeline {
    agent any
    
    stages{
        stage('Build') {
            steps {
                echo 'Building or resolve dependencies!'
                sh 'bundle install'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests'
                sh 'bundle exec cucumber -p ci'
            }
        }
        stage('UAT') {
            steps{
                echo 'Wait for User Acceptence'
                input(message: 'Go to production?', ok: 'Yes')
            }
        }
        stage('Prod') {
            steps {
                echo 'WebApp is Ready!'
            }
        }
    }
}
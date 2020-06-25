pipeline {
    agent {
        docker {
            image 'adiniz/rubywd'
        }
    }
    
    stages{
        stage('Build') {
            steps {
                echo 'Building or resolve dependencies!'
                sh 'rm -f Gemfile.lock'
                sh 'gem install bundler'
                sh 'bundle install'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests'
                sh 'bundle exec cucumber -p ci'
                cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'logs', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
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
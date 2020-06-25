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
            }
            post {
                always {
                    cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'logs', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
                }
            }
        }
        stage('Message') {
            steps {
                echo 'Test run finished!'
            }
        }
    }
}
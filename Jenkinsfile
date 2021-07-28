pipeline {
    agent any
    environment {
        DATABASE_URI = credentials("DATABASE_URI")
        SECRET_KEY = credentials("SECRET_KEY")
         rebuild_db = 'true'
    }
    stages {
        stage('Install Dependencies') {
            steps {
                // install script                
                sh 'bash jenkins/install.sh'
            }
        }
        stage('Testing') {
            steps {
                // test script            
                sh 'bash jenkins/test.sh'
            }
        }
        stage('Deployment') {
            steps {
               sh 'bash jenkins/deploy.sh'
            }
        }
    }
    // post {
    //     always {
    //         cobertura coberturaReportFile: 'coverage.xml', failNoReports: false 'junit/test-results.xml'
    //     }
    // }
}
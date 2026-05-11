pipeline {
    agent any
    stages {
        stage('Secret Scan') {
            steps {
                sh 'gitleaks detect --source . --verbose --no-git'
            }
        }
        stage('IaC Scan') {
            steps {
                sh 'checkov -f Dockerfile --soft-fail'
                sh 'checkov -f docker-compose.yml --soft-fail'
            }
        }
        stage('Image Build') {
            steps {
                sh 'docker build -t devsecops-lab .'
            }
        }
        stage('Image Scan') {
            steps {
                sh 'trivy image --severity HIGH,CRITICAL devsecops-lab'
            }
        }
    }
}

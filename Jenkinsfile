pipeline {
    agent any

    stages{

        stage('Terraform init'){
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform plan'){
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terrafrom validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
    post {
        always {
            cleanWs() // Clean up the workspace
        }

        success {
            echo 'Pipeline succeeded!'
        }

        failure {
            echo 'Pipeline failed! Destroying Terraform resources...'
            script {
                // Destroy Terraform resources
                sh 'terraform destroy -auto-approve'
            }
        }

        cleanup {
            echo 'Cleanup stage: always executed'
        }
    }

}
pipeline{
    agent any
    stages{
        stage('Git Checkout'){
            steps{
                retry(3){
                    git branch: "development",
                    url: "https://github.com/hemant14j83/test-nodeapp-1-task.git"
                }
            }
        }
        stage('Build and Push Docker Image'){
            steps{
                script{
                    sh 'docker build -t course-project-ecr .'
                    sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 947804212129.dkr.ecr.us-east-1.amazonaws.com'
                    sh 'docker tag course-project-ecr:latest 947804212129.dkr.ecr.us-east-1.amazonaws.com/course-project-ecr:latest'
                    sh 'docker push 947804212129.dkr.ecr.us-east-1.amazonaws.com/course-project-ecr:latest'
                }
            }
        }
    }
}

pipeline{
    agent any
        stages{
            stage("Git Checkout"){
                steps{
                    git branch: 'not-merged/main', url: 'https://github.com/Maninder1220/CICD.git'
                }
                
            }
            stage("Hello"){
                steps{
                    echo "Level Hello!"
                }
            }
        }
}
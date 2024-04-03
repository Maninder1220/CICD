// this is basic test groovy file can have axis through SCM 

pipeline{
    agent any
        stages{
            stage("Lets Checkout"){
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
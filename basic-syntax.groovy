// this is basic test groovy file
pipeline{
    agent any
        stages{
            stage("Hie"){
                steps{
                    echo "Level Hie!"    
                }
                
            }
            stage("Hello"){
                steps{
                    echo "Level Hello!"
                }
            }
        }
}

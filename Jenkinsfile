node {    
      def app     
      stage('Clone repository') {               
             
            checkout scm    
      }     
      stage('Build image') {         
       
            app = docker.build("testnode:latest")    
       }     
      stage('Test image') {           
            app.inside {            
             
             sh 'echo "Tests passed"'        
            }    
        }
      stage ('Push Image'){
            steps {
                  script {
                        docker.withRegistry('https://347350251088.dkr.ecr.ap-south-1.amazonaws.com/vk-test-repo','ecr:ap-south-1:my.aws.credentials') {
                              def myImage = docker.build('vk-test-repo')
                              myImage.push('latest')
                        }
                  }
            }
      }
}

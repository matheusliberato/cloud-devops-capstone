node {
    def app

    stage('Clone repository') {
        checkout scm
    }

    stage('Test HTML'){
       sh 'tidy -q -e *.html'
    }

    stage('Build image') {
        app = docker.build("961160187669.dkr.ecr.us-west-2.amazonaws.com/website-capstone")
    }

    stage('Push image') {
        docker.withRegistry('https://961160187669.dkr.ecr.us-west-2.amazonaws.com', 'ecr:us-west-2:aws-jenkins') {
            app.push("latest")
        }
    }
}


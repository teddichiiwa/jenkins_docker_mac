# Run Jenkins
mkdir -p ./jenkins/jenkins_home
chown -R 1000:1000 ./jenkins/jenkins_home
docker run -p 8080:8080 -p 50000:50000 -v ./jenkins/jenkins_home:/var/jenkins_home -d --name jenkins jenkins/jenkins:lts

# show endpoint
echo 'Jenkins installed'
echo 'You should now be able to access jenkins at: http://'$(curl -s ifconfig.co)':8080'
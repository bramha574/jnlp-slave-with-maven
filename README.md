Jenkins JNLP Agent -Maven Docker File
(https://hub.docker.com/r/bramha574/jnlp-slave-maven/)

To build an image:

Dockerfile should be in the same folder as you run the command or else you can give the path.

$docker bulild -t "image_name_goes_here" .

or 

docker build -t "image_name_goes_here" \home\user\alldockerfiles\jnlp_maven\
(if file is in (\home\user\alldockerfiles\jnlp_maven folder.))

(you have to be in same folder of the Dockerfile to execute this command)

This is an image for Jenkins agent using JNLP (from jenkins/jnlp) to establish connection and maven installed (It also includes g++, gcc).
This agent is powered by the Jenkins Remoting library, which version is being taken from the base Docker Agent image.

Download apache-maven-3.5.0-bin.tar.gz (Download Link: http://mirrors.advancedhosters.com/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz) and keep it in the same folder as Dockerfile.

To run a Docker container

docker run bramha574/jnlp-slave-with-maven -url http://jenkins-server:port <secret> <agent name>
(eg: docker run bramha574/jnlp-slave-with-maven -url http://ec2-XX-XX-XXX-XXX.compute-1.amazonaws.com:80 2ndn3n22nddefna3k32123dand32wq2wqenn221 slave_name)

Verify:
To check whether mvn is in there or not:
Open other prompt and follow these steps.

docker exec -it <containerid> \bin\bash
$mvn --version

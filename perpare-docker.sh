#   Scripts for Intall Docker and Docker swarm
#   Platform Tested:
#       Ubuntu 18.04

case "$OSTYPE" in
  solaris*) echo "SOLARIS" ;;
  darwin*)  echo "OSX" ;;
  linux*)
    sudo apt install apt-transport-https ca-certificates curl software-properties-common;
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic test";
    sudo apt update;
    sudo apt install docker-ce;;
  bsd*)     echo "BSD" ;;
  msys*)    echo "WINDOWS" ;;
  *)        echo "unknown: $OSTYPE" ;;
esac

# init swarm
sudo docker swarm init;

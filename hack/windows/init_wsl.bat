wsl sudo apt-get update; sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y;
wsl curl -fsSL https://download.docker.com/linux/debian/gpg -o /tmp/key; sudo apt-key add /tmp/key; sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable";
wsl sudo apt-get update; sudo apt-get install docker-ce docker-ce-cli containerd.io -y

wsl sudo apt-get install python3 python3-pip -y; sudo pip3 install dazel
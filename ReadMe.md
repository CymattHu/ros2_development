# How to build ros docker image
This guide will help you build the docker image for ros2
## Prerequisites
 - Make sure you OS is Ubuntu
 - docker is installed, if not please follow how to install Docker to your OS

## Build Docker image
change working directory to the dockerfile, and run following command
```bash
docker build -t ros2-nav2:humble .
```



# How to install Docker to yous OS
This guide will walk you through the installation of Docker on a Linux system (Ubuntu).

## Prerequisites
 - A supported Linux distribution (e.g., Ubuntu, Debian, CentOS, Fedora)

 - A 64-bit system

## Installation Steps
1. Update Package Index
First, open the terminal and update your package index:
```bash
sudo apt-get update
```
2. Install Required Dependencies
Docker requires some dependencies to be installed. Use the following command to install them:

```bash
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
```
3. Add Docker's Official GPG Key
Next, you need to add Docker's official GPG key to your system:

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```
4. Set up the Docker Repository
Now, add the Docker repository to your system:

```bash
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
5. Update Package Index and Install Docker
After adding the Docker repository, update your package index again and install Docker:

```bash
sudo apt-get update
sudo apt-get install docker-ce
```
6. Start Docker Service
Once Docker is installed, start the Docker service:

```bash
sudo systemctl start docker
```
7. Verify Docker Installation
To verify that Docker was installed successfully, run:

```bash
sudo docker --version
```
You should see the Docker version displayed.

8. (Optional) Configure Docker User Permissions
If you don’t want to use sudo every time you run a Docker command, you can add your user to the Docker group:

```bash
sudo usermod -aG docker $USER
```
Then log out and log back in for the changes to take effect.
### streamrip webUI


## Getting Started

Development workflow for streamrip WebUI

### Prerequisites
* [Linux](https://fedoraproject.org/workstation/)
* [WSL2](https://learn.microsoft.com/en-us/windows/wsl/install)
* Docker
  ```sh
  sudo apt install docker docker-compose
  ```


### Installation
1. Clone the repo
   ```sh
   git clone https://github.com/MeapVR/StreamripWeb.git
   ```
2. Switch branch to dev
   ```sh
   git switch dev
   ```
3. build the images
   ```sh
   docker-compose build
   ```
4. start the containers
   ```sh
   docker-compose up -d
   ```

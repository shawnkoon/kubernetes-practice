# kubernetes-practice
Kubernetes Operations (kops) practice on linux env using Vagrant and Docker for Amazon Web Services (AWS) deployment.


- Kubernetes Operations (kops) - https://github.com/kubernetes/kops

- Vagrant - https://www.vagrantup.com/

- Docker - https://www.docker.com/

- Docker(how) - https://shawnkoon.github.io/subPages/DockerInfoPage/index.html


**How to use this repo**
  - [Docker](#docker)
  - [Vagrant](#vagrant)

# Docker
## How to run
1. Build docker image && run container.
```
  $ docker build -t shawnkoon/kops:1.00 .
  ...

  $ docker run --name shawnkoon-kops-container -it shawnkoon/kops:1.00 /bin/bash
  ...

  shawnkoon@<hash>:~/kub$ ls
  ...
```

2. Start using kops
```
  shawnkoon@<hash>:/kub$ kops --help
```

## Clean up
1. Exit out of Docker container.
```
  shawnkoon@<hash>:/kub$ exit
```

2. Remove container.
```
  $ docker rm shawnkoon-kops-container
```

3. Remove Image.
```
  $ docker rmi shawnkoon/kops:1.00
```

# Vagrant
## How to run
1. Run vagrant.
```
  $ vagrant up
  ...

  $ vagrant ssh
  ...
  ubuntu@ubuntu-xenial:~$ 
```

2. Browse into Vagrant shared folder.
```
  ubuntu@ubuntu-xenial:~$ cd /vagrant

  ubuntu@ubuntu-xenial:/vagrant$ ll
  ...
```

3. Start using kops
```
  ubuntu@ubuntu-xenial:/vagrant$ kops --help
```

## Clean up
1. Exit out of Vagrant box.
```
  ubuntu@ubuntu-xenial:/vagrant$ exit
```

2. Stop and terminate
```
  $ vagrant halt
  ...

  $ vagrant destroy
  ...
```


## Others

  - How to pause and resume vagrant box.
  ```
    $ vagrant suspend
    ...

    $ vagrant resume
    ...
  ```

  - How to stop and resume vagrant box with new settings.
  ```
    $ vagrant halt
    ...

    $ vagrant reload
    ...
  ```

# kubernetes-practice
Kubernetes practice on linux env using Vagrant and kops.

Kubernetes Operations (kops) - https://github.com/kubernetes/kops
Vagrant - https://www.vagrantup.com/


# How to run.
1. Run vagrant.
```
  $ vagrant up
  ...

  $ vagrant ssh
  ...
  ubuntu@ubuntu-xenial:~$ 
```


# Clean up
1. Stop and terminate
```
  $ vagrant halt
  ...

  $ vagrant destroy
  ...
```


# Others

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

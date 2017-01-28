## Test your Vagrant/Ansible project

### Install:
Make sure you have Vagrant with virtualbox and a local running ansible (sorry windows users)

run: 
```
sudo gem install bundler
bundle install
```

### running tests
```
kitchen test
```

The current setup has:
* failing user test
* succeeding user test
* succeeding block device test
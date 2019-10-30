## ubuntu-18.04-jenkins
Vagrant Box with Ubuntu 18.04 & Jenkins

### Base image
Used base image [elegoev/ubuntu-18.04](https://app.vagrantup.com/elegoev/boxes/ubuntu-18.04)

### Automatic provisioning
The base image is provisioned with bash script [ubuntu-18.04-jenkins.sh](https://github.com/elegoev/basebox-ubuntu-18.04-jenkins/blob/master/provisioning/ubuntu-18.04-jenkins.sh)

### References
- [Used Vagrantfile for Basebox](https://github.com/elegoev/vagrant-ubuntu-18.04/blob/master/jenkins/vagrant/esxi/_Vagrantfile)

### Host Access
| Application          | URL                            |
|----------------------|--------------------------------|
| Jenkins              | http://localhost:18080         |

###  Create Vagrant Box Environment
#### Provider "virtualbox"
1. Create directory `mkdir "name of directory"`
1. Goto directory `cd "name of directory"`
1. Create Vagrantfile `vagrant init "elegoev/ubuntu-18.04-jenkins"`
1. Start vagrant box `vagrant up`

#### Provider "vmware_esxi"
1. Create directory `mkdir "name of directory"`
1. Goto directory `cd "name of directory"`
1. Download basebox `vagrant box add "elegoev/ubuntu-18.04-jenkins" --provider vmware_esxi`
1. Create [Vagrantfile](https://github.com/elegoev/vagrant-ubuntu-18.04-images/blob/master/jenkins/vagrant/Vagrantfile.tpl)
1. Create file [`metadata.json`](https://github.com/elegoev/vagrant-ubuntu-18.04-images/blob/master/jenkins/vagrant/metadata.json.tpl)
1. Copy and edit [`box.json`](https://github.com/elegoev/vagrant-ubuntu-18.04-images/blob/master/jenkins/vagrant/box.json)
1. Start vagrant box `vagrant up --provider vmware_esxi`

### Versioning
Repository follows sematic versioning  [![](https://img.shields.io/badge/semver-2.0.0-green.svg)](http://semver.org)

### Changelog
For all notable changes see [CHANGELOG](https://github.com/elegoev/basebox-ubuntu-18.04-jenkins/blob/master/CHANGELOG.md)

### License
Licensed under The MIT License (MIT) - for the full copyright and license information, please view the [LICENSE](https://github.com/elegoev/basebox-ubuntu-18.04-jenkins/blob/master/LICENSE) file.

### Issue Reporting
Any and all feedback is welcome.  Please let me know of any issues you may find in the bug tracker on github. You can find it [here. ](https://github.com/elegoev/basebox-ubuntu-18.04-jenkins/issues)

[![Build Status - Master](https://travis-ci.org/juju4/ansible-win-aptsimulator.svg?branch=master)](https://travis-ci.org/juju4/ansible-win-aptsimulator)
[![Build Status - Devel](https://travis-ci.org/juju4/ansible-win-aptsimulator.svg?branch=devel)](https://travis-ci.org/juju4/ansible-win-aptsimulator/branches)(Syntax Only)

[![Appveyor - Master](https://ci.appveyor.com/api/projects/status/fefrr0ib22qcsaes?svg=true)](https://ci.appveyor.com/project/juju4/ansible-win-aptsimulator)
![Appveyor - Devel](https://ci.appveyor.com/api/projects/status/fefrr0ib22qcsaes/branch/devel?svg=true)

# Windows APTSimulator ansible role

Ansible role to execute NextronSystems APTSimulator on targeted Windows system.

https://github.com/NextronSystems/APTSimulator

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.3
 * 2.4
 * 2.5b2

### Operating systems

Tested in Appveyor

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.win-aptsimulator
```

Run
```
$ ansible -i inventory -m win_ping win --ask-pass
$ ansible-playbook -i inventory --limit win site.yml
```

## Variables

See defaults/main.yml for full scope

## Continuous integration

This role has a travis basic test (for github, syntax check only), Appveyor test and a Vagrantfile (test/vagrant).

```
$ cd /path/to/roles/juju4.win-aptsimulator/test/vagrant
$ vagrant up
$ vagrant provision
$ vagrant destroy
$ ansible -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory -m win_ping -e ansible_winrm_server_cert_validation=ignore -e ansible_ssh_port=55986 all
```

## Troubleshooting & Known issues

## FAQ

## License

BSD 2-clause


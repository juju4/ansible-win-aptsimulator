[![Appveyor - master](https://ci.appveyor.com/api/projects/status/fefrr0ib22qcsaes/branch/master?svg=true)](https://ci.appveyor.com/project/juju4/ansible-win-aptsimulator/branch/master)
[![Appveyor - devel](https://ci.appveyor.com/api/projects/status/fefrr0ib22qcsaes/branch/devel?svg=true)](https://ci.appveyor.com/project/juju4/ansible-win-aptsimulator/branch/devel)

# Windows APTSimulator ansible role

Ansible role to execute NextronSystems APTSimulator on targeted Windows system.

https://github.com/NextronSystems/APTSimulator

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.3
 * 2.4
 * 2.5
 * 4.10.0
 * 5.3.0

### Operating systems

Tested in Appveyor

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.win_aptsimulator
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
$ cd /path/to/roles/juju4.win_aptsimulator/test/vagrant
$ vagrant up
$ vagrant provision
$ vagrant destroy
$ ansible -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory -m win_ping -e ansible_winrm_server_cert_validation=ignore -e ansible_ssh_port=55986 all
```

## Troubleshooting & Known issues

## FAQ

## License

BSD 2-clause

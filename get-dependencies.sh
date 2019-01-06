#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

rolesdir=$(dirname $0)/..
[ $APPVEYOR ] && rolesdir=/etc/ansible/roles

[ ! -d $rolesdir/juju4.win_firewall ] && git clone https://github.com/juju4/ansible-win-firewall $rolesdir/juju4.win_firewall
[ ! -d $rolesdir/juju4.win_eventlog ] && git clone https://github.com/juju4/ansible-win-eventlog $rolesdir/juju4.win_eventlog
[ ! -d $rolesdir/juju4.win_audit ] && git clone https://github.com/juju4/ansible-win-audit $rolesdir/juju4.win_audit
[ ! -d $rolesdir/juju4.win_powershell ] && git clone https://github.com/juju4/ansible-win-powershell $rolesdir/juju4.win_powershell
[ ! -d $rolesdir/juju4.win_sysmon ] && git clone https://github.com/juju4/ansible-win-sysmon $rolesdir/juju4.win_sysmon
[ ! -d $rolesdir/juju4.win_applocker ] && git clone https://github.com/juju4/ansible-win-applocker $rolesdir/juju4.win_applocker
[ ! -d $rolesdir/juju4.win_osquery ] && git clone https://github.com/juju4/ansible-win-osquery $rolesdir/juju4.win_osquery

## don't stop build on this script return code
true

# Important:
This script will not work as provided in the below example.
This section is incomplete.

1.
Example of how you would create a virtual machine from the CLI
```shell
sudo virt-install --name Fedora38 \ ##name the machine
--description 'Fedora 38 Workstation' \ ##give it a description
--ram 4096 \ ##Allocate ram in MB
--vcpus 2 \ ##number of cpu cores to give the box
--disk path=/var/lib/libvirt/images/Fedora-Workstation-38/Fedora-Workstation-38-20180518.0.x86_64.qcow2,size=20 \ ##Actually Important. See below.
--os-type linux \ ##Linux
--os-variant fedora38 \ ##Fedora Version Number
--network bridge=virbr0 \ ## Virtual adapter. See below about Firewalld.
--graphics vnc,listen=127.0.0.1,port=5901 \ ## Only thing you might need to change is the port number.
--cdrom /var/lib/libvirt/images/Fedora-Workstation-38/Fedora-Workstation-Live-x86-64-38-1.1.iso \ ## Also Important. see below.
--noautoconsole
```

# see below options.

### --disk path /var/lib/libvirt/images/YourFileHere.qcow2

	generally this will be your virtual hard disk if you're coming from VMWare, Vbox, etc

	Specifies  media to use as storage for the guest, with various options. The file extension type is generall .qcow2
### --cdrom                      /var/lib/libvirt/images/YourDirectoryHere/YourFileHere.ISO

	generally this will be your ISO file containing the OS you intend to install.

[[Create a Virtual Machine]]
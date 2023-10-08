1.Install Virtualization Tools with DNF

```shell
sudo dnf update

sudo dnf install @virtualization
or
sudo dnf groupinstall --with-optional virtualization
```

2.Enable Libvrtd services on your device
```shell
sudo systemctl enable libvrtd
sudo systemctl restart libvrtd
```

```shell
sudo virt-install --name Fedora38 \
--description 'Fedora 38 Workstation' \
--ram 4096 \
--vcpus 2 \
--disk path=/var/lib/libvirt/images/Fedora-Workstation-38/Fedora-Workstation-38-20180518.0.x86_64.qcow2,size=20 \
--os-type linux \
--os-variant fedora38 \
--network bridge=virbr0 \
--graphics vnc,listen=127.0.0.1,port=5901 \
--cdrom /var/lib/libvirt/images/Fedora-Workstation-38/Fedora-Workstation-Live-x86-64-38-1.1.iso \
--noautoconsole
```


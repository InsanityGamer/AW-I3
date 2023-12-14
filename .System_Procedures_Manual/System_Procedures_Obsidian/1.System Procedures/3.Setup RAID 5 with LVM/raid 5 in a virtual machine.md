
This Guide assumes you've already done [[Create a Virtual Machine using a GUI]] and [[Install Qemu-KVM]]

If you're using another hypervisor similar procedures apply.

First lets organize

```
mkdir -P ~/opt/Virtual-Machines/RAID5-DEMO/RAID5-USBDrives
```

You will store your virtual machine's virtual hard disk (.qcow2, VHD, VMDK, VDI, etc) in the ./RAID5-DEMO Directory

You will also store 6 4GB  virtual disks into RAID5-USBDrives. We will use these
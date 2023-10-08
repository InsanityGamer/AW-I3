
https://docs.fedoraproject.org/en-US/quick-docs/virtualization-an-overview/

# Reasons to Use:

"QEMU achieves near native performance" - [[qemu]] docs	

"When using KVM, QEMU can virtualize x86, server and embedded PowerPC, 64-bit POWER, S390, 32-bit and 64-bit ARM, and MIPS guests." - [[kvm]] docs

Virtualization prevents you from mucking up your base system. 

By having a virtualized environment on hand you can test changes iteratively and revert changes if necessary through the use of snapshots. 
### Snapshots are not a replacement for Backups.

You could utilize this to have a "windows box" for convenience.

"virtual guests can use the host machine as a gateway and can connect out via it. If you need to provide services on your guests that are reachable via other machines on your host network you can use iptables DNAT rules to forward in specific ports, or you can set up a bridged environment." -fedora docs
	A Note on this. Iptables was out dated by firewall-cmd. Use firewall-cmd to forward services.

[[Install Qemu-KVM]]


resource "proxmox_vm_qemu" "srv_demo_1" {
    name = var.server_name
    desc = "Debian Server"
    vmid = var.server_vmid
    target_node = "proxmox"

    agent = 1

    clone = "truenas"
    cores = var.core_numbers
    sockets = var.socket_number
    cpu = "host"
    memory = var.memory_size

    network {
        bridge = "vmbr0"
        model = "virtio"
    }

    disk {
        storage = "local-lvm"
        type = "virtio"
        size = var.disk_size
    }

    os_type = "cloud-init"
    ipconfig0 = "ip=${var.ip_config}/24,gw=${var.gw_config}"
    nameserver = "192.168.0.1"
    ciuser = "diegoher"
    sshkeys = rsa-key
}

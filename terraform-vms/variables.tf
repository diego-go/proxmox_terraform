variable "server_name" {
  description = "Name of the server"
}

variable "server_vmid" {
    description = "VMID  configuration"
}

variable "ip_config" {
  description = "IP configuration for the virtual machine"
}

variable "gw_config" {
  description = "Gateway configuration for the virtual machine"
}

variable "disk_size" {
    description = "Disk size configuration"
}

variable "memory_size" {
    description = "Memory size configuration"
}

variable "core_numbers" {
    description = "Core number configuration"
}

variable "socket_number" {
    description = "Socket number configuration"
}
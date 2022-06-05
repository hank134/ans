# Provider
terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}
provider "yandex" {
  service_account_key_file = "/home/tim/key.json"
  cloud_id  = "b1ghn66scihrboe3sfhv"
  folder_id = "b1goftamkelavkhtqfcd"
  zone = "ru-central1-a"
}
# VM
resource "yandex_compute_instance" "vm-1" {
  name = "clickhouse-01"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd80le4b8gt2u33lvubr"
      type     = "network-hdd"
      size     = "20"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    ssh-keys = "centos:${file("~/.ssh/id_rsa.pub")}"
  }
}
# VM
resource "yandex_compute_instance" "vm-2" {
  name = "vector-01"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd80le4b8gt2u33lvubr"
      type     = "network-hdd"
      size     = "20"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    ssh-keys = "centos:${file("~/.ssh/id_rsa.pub")}"
  }
}
# VM
resource "yandex_compute_instance" "vm-3" {
  name = "lighthouse-01"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd80le4b8gt2u33lvubr"
      type     = "network-hdd"
      size     = "20"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    ssh-keys = "centos:${file("~/.ssh/id_rsa.pub")}"
  }
}
#Net
resource "yandex_vpc_network" "network-1" {
  name = "network1"
}
resource "yandex_vpc_subnet" "subnet-1" {
  name           = "subnet1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}


output "clickhouse-01_local" {
  value = yandex_compute_instance.vm-1.network_interface.0.ip_address
}

output "vector-01_local" {
  value = yandex_compute_instance.vm-2.network_interface.0.ip_address
}
output "lighthouse-01_local" {
  value = yandex_compute_instance.vm-2.network_interface.0.ip_address
}

output "clickhouse_ip" {
  value = yandex_compute_instance.vm-1.network_interface.0.nat_ip_address
}
output "vector_ip" {
  value = yandex_compute_instance.vm-2.network_interface.0.nat_ip_address
}
output "lighthouse_ip" {
  value = yandex_compute_instance.vm-3.network_interface.0.nat_ip_address
}
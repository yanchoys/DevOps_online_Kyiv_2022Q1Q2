## Task 5

#### Netplan Configuration CLIENT_1

```
# Let NetworkManager manage all devices on this system
network:
  version: 2
  renderer: NetworkManager
  ethernets:
    enp0s3:
      #addresses: [10.0.2.25/24]
      #gateway4: 192.168.0.1
      dhcp4: true
      routes:
      - to: 172.17.0.0/19
        via: 10.99.2.1
      #nameservers:
        #addresses: [8.8.8.8]
    enp0s8:
      addresses: [172.16.2.2/24]
      #routes:
      #- to: 172.17.22.1/24
      #  via: 172.16.2.1
```


#### DHCP-server Configuration Netplan

```
# Let NetworkManager manage all devices on this system
network:
  version: 2
  renderer: NetworkManager
  ethernets:
    enp0s3:
      addresses: [192.168.0.170/24]
      gateway4: 192.168.0.1
      dhcp4: no
      nameservers:
        addresses: 
        - 8.8.8.8
        - 8.8.4.4
    enp0s8:
      addresses: [10.99.2.1/24]
      routes:
      - to: 172.17.0.0/19
        via: 10.99.2.2
    enp0s9:
      addresses: [10.8.99.1/24]
```

#### Client_2 Netplan Configuration

```
# Let NetworkManager manage all devices on this system
network:
  version: 2
  renderer: NetworkManager
  ethernets:
    enp0s3:
      #addresses: [10.0.2.25/24]
      #gateway4: 192.168.0.1
      dhcp4: true
      routes:
      - to: 172.17.0.0/19
        via: 10.8.99.1
      #nameservers:
        #addresses: [8.8.8.8]
    enp0s8:
      addresses: [172.16.2.2/24]
      #routes:
      #- to: 172.17.22.1/24
      #  via: 172.16.2.1
```
#### DHCP Leased addresses

![lease-list](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m5/images/photo_2022-04-17_22-18-12.jpg)

#### Forbid ssh connection for client_2

![lease-list](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m5/images/photo_2022-04-17_22-14-43.jpg)

#### Ping from client_2 to lo client_1

![lease-list](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m5/images/photo_2022-04-17_22-14-46.jpg)

#### Pat for client_1/2

![lease-list](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m5/images/photo_2022-04-17_22-14-50.jpg)

`sudo iptables -A POSTROUTING -t nat -j MASQUERADE`

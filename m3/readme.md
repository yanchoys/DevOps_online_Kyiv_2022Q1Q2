# Task 3.1
### Creqting 3 separate networks: "Home Office", "Enterprise", "Data Center".

![Networks](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m3/images/3.1/task3.1(2).jpg)

# Task 3.2 
### Unite separete networks with help of Internet
Configuring router with this rule "for realization Internet, should use network D+10.M.Y.0/24 and split it /26
![ConfRouter](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m3/images/3.2/routerConf.jpg)


### Setup vlan in Data center
![Vlan](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m3/images/3.2/vlan.jpg)


### For accessing routing in vlan, need to turn on trunk mode
![Trunkmode](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m3/images/3.2/trunk.jpg)


### Also needs to configure subinterfaces on router
```
Router(config-if)# interface GigabitEthernet0/0.2
Router(config-subif)#encapsulation dot1Q 2
Router(config-subif)#ip address 4.25.99.1 255.255.255.192
Router(config-if)# interface GigabitEthernet0/0.3
Router(config-subif)#encapsulation dot1Q 3
Router(config-subif)#ip address 4.25.99.65 255.255.255.192
Router(config-if)# interface GigabitEthernet0/0.4
Router(config-subif)#encapsulation dot1Q 4
Router(config-subif)#ip address 4.25.99.129 255.255.255.192
```
![SubInt](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m3/images/3.2/subint.jpg)

# Task 3.3
### Configure routing between routers(static and RIP)
![Int](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m3/images/3.3/Internet.jpg)
![RIP](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m3/images/3.3/RIP.JPG)
![Static](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m3/images/3.3/static%20routing.JPG)
![trace](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m3/images/3.3/traceRT.JPG)

# Task 3.4
### Configuring DHCP and DNS servers
![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m3/images/3.4/3.4.JPG)
![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m3/images/3.4/DHCP%2Bdns.JPG)
![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m3/images/3.4/DHCP.JPG)
![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m3/images/3.4/HomeServ.JPG)
![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m3/images/3.4/pingServ.JPG)

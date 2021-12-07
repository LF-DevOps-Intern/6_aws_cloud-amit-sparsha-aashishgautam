8. Create EC2 inside Public Subnet (t
  - Allow SSH ingress traffic for your own IPs only.
  - Spin up simple http server @ 9099 port and verify it is accessible from public.
  - Install and Setup OpenVPN Server, open ports required to use it for these CIDR ranges 27,43,45,72,103,110,112,124,139,150,163,202.0.0.0/8 and your own IPs
  - (Optional) Create a OpenVPN Client with Split tunnel to use that Server Help1, Help2, Help3

Steps:<br/>
Create EC2 inside Public Subnet <br/>

![public instance](https://user-images.githubusercontent.com/53372486/144971031-ebeefebb-013c-45af-a89f-2119a217074a.png)<br/>

### Allow SSH ingress traffic for your own IPs only
Click on security group and add inbound <br/>

![ssh allowed for my own ip only](https://user-images.githubusercontent.com/53372486/144971034-efda2ab7-cbb4-431d-a771-1f876640c994.PNG)<br/>

Spin up simple http server @ 9099 port and verify it is accessible from public.<br/>
connect ssh

![ssh connect](https://user-images.githubusercontent.com/53372486/144970396-31529007-819f-40ac-9fae-501a0088acb6.png)<br/>
```
python3 -m http.server 9099
```

![port9099](https://user-images.githubusercontent.com/53372486/144970391-84f07b9b-10f4-4534-a2a9-eb391c9b4f6b.png)<br/>

open in webbrowser

![server](https://user-images.githubusercontent.com/53372486/144970393-ca6d0160-e811-4ac0-adf2-a9cfab90fc33.png)<br/>

### Install and Setup OpenVPN Server, open ports required to use it for these CIDR ranges 27,43,45,72,103,110,112,124,139,150,163,202.0.0.0/8 and your own IPs

Install openvpn<br/>
![openvpn](https://user-images.githubusercontent.com/53372486/144970388-5be36029-7ecc-4f10-ada6-d65a038e8781.png)<br/>

checking status after configuration <br/>

![status openvpn](https://user-images.githubusercontent.com/53372486/144970399-0fb56a07-a094-4aa4-ace4-88c3dcf3a376.png)<br/>

Now check tunnel<br/>

![tun_0_done](https://user-images.githubusercontent.com/53372486/144970402-4d18ca7c-f1b6-487d-b759-3b56cbe23f27.png)<br/>

Connect with client<br/>

![client_ovpn](https://user-images.githubusercontent.com/53372486/144970381-a7f083ed-abda-4707-9ba2-9973257b4f5f.png)<br/>

![open_vpn_connect](https://user-images.githubusercontent.com/53372486/144970387-33d2a8ca-f05d-45b0-9105-33adc7e7a05f.png)<br/>

Add CIDR ranges<br/>

![CIDR ranges for OVPN added part 1](https://user-images.githubusercontent.com/53372486/144970374-f54b8eba-72af-4b2c-b910-d7b698e08034.PNG)

![CIDR ranges for OVPN added part 2](https://user-images.githubusercontent.com/53372486/144970377-fa023ff5-c78b-4f0d-b059-2ea6734b1f5a.PNG)

![CIDR ranges for OVPN verified](https://user-images.githubusercontent.com/53372486/144970379-492d7711-b1c2-4eb4-8178-846fa782e450.PNG)











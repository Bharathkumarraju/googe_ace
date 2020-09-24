A VPC network is a global resource that consists of a list of regional virtual subnetworks (subnets) in data centers,
all connected by a global wide area network (WAN).


default network subnet range is /20

Routes:
------->

Routes tell VM instances and the VPC network how to send traffic from an instance to a destination, either inside the network or outside Google Cloud.
Each VPC network comes with some default routes to route traffic among its subnets and send traffic from eligible instances to the internet.


Notice that there is a route for each subnet and one for the Default internet gateway (0.0.0.0/0). These routes are managed for you.
but you can create custom static routes to direct some packets to specific destinations.
For example, you can create a route that sends all outbound traffic to an instance configured as a NAT gateway.


Firewall Rules:
---------------->

Each VPC network implements a distributed virtual firewall that you can configure.
Firewall rules allow you to control which packets are allowed to travel to which destinations.
Every VPC network has two implied firewall rules that block all incoming connections and allow all outgoing connections.

In the left pane, click Firewall. Notice that there are 4 Ingress firewall rules for the default network:

default-allow-icmp
default-allow-rdp
default-allow-ssh
default-allow-internal
These firewall rules allow ICMP, RDP, and SSH ingress traffic from anywhere (0.0.0.0/0)
and all TCP, UDP, and ICMP traffic within the network (10.128.0.0/9). The Targets, Filters, Protocols/ports, and Action columns explain these rules.



gcloud compute networks create managementnet --project=qwiklabs-gcp-02-cb6521dfa652 --subnet-mode=custom --bgp-routing-mode=regional

gcloud compute networks subnets create managementsubnet-us --project=qwiklabs-gcp-02-cb6521dfa652 --range=10.130.0.0/20 --network=managementnet --region=us-central1


gcloud compute networks create privatenet --subnet-mode=custom


gcloud compute networks subnets create privatesubnet-us --network=privatenet --region=us-central1 --range=172.16.0.0/24


gcloud compute networks subnets create privatesubnet-eu --network=privatenet --region=europe-west1 --range=172.20.0.0/20

gcloud compute networks list


gcloud compute networks subnets list --sort-by=NETWORK


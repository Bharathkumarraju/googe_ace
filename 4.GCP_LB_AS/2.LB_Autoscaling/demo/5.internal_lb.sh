Regional private loadbalancing

if differs traditional internal LB  see image.. internallb.png


Task 1. Configure internal traffic and health check firewall rules.

Configure firewall rules to allow internal traffic connectivity from sources in the 10.10.0.0/16 range.
This rule allows incoming traffic from any client located in the subnet.

Health checks determine which instances of a load balancer can receive new connections.
For HTTP load balancing, the health check probes to your load-balanced instances come from
addresses in the ranges 130.211.0.0/22 and 35.191.0.0/16. Your firewall rules must allow these connections.


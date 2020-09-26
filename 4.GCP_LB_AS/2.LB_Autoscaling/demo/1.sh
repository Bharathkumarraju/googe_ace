LBS:
----------------------------->

Task 1. Configure a health check firewall rule
----------------------------------------------------->
Health checks determine which instances of a load balancer can receive new connections.
For HTTP load balancing, the health check probes to your load-balanced instances come from addresses
in the ranges 130.211.0.0/22 and 35.191.0.0/16.
Your firewall rules must allow these connections.



sudo apt-get update
sudo apt-get install -y apache2

sudo service apache2 start

sudo update-rc.d apache2 enable




Stress test the HTTP load balancer
--------------------------------------->


export LB_IP=107.178.240.102
ab -n 500000 -c 1000 http://$LB_IP/



googleod519848_student@stress-test:~$ export LB_IP=107.178.240.102
googleod519848_student@stress-test:~$ ab -n 500000 -c 1000 http://$LB_IP/
This is ApacheBench, Version 2.3 <$Revision: 1843412 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 107.178.240.102 (be patient)

Completed 50000 requests
Completed 100000 requests






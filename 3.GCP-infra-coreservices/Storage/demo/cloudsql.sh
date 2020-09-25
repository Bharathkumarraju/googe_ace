Connect cloud SQL instance from different region using cloud sql proxy

If the VM is in same region as cloudSQL we connect it to via "Priavte IP"

If the VM is in different region opposed to cloudSQL we connect it to via cloud sql proxy.


wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy && chmod +x cloud_sql_proxy



student-01-63c124cfc342@wordpress-europe-proxy:~$ wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy && chmod +x cloud_sql_proxy
--2020-09-25 01:30:40--  https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64
Resolving dl.google.com (dl.google.com)... 64.233.184.93, 64.233.184.136, 64.233.184.190, ...
Connecting to dl.google.com (dl.google.com)|64.233.184.93|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 16361206 (16M) [application/octet-stream]
Saving to: ‘cloud_sql_proxy’

cloud_sql_proxy                         0%[                                                                         ]       0  --.-KB/s
cloud_sql_proxy                       100%[========================================================================>]  15.60M  --.-KB/s    in 0.1s

2020-09-25 01:30:41 (108 MB/s) - ‘cloud_sql_proxy’ saved [16361206/16361206]

student-01-63c124cfc342@wordpress-europe-proxy:~$
student-01-63c124cfc342@wordpress-europe-proxy:~$



connection_name: qwiklabs-gcp-01-79a2285dfc1a:us-central1:wordpress-db


student-01-63c124cfc342@wordpress-europe-proxy:~$ export SQL_CONNECTION=qwiklabs-gcp-01-79a2285dfc1a:us-central1:wordpress-db

student-01-63c124cfc342@wordpress-europe-proxy:~$ echo $SQL_CONNECTION
qwiklabs-gcp-01-79a2285dfc1a:us-central1:wordpress-db
student-01-63c124cfc342@wordpress-europe-proxy:~$


student-01-63c124cfc342@wordpress-europe-proxy:~$ echo $SQL_CONNECTION
qwiklabs-gcp-01-79a2285dfc1a:us-central1:wordpress-db
student-01-63c124cfc342@wordpress-europe-proxy:~$ ./cloud_sql_proxy -instances=$SQL_CONNECTION=tcp:3306 &
[1] 14277
student-01-63c124cfc342@wordpress-europe-proxy:~$ 2020/09/25 01:41:12 Rlimits for file descriptors set to {&{8500 1048576}}
2020/09/25 01:41:15 Listening on 127.0.0.1:3306 for qwiklabs-gcp-01-79a2285dfc1a:us-central1:wordpress-db
2020/09/25 01:41:15 Ready for new connections


The proxy will listen on 127.0.0.1:3306 (localhost) and proxy that
connects securely to your Cloud SQL over a secure tunnel using the machine's external IP address.




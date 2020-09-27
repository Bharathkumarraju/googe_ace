cat << EOF > startup.sh
#! /bin/bash
apt-get update
apt-get install -y nginx
service nginx start
sed -i -- 's/nginx/Google Cloud Platform - '"\$HOSTNAME"'/' /var/www/html/index.nginx-debian.html
EOF


student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute instance-templates create nginx-template \
>          --metadata-from-file startup-script=startup.sh
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-6b98794000f0/global/instanceTemplates/nginx-template].
NAME            MACHINE_TYPE   PREEMPTIBLE  CREATION_TIMESTAMP
nginx-template  n1-standard-1               2020-09-26T19:13:06.571-07:00
student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$


student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute target-pools create nginx-pool
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-6b98794000f0/regions/us-central1/targetPools/nginx-pool].
NAME        REGION       SESSION_AFFINITY  BACKUP  HEALTH_CHECKS
nginx-pool  us-central1  NONE
student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute instance-groups managed create nginx-group \
>          --base-instance-name nginx \
>          --size 2 \
>          --template nginx-template \
>          --target-pool nginx-pool
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-6b98794000f0/zones/us-central1-a/instanceGroupManagers/nginx-group].
NAME         LOCATION       SCOPE  BASE_INSTANCE_NAME  SIZE  TARGET_SIZE  INSTANCE_TEMPLATE  AUTOSCALED
nginx-group  us-central1-a  zone   nginx               0     2            nginx-template     no
student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$


student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute instances list
NAME        ZONE           MACHINE_TYPE   PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP    STATUS
nginx-2v05  us-central1-a  n1-standard-1               10.128.0.3   34.70.198.163  RUNNING
nginx-3t06  us-central1-a  n1-standard-1               10.128.0.2   35.193.212.35  RUNNING
student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute firewall-rules create www-firewall --allow tcp:80
Creating firewall...⠹Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-6b98794000f0/global/firewalls/www-firewall].
Creating firewall...done.
NAME          NETWORK  DIRECTION  PRIORITY  ALLOW   DENY  DISABLED
www-firewall  default  INGRESS    1000      tcp:80        False
student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute forwarding-rules create nginx-lb \
>          --region us-central1 \
>          --ports=80 \
>          --target-pool nginx-pool
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-6b98794000f0/regions/us-central1/forwardingRules/nginx-lb].
student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute forwarding-rules list
NAME      REGION       IP_ADDRESS      IP_PROTOCOL  TARGET
nginx-lb  us-central1  35.232.231.107  TCP          us-central1/targetPools/nginx-pool
student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$


curl http://35.232.231.107/


bharathkumarraju@R77-NB193 ~ % curl http://35.232.231.107/
<!DOCTYPE html>
<html>
<head>
<title>Welcome to Google Cloud Platform - nginx-2v05!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to Google Cloud Platform - nginx-2v05!</h1>
<p>If you see this page, the Google Cloud Platform - nginx-2v05 web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://Google Cloud Platform - nginx-2v05.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://Google Cloud Platform - nginx-2v05.com/">nginx.com</a>.</p>

<p><em>Thank you for using Google Cloud Platform - nginx-2v05.</em></p>
</body>
</html>
bharathkumarraju@R77-NB193 ~ %






student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute http-health-checks create http-basic-check
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-6b98794000f0/global/httpHealthChecks/http-basic-check].
NAME              HOST  PORT  REQUEST_PATH
http-basic-check        80    /


student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute instance-groups managed \
>        set-named-ports nginx-group \
>        --named-ports http:80
Updated [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-6b98794000f0/zones/us-central1-a/instanceGroups/nginx-group].


student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute backend-services create nginx-backend \
>       --protocol HTTP --http-health-checks http-basic-check --global
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-6b98794000f0/global/backendServices/nginx-backend].
NAME           BACKENDS  PROTOCOL
nginx-backend            HTTP


student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute backend-services add-backend nginx-backend \
>     --instance-group nginx-group \
>     --instance-group-zone us-central1-a \
>     --global
Updated [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-6b98794000f0/global/backendServices/nginx-backend].


student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute url-maps create web-map \
>     --default-service nginx-backend
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-6b98794000f0/global/urlMaps/web-map].
NAME     DEFAULT_SERVICE
web-map  backendServices/nginx-backend

student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute target-http-proxies create http-lb-proxy \
>     --url-map web-map
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-6b98794000f0/global/targetHttpProxies/http-lb-proxy].
NAME           URL_MAP
http-lb-proxy  web-map

student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute forwarding-rules create http-content-rule \
>         --global \
>         --target-http-proxy http-lb-proxy \
>         --ports 80
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-6b98794000f0/global/forwardingRules/http-content-rule].

student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$ gcloud compute forwarding-rules list
NAME               REGION       IP_ADDRESS      IP_PROTOCOL  TARGET
http-content-rule               34.107.210.164  TCP          http-lb-proxy
nginx-lb           us-central1  35.232.231.107  TCP          us-central1/targetPools/nginx-pool
student_04_00e1427560d0@cloudshell:~ (qwiklabs-gcp-04-6b98794000f0)$



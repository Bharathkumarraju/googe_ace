student_02_d6cf7c88fa18@cloudshell:~ (qwiklabs-gcp-02-3bfec467d3b7)$ export PROJECT_ID=$(gcloud info --format='value(config.project)')
student_02_d6cf7c88fa18@cloudshell:~ (qwiklabs-gcp-02-3bfec467d3b7)$ echo $PROJECT_ID
qwiklabs-gcp-02-3bfec467d3b7
student_02_d6cf7c88fa18@cloudshell:~ (qwiklabs-gcp-02-3bfec467d3b7)$

qwiklabs-gcp-02-3bfec467d3b7
student_02_d6cf7c88fa18@cloudshell:~ (qwiklabs-gcp-02-3bfec467d3b7)$ gcloud container clusters list
NAME          LOCATION    MASTER_VERSION   MASTER_IP       MACHINE_TYPE   NODE_VERSION     NUM_NODES  STATUS
shop-cluster  us-west1-b  1.17.9-gke.6300  35.197.117.151  n1-standard-2  1.17.9-gke.6300  4          RUNNING
student_02_d6cf7c88fa18@cloudshell:~ (qwiklabs-gcp-02-3bfec467d3b7)$


student_02_d6cf7c88fa18@cloudshell:~ (qwiklabs-gcp-02-3bfec467d3b7)$ gcloud container clusters list
NAME          LOCATION    MASTER_VERSION   MASTER_IP       MACHINE_TYPE   NODE_VERSION     NUM_NODES  STATUS
shop-cluster  us-west1-b  1.17.9-gke.6300  35.197.117.151  n1-standard-2  1.17.9-gke.6300  4          RUNNING
student_02_d6cf7c88fa18@cloudshell:~ (qwiklabs-gcp-02-3bfec467d3b7)$ gcloud container clusters get-credentials shop-cluster --zone us-west1-b
Fetching cluster endpoint and auth data.
kubeconfig entry generated for shop-cluster.
student_02_d6cf7c88fa18@cloudshell:~ (qwiklabs-gcp-02-3bfec467d3b7)$ kubectl get nodes
NAME                                             STATUS   ROLES    AGE     VERSION
gke-shop-cluster-demo-node-pool1-a6d16e50-027c   Ready    <none>   9m41s   v1.17.9-gke.6300
gke-shop-cluster-demo-node-pool1-a6d16e50-3w37   Ready    <none>   9m40s   v1.17.9-gke.6300
gke-shop-cluster-demo-node-pool1-a6d16e50-gh30   Ready    <none>   9m42s   v1.17.9-gke.6300
gke-shop-cluster-demo-node-pool1-a6d16e50-tg2s   Ready    <none>   9m42s   v1.17.9-gke.6300
student_02_d6cf7c88fa18@cloudshell:~ (qwiklabs-gcp-02-3bfec467d3b7)$



git clone https://github.com/GoogleCloudPlatform/training-data-analyst
Create a soft link to your working directory:

ln -s ~/training-data-analyst/blogs/microservices-demo-1 ~/microservices-demo-1
Download and install skaffold:

curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && chmod +x skaffold && sudo mv skaffold /usr/local/bin

Install the app using skaffold:

cd microservices-demo-1
skaffold run
Confirm everything is running correctly:

kubectl get pods



student_02_d6cf7c88fa18@cloudshell:~ (qwiklabs-gcp-02-3bfec467d3b7)$ ln -s ~/training-data-analyst/blogs/microservices-demo-1 ~/microservices-demo-1
student_02_d6cf7c88fa18@cloudshell:~ (qwiklabs-gcp-02-3bfec467d3b7)$ ls -rtlh
total 12K
-rw-r--r--  1 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18  913 Sep 27 11:28 README-cloudshell.txt
drwxr-xr-x 12 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18 4.0K Sep 27 11:34 training-data-analyst
lrwxrwxrwx  1 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18   78 Sep 27 11:34 microservices-demo-1 -> /home/student_02_d6cf7c88fa18/training-data-analyst/blogs/microservices-demo-1
student_02_d6cf7c88fa18@cloudshell:~ (qwiklabs-gcp-02-3bfec467d3b7)$ curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && chmod +x skaffold && sudo mv skaffold /usr/local/bin
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 44.9M  100 44.9M    0     0  65.3M      0 --:--:-- --:--:-- --:--:-- 65.2M
student_02_d6cf7c88fa18@cloudshell:~ (qwiklabs-gcp-02-3bfec467d3b7)$ cd microservices-demo-1
student_02_d6cf7c88fa18@cloudshell:~/microservices-demo-1 (qwiklabs-gcp-02-3bfec467d3b7)$ ls -rtlh
total 68K
-rw-r--r--  1 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18 8.4K Sep 27 11:33 README.md
-rw-r--r--  1 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18  12K Sep 27 11:33 LICENSE
drwxr-xr-x  2 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18 4.0K Sep 27 11:33 docs
-rw-r--r--  1 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18 1.3K Sep 27 11:33 CONTRIBUTING.md
-rw-r--r--  1 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18  815 Sep 27 11:33 cloudbuild.yaml
drwxr-xr-x  2 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18 4.0K Sep 27 11:33 img
drwxr-xr-x  2 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18 4.0K Sep 27 11:33 istio-manifests
-rw-r--r--  1 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18 1.3K Sep 27 11:33 skaffold.yaml
-rwxr-xr-x  1 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18 1.6K Sep 27 11:33 setup_csr.sh
drwxr-xr-x  3 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18 4.0K Sep 27 11:33 pb
drwxr-xr-x  2 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18 4.0K Sep 27 11:33 kubernetes-manifests
drwxr-xr-x  3 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18 4.0K Sep 27 11:33 tests
drwxr-xr-x 13 student_02_d6cf7c88fa18 student_02_d6cf7c88fa18 4.0K Sep 27 11:33 src
student_02_d6cf7c88fa18@cloudshell:~/microservices-demo-1 (qwiklabs-gcp-02-3bfec467d3b7)$ skaffold run
Generating tags...
Checking cache...
Tags used in deployment:
Starting deploy...
 - deployment.apps/adservice created
 - service/adservice created
 - deployment.apps/cartservice created
 - service/cartservice created
 - deployment.apps/checkoutservice created
 - service/checkoutservice created
 - deployment.apps/currencyservice created
 - service/currencyservice created
 - deployment.apps/emailservice created
 - service/emailservice created
 - deployment.apps/frontend created
 - service/frontend created
 - service/frontend-external created
 - deployment.apps/loadgenerator created
 - deployment.apps/paymentservice created
 - service/paymentservice created
 - deployment.apps/productcatalogservice created
 - service/productcatalogservice created
 - deployment.apps/recommendationservice created
 - service/recommendationservice created
 - deployment.apps/redis-cart created
 - service/redis-cart created
 - deployment.apps/shippingservice created
 - service/shippingservice created
Waiting for deployments to stabilize...
 - deployment/adservice: waiting for rollout to finish: 0 of 1 updated replicas are available...
 - deployment/cartservice: waiting for rollout to finish: 0 of 1 updated replicas are available...
 - deployment/checkoutservice: waiting for rollout to finish: 0 of 1 updated replicas are available...
 - deployment/currencyservice: creating container server
    - pod/currencyservice-6c5c7bd484-8qptm: creating container server
 - deployment/emailservice: creating container server
    - pod/emailservice-6cc7c5f887-ddx8f: creating container server
 - deployment/frontend: waiting for rollout to finish: 0 of 1 updated replicas are available...
 - deployment/loadgenerator: waiting for init container wait-frontend to start
    - pod/loadgenerator-6ff5b75bdc-ssxhf: waiting for init container wait-frontend to start
 - deployment/paymentservice: creating container server
    - pod/paymentservice-586974c546-nnbvf: creating container server
 - deployment/productcatalogservice: creating container server
    - pod/productcatalogservice-6f76cf54fd-rdv4l: creating container server
 - deployment/recommendationservice: creating container server
    - pod/recommendationservice-786f79d8d-9kvbc: creating container server
 - deployment/redis-cart: creating container redis
    - pod/redis-cart-7c687bd5b6-hjdfv: creating container redis
 - deployment/shippingservice: creating container server
    - pod/shippingservice-59cbc6fb5d-dvl57: creating container server
 - deployment/redis-cart: waiting for rollout to finish: 0 of 1 updated replicas are available...
 - deployment/frontend is ready. [11/12 deployment(s) still pending]
 - deployment/redis-cart is ready. [10/12 deployment(s) still pending]
 - deployment/shippingservice is ready. [9/12 deployment(s) still pending]
 - deployment/recommendationservice is ready. [8/12 deployment(s) still pending]
 - deployment/paymentservice is ready. [7/12 deployment(s) still pending]
 - deployment/cartservice: container server is backing off waiting to restart
    - pod/cartservice-df4d94f4f-6c7gx: container server is backing off waiting to restart


student_02_d6cf7c88fa18@cloudshell:~/microservices-demo-1 (qwiklabs-gcp-02-3bfec467d3b7)$ kubectl get pods
NAME                                     READY   STATUS    RESTARTS   AGE
adservice-d8fc5c44d-8hbl2                1/1     Running   0          2m16s
cartservice-df4d94f4f-6c7gx              1/1     Running   2          2m15s
checkoutservice-cc6fcc5dd-26pwv          1/1     Running   0          2m15s
currencyservice-6c5c7bd484-8qptm         1/1     Running   0          2m14s
emailservice-6cc7c5f887-ddx8f            1/1     Running   0          2m13s
frontend-5cf9fb9655-dpj5f                1/1     Running   0          2m13s
loadgenerator-6ff5b75bdc-ssxhf           1/1     Running   0          2m12s
paymentservice-586974c546-nnbvf          1/1     Running   0          2m11s
productcatalogservice-6f76cf54fd-rdv4l   1/1     Running   0          2m11s
recommendationservice-786f79d8d-9kvbc    1/1     Running   0          2m10s
redis-cart-7c687bd5b6-hjdfv              1/1     Running   0          2m9s
shippingservice-59cbc6fb5d-dvl57         1/1     Running   0          2m9s
student_02_d6cf7c88fa18@cloudshell:~/microservices-demo-1 (qwiklabs-gcp-02-3bfec467d3b7)$

student_02_d6cf7c88fa18@cloudshell:~/microservices-demo-1 (qwiklabs-gcp-02-3bfec467d3b7)$ export EXTERNAL_IP=$(kubectl get service frontend-external | awk 'BEGIN { cnt=0; } { cnt+=1; if (cnt > 1) print $4; }')
student_02_d6cf7c88fa18@cloudshell:~/microservices-demo-1 (qwiklabs-gcp-02-3bfec467d3b7)$

curl -o /dev/null -s -w "%{http_code}\n"  http://$EXTERNAL_IP


bharath@cloudshell:~ (srianjaneyam)$ gcloud config set compute/zone asia-southeast1-c
Updated property [compute/zone].
bharath@cloudshell:~ (srianjaneyam)$ gcloud config list
[component_manager]
disable_update_check = True
[compute]
gce_metadata_read_timeout_sec = 30
zone = asia-southeast1-c
[core]
account = bharath@bharathkumaraju.com
disable_usage_reporting = True
project = srianjaneyam
[metrics]
environment = devshell

Your active configuration is: [cloudshell-14553]
bharath@cloudshell:~ (srianjaneyam)$

harath@cloudshell:~ (srianjaneyam)$ export MY_ZONE=asia-southeast1-c
bharath@cloudshell:~ (srianjaneyam)$ gcloud container clusters create webfrontend --zone $MY_ZONE
WARNING: Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
WARNING: Currently VPC-native is not the default mode during cluster creation. In the future, this will become the default mode and can be disabled using `--no-enable-ip-alias` flag. Use `--[no-]enable-ip-alias` flag to suppress this warning.
WARNING: Newly created clusters and node-pools will have node auto-upgrade enabled by default. This can be disabled using the `--no-enable-autoupgrade` flag.
WARNING: Starting with version 1.18, clusters will have shielded GKE nodes by default.
WARNING: Your Pod address range (`--cluster-ipv4-cidr`) can accommodate at most 1008 node(s).
Creating cluster webfrontend in asia-southeast1-c... Cluster is being health-checked (master is healthy)...done.
Created [https://container.googleapis.com/v1/projects/srianjaneyam/zones/asia-southeast1-c/clusters/webfrontend].
To inspect the contents of your cluster, go to: https://console.cloud.google.com/kubernetes/workload_/gcloud/asia-southeast1-c/webfrontend?project=srianjaneyam
kubeconfig entry generated for webfrontend.
NAME         LOCATION           MASTER_VERSION  MASTER_IP       MACHINE_TYPE   NODE_VERSION    NUM_NODES  STATUS
webfrontend  asia-southeast1-c  1.15.12-gke.20  35.187.233.228  n1-standard-1  1.15.12-gke.20  3          RUNNING
bharath@cloudshell:~ (srianjaneyam)$



bharath@cloudshell:~ (srianjaneyam)$ kubectl get nodes
NAME                                         STATUS   ROLES    AGE     VERSION
gke-webfrontend-default-pool-33451d02-35ct   Ready    <none>   2m25s   v1.15.12-gke.20
gke-webfrontend-default-pool-33451d02-4npc   Ready    <none>   2m27s   v1.15.12-gke.20
gke-webfrontend-default-pool-33451d02-sj2c   Ready    <none>   2m27s   v1.15.12-gke.20
bharath@cloudshell:~ (srianjaneyam)$ kubectl get pods
NAME    READY   STATUS    RESTARTS   AGE
nginx   1/1     Running   0          17s
bharath@cloudshell:~ (srianjaneyam)$

bharath@cloudshell:~ (srianjaneyam)$ kubectl get all
NAME        READY   STATUS    RESTARTS   AGE
pod/nginx   1/1     Running   0          28s

NAME                 TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
service/kubernetes   ClusterIP   10.3.240.1   <none>        443/TCP   3m5s
bharath@cloudshell:~ (srianjaneyam)$

bharath@cloudshell:~ (srianjaneyam)$ kubectl run nginx-1 --image=nginx --port=80  --dry-run=client -o yaml
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: nginx-1
  name: nginx-1
spec:
  containers:
  - image: nginx
    name: nginx-1
    ports:
    - containerPort: 80
    resources: {}
  dnsPolicy: ClusterFirst
  restartPolicy: Always
status: {}
bharath@cloudshell:~ (srianjaneyam)$



kubectl create deployment nginx-1 --image=nginx  -o yaml --dry-run


bharath@cloudshell:~ (srianjaneyam)$ kubectl create deployment nginx-1 --image=nginx  -o yaml --dry-run=client
apiVersion: apps/v1
kind: Deployment
metadata:
  creationTimestamp: null
  labels:
    app: nginx-1
  name: nginx-1
spec:
  replicas: 1
  selector:
    matchLabels:
      app: nginx-1
  strategy: {}
  template:
    metadata:
      creationTimestamp: null
      labels:
        app: nginx-1
    spec:
      containers:
      - image: nginx
        name: nginx
        resources: {}
status: {}
bharath@cloudshell:~ (srianjaneyam)$



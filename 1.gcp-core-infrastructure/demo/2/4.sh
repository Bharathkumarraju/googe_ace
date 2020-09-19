student_02_7f23037525c5@cloudshell:~ (qwiklabs-gcp-02-0d5ae6ad1f7b)$ gcloud container clusters create webfrontend --zone us-central1-a --num-nodes 2
WARNING: Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
WARNING: Currently VPC-native is not the default mode during cluster creation. In the future, this will become the default mode and can be disabled using `--no-enable-ip-alias` flag. Use `--[no-]enable-ip-alias` flag to suppress this warning.
WARNING: Newly created clusters and node-pools will have node auto-upgrade enabled by default. This can be disabled using the `--no-enable-autoupgrade` flag.
WARNING: Starting with version 1.18, clusters will have shielded GKE nodes by default.
WARNING: Your Pod address range (`--cluster-ipv4-cidr`) can accommodate at most 1008 node(s).
Creating cluster webfrontend in us-central1-a... Cluster is being health-checked (master is healthy)...done.
Created [https://container.googleapis.com/v1/projects/qwiklabs-gcp-02-0d5ae6ad1f7b/zones/us-central1-a/clusters/webfrontend].
To inspect the contents of your cluster, go to: https://console.cloud.google.com/kubernetes/workload_/gcloud/us-central1-a/webfrontend?project=qwiklabs-gcp-02-0d5ae6ad1f7b
kubeconfig entry generated for webfrontend.
NAME         LOCATION       MASTER_VERSION  MASTER_IP     MACHINE_TYPE   NODE_VERSION    NUM_NODES  STATUS
webfrontend  us-central1-a  1.15.12-gke.20  34.68.227.22  n1-standard-1  1.15.12-gke.20  2          RUNNING
student_02_7f23037525c5@cloudshell:~ (qwiklabs-gcp-02-0d5ae6ad1f7b)$


student_02_7f23037525c5@cloudshell:~ (qwiklabs-gcp-02-0d5ae6ad1f7b)$ kubectl create deploy nginx --image=nginx
deployment.apps/nginx created
student_02_7f23037525c5@cloudshell:~ (qwiklabs-gcp-02-0d5ae6ad1f7b)$


student_02_7f23037525c5@cloudshell:~ (qwiklabs-gcp-02-0d5ae6ad1f7b)$ kubectl create deploy nginx --image=nginx
deployment.apps/nginx created
student_02_7f23037525c5@cloudshell:~ (qwiklabs-gcp-02-0d5ae6ad1f7b)$


student_02_7f23037525c5@cloudshell:~ (qwiklabs-gcp-02-0d5ae6ad1f7b)$ kubectl get svc
NAME         TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
kubernetes   ClusterIP      10.51.240.1     <none>        443/TCP        2m48s
nginx        LoadBalancer   10.51.240.128   <pending>     80:32353/TCP   18s
student_02_7f23037525c5@cloudshell:~ (qwiklabs-gcp-02-0d5ae6ad1f7b)$


student_02_7f23037525c5@cloudshell:~ (qwiklabs-gcp-02-0d5ae6ad1f7b)$ kubectl get all -n default
NAME                         READY   STATUS    RESTARTS   AGE
pod/nginx-554b9c67f9-kn6vb   1/1     Running   0          2m39s

NAME                 TYPE           CLUSTER-IP      EXTERNAL-IP     PORT(S)        AGE
service/kubernetes   ClusterIP      10.51.240.1     <none>          443/TCP        4m37s
service/nginx        LoadBalancer   10.51.240.128   34.121.206.40   80:32353/TCP   2m7s

NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/nginx   1/1     1            1           2m40s

NAME                               DESIRED   CURRENT   READY   AGE
replicaset.apps/nginx-554b9c67f9   1         1         1       2m40s
student_02_7f23037525c5@cloudshell:~ (qwiklabs-gcp-02-0d5ae6ad1f7b)$



tudent_02_7f23037525c5@cloudshell:~ (qwiklabs-gcp-02-0d5ae6ad1f7b)$ kubectl scale deployment nginx --replicas 9
deployment.extensions/nginx scaled
student_02_7f23037525c5@cloudshell:~ (qwiklabs-gcp-02-0d5ae6ad1f7b)$ kubectl get all
NAME                         READY   STATUS              RESTARTS   AGE
pod/nginx-554b9c67f9-97crk   0/1     Pending             0          8s
pod/nginx-554b9c67f9-bjhs6   0/1     ContainerCreating   0          8s
pod/nginx-554b9c67f9-czgb7   1/1     Running             0          8s
pod/nginx-554b9c67f9-fbgjt   0/1     ContainerCreating   0          8s
pod/nginx-554b9c67f9-kn6vb   1/1     Running             0          3m36s
pod/nginx-554b9c67f9-mpdx5   0/1     Pending             0          8s
pod/nginx-554b9c67f9-x2h2q   0/1     ContainerCreating   0          8s
pod/nginx-554b9c67f9-xcp54   0/1     Pending             0          8s
pod/nginx-554b9c67f9-zpbm7   0/1     ContainerCreating   0          8s

NAME                 TYPE           CLUSTER-IP      EXTERNAL-IP     PORT(S)        AGE
service/kubernetes   ClusterIP      10.51.240.1     <none>          443/TCP        5m35s
service/nginx        LoadBalancer   10.51.240.128   34.121.206.40   80:32353/TCP   3m5s

NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/nginx   4/9     9            4           3m37s

NAME                               DESIRED   CURRENT   READY   AGE
replicaset.apps/nginx-554b9c67f9   9         9         4       3m37s
student_02_7f23037525c5@cloudshell:~ (qwiklabs-gcp-02-0d5ae6ad1f7b)$







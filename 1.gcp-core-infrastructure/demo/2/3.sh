bharath@cloudshell:~ (srianjaneyam)$ kubectl get all
NAME                           READY   STATUS    RESTARTS   AGE
pod/nginx-1-75969c956f-66j6f   1/1     Running   0          8s

NAME                 TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
service/kubernetes   ClusterIP   10.3.240.1   <none>        443/TCP   23m

NAME                      READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/nginx-1   1/1     1            1           8s

NAME                                 DESIRED   CURRENT   READY   AGE
replicaset.apps/nginx-1-75969c956f   1         1         1       8s
bharath@cloudshell:~ (srianjaneyam)$


bharath@cloudshell:~ (srianjaneyam)$ kubectl expose deployment nginx-1 --port 80 --type LoadBalancer
service/nginx-1 exposed
bharath@cloudshell:~ (srianjaneyam)$
bharath@cloudshell:~ (srianjaneyam)$ kubectl get all
NAME                           READY   STATUS    RESTARTS   AGE
pod/nginx-1-75969c956f-66j6f   1/1     Running   0          2m14s

NAME                 TYPE           CLUSTER-IP    EXTERNAL-IP   PORT(S)        AGE
service/kubernetes   ClusterIP      10.3.240.1    <none>        443/TCP        25m
service/nginx-1      LoadBalancer   10.3.245.85   <pending>     80:30041/TCP   23s

NAME                      READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/nginx-1   1/1     1            1           2m14s

NAME                                 DESIRED   CURRENT   READY   AGE
replicaset.apps/nginx-1-75969c956f   1         1         1       2m14s
bharath@cloudshell:~ (srianjaneyam)$


bharath@cloudshell:~ (srianjaneyam)$ kubectl get all
NAME                           READY   STATUS    RESTARTS   AGE
pod/nginx-1-75969c956f-66j6f   1/1     Running   0          5m3s

NAME                 TYPE           CLUSTER-IP    EXTERNAL-IP    PORT(S)        AGE
service/kubernetes   ClusterIP      10.3.240.1    <none>         443/TCP        28m
service/nginx-1      LoadBalancer   10.3.245.85   35.240.193.9   80:30041/TCP   3m12s

NAME                      READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/nginx-1   1/1     1            1           5m3s

NAME                                 DESIRED   CURRENT   READY   AGE
replicaset.apps/nginx-1-75969c956f   1         1         1       5m3s
bharath@cloudshell:~ (srianjaneyam)$



bharath@cloudshell:~ (srianjaneyam)$ kubectl scale deployment nginx-1 --replicas 3
deployment.extensions/nginx-1 scaled
bharath@cloudshell:~ (srianjaneyam)$ kubectl get all
NAME                           READY   STATUS              RESTARTS   AGE
pod/nginx-1-75969c956f-66j6f   1/1     Running             0          8m20s
pod/nginx-1-75969c956f-6hq6j   1/1     Running             0          5s
pod/nginx-1-75969c956f-shftb   0/1     ContainerCreating   0          5s

NAME                 TYPE           CLUSTER-IP    EXTERNAL-IP    PORT(S)        AGE
service/kubernetes   ClusterIP      10.3.240.1    <none>         443/TCP        31m
service/nginx-1      LoadBalancer   10.3.245.85   35.240.193.9   80:30041/TCP   6m29s

NAME                      READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/nginx-1   2/3     3            2           8m21s

NAME                                 DESIRED   CURRENT   READY   AGE
replicaset.apps/nginx-1-75969c956f   3         3         2       8m21s
bharath@cloudshell:~ (srianjaneyam)$ kubectl get all
NAME                           READY   STATUS    RESTARTS   AGE
pod/nginx-1-75969c956f-66j6f   1/1     Running   0          8m27s
pod/nginx-1-75969c956f-6hq6j   1/1     Running   0          12s
pod/nginx-1-75969c956f-shftb   1/1     Running   0          12s

NAME                 TYPE           CLUSTER-IP    EXTERNAL-IP    PORT(S)        AGE
service/kubernetes   ClusterIP      10.3.240.1    <none>         443/TCP        31m
service/nginx-1      LoadBalancer   10.3.245.85   35.240.193.9   80:30041/TCP   6m36s

NAME                      READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/nginx-1   3/3     3            3           8m27s

NAME                                 DESIRED   CURRENT   READY   AGE
replicaset.apps/nginx-1-75969c956f   3         3         3       8m27s
bharath@cloudshell:~ (srianjaneyam)$



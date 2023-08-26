# kubernetes


### What is Kubernetes ?

```
Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. 

It abstracts the underlying infrastructure, enabling seamless management of resources and workload distribution. 

Kubernetes offers tools for application scaling, self-healing, and load balancing, simplifying the development and operation of complex microservices architectures. 

It promotes efficiency, resilience, and portability across various cloud and on-premises environments.

```

### Do we run Containers directly on the top of Kubernetes Clusters ?

```
We don't run containers directly on the top of Kubernetes Clusters. Instead we use something called as POD's.
POD's are the smallest units in Kubernetes. POD is a wrapper to your container which means One Pod holds one or more than one container.
```

### Can a POD in kubernetes runs more than one container ?

```
YES! If two containers are working closely together, then we can use the multi-container pods, which was solved by K8 and that's main advantage.
All the containers in a pod will have common network stack and storage which results in high performance for apps that needs common network storage.
```



### kubenetes commands 


Most used Kubernetes commands :

```
Syntax :  kubectl action resources 

* kubectl get nodes  
* kubectl get nodes -o wide
* kubectl cluster-info 
* kubectl api-versions
* kubectl api-resources 
* kubectl --help 
```



### How can we create resources in kubernetes ?

```
We can create resources in kubernetes by using any of the following approaches.

    1) Imperative   [ Using commands       : This is not recommended approach ]
    2) Declarative  [ Recommented Apporach : Everything will be in code using YAML ]
```


# What is a namespace in kubernetes ?

```
A namespace in Kubernetes is a virtual partition that isolates and organizes resources within a cluster, enabling better resource management and access control for different teams or applications. 

It helps avoid naming conflicts and enhances clarity in a shared environment.
```


### What are the namespaces that comes up as a part of the Kubernetes Cluster Installation ?

```

    1) default        [ all your resources will be created by default in this nameSpace ]
    2) kube-public    [ Master plane components and this is mostly reserved for cluster internal usage that needs to be cluster visible ]
    3) kube-system    [ THis is for the objects created by the Kubernetes System. This is internal to kubernetes]

```


### How can we create kubernetes resources using manifest files ???

```
    $ kubectl apply -f nameOfTheFile.yml       
            [ apply is going to create resource is not available or updates the values of the resources if the resource already exits]

    $ kubectl create -f nameOfTheFile.yml 
             [ create is going to create resource ]
    
    $ kubectl delete -f nameOfTheFile.yml 
             [delete is going to delete all the kubernetes resources created by this manifest]
```

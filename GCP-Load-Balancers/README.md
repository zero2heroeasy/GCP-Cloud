# Here we can discuss about GCP load balancers:
- What is a load balancer ?
- How the load balancer works ?
- What are the types of load balancers in GCP Cloud ?
- How to choose a load balancer from gcp cloud ? 
- What are the components of GCP cloud load balancer ?

# What is a load balancer ?

A load balancer is a device or software component that evenly distributes incoming network traffic across multiple servers or computing resources. 

There are a number of reasons why load balancing is important. Load balancer allows users to:
- Distribute load-balanced resources in single or multiple regions
- Meet the high availability requirements
- Scale resources up or down with intelligent Autoscaling
- Use cloud content delivery network (CDN) for optimal content delivery

Google Cloud Load Balancing is a fully distributed, software-defined managed service. It provides scaling, high availability, and traffic management for internet-facing and private applications.

# How the load balancer works ?

When a user makes a request to access a website or application, the load balancer receives the request and decides which server or resource should handle it based on various algorithms, such as round-robin, least connections, or IP hashing. By distributing the workload across multiple servers, a load balancer can prevent any single server from becoming overwhelmed with traffic, thereby improving performance and preventing service disruptions or downtime.

![image](https://github.com/zero2heroeasy/GCP-Cloud/assets/138552899/06874e59-a4eb-4ce0-9dbf-9587cffcc23a)

Load balancers can operate at different layers of the network stack, such as the transport layer (Layer 4) or the application layer (Layer 7). Layer 4 load balancers primarily focus on distributing traffic based on network information, such as IP addresses and port numbers. Layer 7 load balancers, on the other hand, can make decisions based on application-specific data, such as HTTP headers, cookies, or URL paths. Layer 7 load balancers provide more advanced features like SSL termination, content-based routing, and session persistence.

# What are the types of load balancers in GCP Cloud ?
In general, the different load balancers fall into two main categories:

* Global Load Balancing
* Regional Load Balancing
  
Both the above types of load balancing options are further categorized into internal or external depending upon the type of traffic being served.

Let’s look into each of these categories in detail:

**Global load balancing** is a practice of distributing traffic across connected server resources that are located in different geographical regions and distributing the workload globally instead of having it in a single data center. It offers enhanced traffic management and disaster recovery benefits to optimize the performance of an application. Google Cloud Global load balancing provides IPv6 termination and uses the use the premium tier of network service tiers

**Regional Load balancing** allows users to split their workload via a pool of servers located in the same region. It is used when your backends are in one region, and you only require IPv4 termination.

**Internal vs External Load Balancing**:

**External load balancing** supports Instance groups, Zonal network endpoint groups (NEGs), buckets in Cloud Storage, serverless NEGs, and internet NEGs. It can be used to support web, application, and database tier services.

It offers the following load balancing options:

- External HTTP(S) Load Balancing
- SSL Proxy
- TCP Proxy
- TCP/UDP Network Load Balancing

**Internal load balancing** is a managed service that can only be accessed on an internal IP address and in the chosen region of your Virtual Private Cloud network. At a high level, it consists of one or more backend services to which the load balancer forwards traffic and an internal IP address to which clients send traffic. It can be used to run the applications behind an internal IP address and disperse HTTP/HTTPS traffic to the backend application hosted either on Google Kubernetes Engine or Google Compute Engine. You can use it to route and balance load traffic to your virtual machines.

# How to choose a load balancer from gcp cloud ?

To determine which Cloud Load Balancing product to use, you must first determine what traffic type your load balancers must handle. As a general rule, you'd choose an Application Load Balancer when you need a flexible feature set for your applications with HTTP(S) traffic. And you'd choose a Network Load Balancer when you need TLS offloading at scale or support for UDP, or if you need to expose client IP addresses to your applications.

You can further narrow down your choices depending on your application's requirements: whether your application is external (internet-facing) or internal, and whether you need backends deployed globally or regionally.

The following diagram summarizes all the available deployment modes for Cloud Load Balancing:

![image](https://github.com/zero2heroeasy/GCP-Cloud/assets/138552899/c88e6fa2-cf3b-4b7c-a690-ad6de3b1066b)

# Summary of Google Cloud load balancers:
The following table provides more specific information about each load balancer.
![image](https://github.com/zero2heroeasy/GCP-Cloud/assets/138552899/1baefdc7-d753-4b92-af17-108305197cc2)

# What are the components of GCP cloud load balancer ?
The components of a Google Cloud Platform (GCP) load balancer can vary depending on the specific load balancer type you choose. However, here are the common components you will find in GCP load balancers:

**Frontend:** The frontend of a load balancer is responsible for receiving incoming traffic. It acts as an entry point for client requests and can have configurations for protocols, IP addresses, ports, and SSL certificates.

**Backend:** The backend is a group of resources that receive and process the traffic forwarded by the load balancer. It can include instances, instance groups, backend services, or backend buckets. The backend can be located within a region or span multiple regions for global load balancing.

**Health Check:** Health checks monitor the status and availability of the backend resources. They periodically send requests to the backend instances and determine their health based on responses received. Unhealthy instances are automatically removed from the pool until they become healthy again.

**Load Balancing Algorithm:** Load balancers employ various algorithms to distribute incoming traffic across the backend resources. Some common algorithms include round-robin, least connections, and IP hashing. The choice of algorithm can affect how traffic is balanced and the performance characteristics of the load balancer.

**Session Affinity:** Some load balancers support session affinity, also known as sticky sessions. This feature ensures that requests from the same client are consistently routed to the same backend instance. It can be useful for applications that require maintaining session state or for scenarios where connection persistence is needed.

**SSL Termination:** Load balancers may provide SSL termination, which offloads the SSL/TLS encryption and decryption process from the backend instances. SSL termination can improve performance and reduce the computational load on the backend resources.

**Logging and Monitoring:** GCP load balancers often integrate with logging and monitoring services, such as Stackdriver Logging and Stackdriver Monitoring. These services provide visibility into the health, performance, and traffic patterns of the load balancer and its associated resources.

These are the key components you will typically find in GCP load balancers. However, the specific configuration options and features may vary depending on the load balancer type and its capabilities.

# Components of HTTPS load balancer:
Ports supported: 80, 8080, 443

![image](https://github.com/zero2heroeasy/GCP-Cloud/assets/138552899/641a351f-87d9-47b6-a7bb-56273f1ba2d3)

# Components of TCP and SSL Proxy Load Balancer:
Ports supported: 24, 443, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1883, 5222

![image](https://github.com/zero2heroeasy/GCP-Cloud/assets/138552899/6c725702-eae4-4819-aa07-69faca27c880)

# Components of Network load balancer (Regional):
Ports supported: All TCP and UDP ports.

![image](https://github.com/zero2heroeasy/GCP-Cloud/assets/138552899/2e448471-c22c-4638-8fb7-2e1f18e1c7fb)

If the backend type was Instance Group:
![image](https://github.com/zero2heroeasy/GCP-Cloud/assets/138552899/69c2fa8a-da78-4f0e-b02d-904beac7b7ab)

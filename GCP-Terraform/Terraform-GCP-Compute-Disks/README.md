# Google Cloud Storage (Compute Disks)

**Introduction:**

**Overview:**

Google Compute Disk is a service provided by Google Cloud Platform (GCP) that allows you to create and manage persistent block storage devices for your virtual machine instances. It provides durable and high-performance storage for your data and allows you to attach and detach disks to your virtual machine instances as needed.

Here are some key points about Google Compute Disk:

**1. Disk Types:** Google Compute Disk offers different disk types optimized for various workloads. The main types are:

- Standard Persistent Disks: Provides a balance of performance and cost for most general-purpose workloads.
- SSD Persistent Disks: Offers higher performance and lower latency than standard disks, making them suitable for I/O intensive applications.
- Local SSDs: Provides very high performance, but the data is volatile and the disk is physically attached to the host machine.

**2. Scalability:** You can create and manage disks of varying sizes, ranging from a few gigabytes to several terabytes. Disks can also be dynamically resized without the need for detaching or recreating them.

**3. Snapshots and Images:** You can create snapshots of your disks, which are point-in-time copies that capture the disk's data. These snapshots can be used to create new disks or restore data. Moreover, you can also create custom images from snapshots, allowing you to create new instances with pre-configured disk contents.

**4. Regional and Zonal Disks:** Google Compute Disk provides both regional and zonal options. Regional disks are replicated across multiple zones within a region for high availability, while zonal disks are limited to a single zone.

**5. Encryption:** Google Compute Disk offers built-in encryption at rest for data security. By default, all data stored on persistent disks is encrypted using Google-managed keys. However, you can also bring your own encryption keys for added control.

**6. Snapshot Lifecycle Management:** Google provides lifecycle management policies that automatically manage the retention and deletion of snapshots. This helps you optimize costs and ensure that you have the appropriate snapshots available when needed.

# **Disk Limitations:**

![image](https://github.com/zero2heroeasy/GCP-Cloud/assets/138552899/1cd9de25-f9cb-4f4d-b828-5d869552e09f)

# Write-up Template

### Analyze, choose, and justify the appropriate resource option for deploying the app.

*For **both** a VM or App Service solution for the CMS app:*
- *Analyze costs, scalability, availability, and workflow*
- *Choose the appropriate solution (VM or App Service) for deploying the app*
- *Justify your choice*

### Assess app changes that would change your decision.

*Detail how the app and any other needs would have to change for you to change your decision in the last section.* 


### Decision
App Service:
- No management of the underlying hardware and OS. Choosing Paas(App Service) solution over Iaas(Virtual Machine).
- Automatic scaling if needed.
- The option to create deployment slots for various stages throughout the development.
- Easy and fast deployment. Through script or directly through VS Code.
- Option to provide environment variables/app Settings through App Service config.
- Lower cost compared to a VM and less infrastructure setup required. (No Virtual Network, Public IP, Disks, etc.) 
- Only an App Service Plan needs to be created for hosting. Multiple App Services can leverage this plan. 
- Result compared to using a VM: Easier to maintain, easy deployment, lower cost, flexibility, scalability.

App Changes that would change my decision:
- Governmental requirements to use a dedicated VM as a web server. 
- Software or apps running on the web server's OS that will be leveraged by the web server to function
- Underlying hardware or OS management required

### Update for second revision:
Comparing costs, scalability, availability, and workflow betwenn App Service and VM

### Costs
App Service | Virtual Machine
------------ | -------------
Leverages an App Service Plan. Starting at F1 as free tier. 
Can be scaled up to Premium and Isolated which will be more expensive.
Pricing varies between $0 for the free tier and $1.6/h for isolated plans.| E.g. a B2S machine will cost about $24 depending on region running 24/7 a month. 

Result of comparison: It depends on the traffic and compute power needed for the web server to handle all requests. 
An App Service can be used for free with the F1 sku while a VM will always cost money. I choose the App Service in this category. 


### Scalability
App Service | Virtual Machine
------------ | -------------
It is easy to implement horizontal automatic scaling. |  Scale-sets can be implemented which require some effort. 
Multiple deployment slots can be configured and traffic can be controlled percent-wise. | 
The currently used App Service Plan can be scaled up to higher skus easily without interrupting. | System needs to restart when hardware configurations change. 
A load balancer can be leveraged.| A load balancer can be leveraged.
 

Result of comparison: App Services require a lot less effort to leverage scalability. I choose the App Service in this category. 


### Availability 
App Service | Virtual Machine
------------ | -------------
Leverage multiple App Service Plans and Webapps (in different regions) and route traffic through the Azure Traffic Manager | Availability Zones
 -| Availability Sets
 -| Permium Disks
 SLA for 99.95% for App Services| SLA - 99.99% availability can be achieved with the correct setup.


Result of comparison: VMs may offer better availability, but with implementing this availability effort and of course costs will increase rapidly. In the current scenario I will still choose an App Service over a VM, because of the reasons above.

### Workflow
App Service | Virtual Machine
------------ | -------------
Easy to setup | Easy to setup but requires more things to set up
Only needs an App Service Plan for hosting | Needs a virtual network, disk, network security group, public IP
Easy and fast deployment through script or VS code. Also containers can be deployed directly | -
Multiple deployment slots for different development stages | -
Easy and fast switch between different versions of code through deployment slots | -
Automatic deployments through Azure DevOps, GitHub. | -

Result of comparison: Definitely App Service in the current usage scenario.



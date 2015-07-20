# trollbridge-database
database for trollbridge
# How to set up your Troll Bridge Database

The Database you will be using in your troll bridge solution essentially provides the authentication portion to the TB service. Once the Device credentials, and Azure service tokens have been entered into the correct tables in the database Troll Bridge will be able to authorize what devices may access a specific service. Your database includes the following tables:

  - AzureBlobPoliciesMap
  - AzureEventHubPoliciesMap
  - AzurePoliciesForBlobAccess
  - AzurePoliciesForEventHub
  - AzurePoliciesForQueueAccess
  - AzureQueuePoliciesMap
  - Collector
  - Customers
  - Sites
  - StoragInfoList

In this tutorial we will go through the process of mapping an Event Hub token policy to a device site that has a customer Id, Site ID and MAC address that is used to obtain the Even Hub Shared Access Signature Credentials

> For this example we will be editing the following tables in the database: 
> Customers, Sites, Collector, AzurePoliciesForEventHub, AzureEventHubPoliciesMap

###Set Up Customers, Sites, and Collector tables

The troll bridge service is a multi tenant solution allowing the service to be utilized by multiple customers in a single instance. The customer table allows you to enter information about the different users utilizing your troll bridge service. To begin building out your database that holds the credentials for devices to communicate to Azure services, enter the customer information into the Customer table. 
####dbo.Customer
  - CustomerId - Each customer using the service needs to be assigned a unique CustomerID. This field needs to have a value.
  - CompanyName - Use the other fields to enter additional information about the customers using the service.
  - Address1
  - Address2
  - City 
  - State
  - ZipCode

> For this example I am creating a Company (NateRose Trollolol) with the CustomerID of 22. I also added additional info about  this customer.

```sql
INSERT INTO [dbo].[Customers]
  VALUES (22, NateRose Trollolol, 555 California St, Floor 9, CA, 94412, USA)
  GO
```
####dbo.Site
Now we have to insert into our site table within the database. The site table alows a customer to have multiple locations of devices that can access services in your cloud subscription. Simply assign the CustomerId that you just created to the site fiel insertions to associate that site with the customer. 
  - CustomerId - Use the CustomerId you inserted into the Customer table to associate a site with that customer
  - SiteId - Customers can have multiple sites but each site must have a unique SiteId value
  - SiteName - Use the other table fields to add additional information about the site
  - Address1
  - Address2
  - City
  - State
  - ZipCode
  - Country

> For this example I am creating a site for the company I just created (NateRose Trollolol). The CustomerID associated with my company is (22). I'll use this and a unique SiteId Value for my table, in this case (15).

```sql
INSERT INTO [dbo].[Sites]
  VALUES (22, 15, Satyas Place, 123 Market St, 200 Suite, Seattle, Washington, 10101, USA)
  GO
```
####dbo.Collector
Finally we have to  insert into our collector table within our database. The collector is essentially the device that is communicating to the troll bridge service. Each device should have the respective CustomerId and SiteId in the table.

  

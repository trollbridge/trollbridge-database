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


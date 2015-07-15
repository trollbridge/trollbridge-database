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
  - Sites
  - StoragInfoList

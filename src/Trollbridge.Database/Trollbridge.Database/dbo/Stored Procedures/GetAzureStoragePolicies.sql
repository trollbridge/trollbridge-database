CREATE PROCEDURE [dbo].[GetAzureStoragePolicies]
(
      @CustomerId [int] = NULL
    , @SiteId [int] = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT   [CustomerId]
	       , [SiteId]
	       , [PolicyId]
           , [PolicyIdentifier]
           , [ContainerName]
           , [AzureStorageConnectionStr]
           , [Write]
           , [Read]
           , [Delete]
           , [MinToExpire]
      FROM [dbo].[AzurePoliciesForBlobAccess]
	 WHERE [CustomerId] = ISNULL(@CustomerId, [CustomerId]) AND [SiteId] = ISNULL(@SiteId, [SiteId])

    SELECT   [CustomerId]
	       , [SiteId]
	       , [PolicyId]
           , [PolicyIdentifier]
           , [QueueName]
           , [AzureStorageConnectionStr]
           , [Add]
           , [Read]
           , [Process]
           , [Update]
           , [MinToExpire]
      FROM [dbo].[AzurePoliciesForQueueAccess]
	 WHERE [CustomerId] = ISNULL(@CustomerId, [CustomerId]) AND [SiteId] = ISNULL(@SiteId, [SiteId])

    SELECT   [CustomerId]
	       , [SiteId]
	       , [PolicyId]
		   , [EventHubName]
           , [PolicyIdentifier]
           , [EventHubConnectionStr]
           , [Manage]
           , [Send]
           , [Listen]
           , [MinToExpire]
      FROM [dbo].[AzurePoliciesForEventHub]
	 WHERE [CustomerId] = ISNULL(@CustomerId, [CustomerId]) AND [SiteId] = ISNULL(@SiteId, [SiteId])
END

-- [dbo].[GetStoragePolicyMapForServer] 1, 1, '00155D274AB5'
CREATE PROCEDURE [dbo].[GetStoragePolicyMapForServer]
(
      @CustomerId int
    , @SiteId int
    , @MacAddress nvarchar(50)
)
AS
BEGIN
    SET NOCOUNT ON

	SELECT [PolicyId]
	  FROM [dbo].[AzureBlobPoliciesMap] map
	  JOIN [dbo].Collector ON Collector.CustomerId = map.CustomerId AND Collector.SiteId = map.SiteId AND Collector.CollectorId = map.CollectorId
	 WHERE map.CustomerId = @CustomerId AND map.SiteId = @SiteId AND (Collector.MacAddress1 = @MacAddress or Collector.MacAddress2 = @MacAddress) AND  Collector.Active = 1

	SELECT [PolicyId]
	  FROM [dbo].[AzureQueuePoliciesMap] map
	  JOIN [dbo].Collector ON Collector.CustomerId = map.CustomerId AND Collector.SiteId = map.SiteId AND Collector.CollectorId = map.CollectorId
	 WHERE map.CustomerId = @CustomerId AND map.SiteId = @SiteId AND (Collector.MacAddress1 = @MacAddress or Collector.MacAddress2 = @MacAddress) AND  Collector.Active = 1

	SELECT [PolicyId]
	  FROM [dbo].[AzureEventHubPoliciesMap] map
	  JOIN [dbo].Collector ON Collector.CustomerId = map.CustomerId AND Collector.SiteId = map.SiteId AND Collector.CollectorId = map.CollectorId
	 WHERE map.CustomerId = @CustomerId AND map.SiteId = @SiteId AND (Collector.MacAddress1 = @MacAddress or Collector.MacAddress2 = @MacAddress) AND  Collector.Active = 1
END

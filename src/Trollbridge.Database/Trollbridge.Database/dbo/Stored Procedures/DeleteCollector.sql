CREATE PROCEDURE [dbo].[DeleteCollector]
(
      @CustomerId int
    , @SiteId int
    , @CollectorId int
)
AS
BEGIN TRANSACTION
    DELETE FROM dbo.AzureBlobPoliciesMap WHERE CustomerId = @CustomerId AND SiteId = @SiteId AND CollectorId = @CollectorId
    DELETE FROM dbo.AzureQueuePoliciesMap WHERE CustomerId = @CustomerId AND SiteId = @SiteId AND CollectorId = @CollectorId
    DELETE FROM dbo.StorageInfoList WHERE CustomerId = @CustomerId AND SiteId = @SiteId AND CollectorId = @CollectorId
    DELETE FROM dbo.Collector WHERE CustomerId = @CustomerId AND SiteId = @SiteId AND CollectorId = @CollectorId
COMMIT TRANSACTION


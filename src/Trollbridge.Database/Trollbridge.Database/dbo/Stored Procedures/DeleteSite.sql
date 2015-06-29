CREATE PROCEDURE [dbo].[DeleteSite]
(
      @CustomerId int
    , @SiteId int
)
AS
SET NOCOUNT ON

BEGIN TRANSACTION
    DELETE FROM dbo.AzureBlobPoliciesMap WHERE CustomerId = @CustomerId AND SiteId = @SiteId
    DELETE FROM dbo.AzurePoliciesForBlobAccess WHERE CustomerId = @CustomerId AND SiteId = @SiteId
    DELETE FROM dbo.AzurePoliciesForQueueAccess WHERE CustomerId = @CustomerId AND SiteId = @SiteId
    DELETE FROM dbo.AzureQueuePoliciesMap WHERE CustomerId = @CustomerId AND SiteId = @SiteId
    DELETE FROM dbo.StorageInfoList WHERE CustomerId = @CustomerId AND SiteId = @SiteId
    DELETE FROM dbo.Collector WHERE CustomerId = @CustomerId AND SiteId = @SiteId
    DELETE FROM dbo.Sites WHERE CustomerId = @CustomerId AND SiteId = @SiteId
COMMIT TRANSACTION

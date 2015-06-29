CREATE PROCEDURE [dbo].[UpdateAzurePolicyForBlobAccess]
(
      @CustomerId int
    , @SiteId int
    , @PolicyId int
    , @PolicyIdentifier nvarchar(100)
    , @ContainerName nvarchar(100)
    , @AzureStorageConnectionStr nvarchar(200)
    , @Write bit
    , @Read bit
    , @Delete bit
    , @MinToExpire int
)
AS
BEGIN
    SET NOCOUNT ON

    IF EXISTS(SELECT 1 from dbo.[AzurePoliciesForBlobAccess] WHERE [CustomerId] = @CustomerId AND [SiteId] = @SiteId AND [PolicyId] = @PolicyId)
    BEGIN
        UPDATE [dbo].[AzurePoliciesForBlobAccess]
           SET [PolicyIdentifier] = @PolicyIdentifier
              ,[ContainerName] = @ContainerName
              ,[AzureStorageConnectionStr] = @AzureStorageConnectionStr
              ,[Write] = @Write
              ,[Read] = @Read
              ,[Delete] = @Delete
              ,[MinToExpire] = @MinToExpire
         WHERE [CustomerId] = @CustomerId AND [SiteId] = @SiteId AND [PolicyId] = @PolicyId
    END
END

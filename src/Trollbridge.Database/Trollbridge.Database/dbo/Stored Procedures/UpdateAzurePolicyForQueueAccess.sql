CREATE PROCEDURE [dbo].[UpdateAzurePolicyForQueueAccess]
(
      @CustomerId int
    , @SiteId int
    , @PolicyId int
    , @PolicyIdentifier nvarchar(100)
    , @QueueName nvarchar(100)
    , @AzureStorageConnectionStr nvarchar(200)
    , @Add bit
    , @Read bit
    , @Process bit
    , @Update bit
    , @MinToExpire int
)
AS
BEGIN
    SET NOCOUNT ON

    IF EXISTS(SELECT 1 from dbo.[AzurePoliciesForQueueAccess] WHERE [CustomerId] = @CustomerId AND [SiteId] = @SiteId AND [PolicyId] = @PolicyId)
    BEGIN
        UPDATE [dbo].[AzurePoliciesForQueueAccess]
           SET [PolicyIdentifier] = @PolicyIdentifier
              ,[QueueName] = @QueueName
              ,[AzureStorageConnectionStr] = @AzureStorageConnectionStr
              ,[Add] = @Add
              ,[Read] = @Read
              ,[Process] = @Process
              ,[Update] = @Update
              ,[MinToExpire] = @MinToExpire
         WHERE [CustomerId] = @CustomerId AND [SiteId] = @SiteId AND [PolicyId] = @PolicyId
    END
END

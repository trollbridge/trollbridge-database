CREATE PROCEDURE [dbo].[AddAzurePolicyForQueueAccess]
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

    IF NOT EXISTS(SELECT 1 from dbo.[AzurePoliciesForQueueAccess] WHERE [CustomerId] = @CustomerId AND [SiteId] = @SiteId AND [PolicyId] = @PolicyId)
    BEGIN
        INSERT INTO [dbo].[AzurePoliciesForQueueAccess]
                   ([CustomerId]
                   ,[SiteId]
                   ,[PolicyId]
                   ,[PolicyIdentifier]
                   ,[QueueName]
                   ,[AzureStorageConnectionStr]
                   ,[Add]
                   ,[Read]
                   ,[Process]
                   ,[Update]
                   ,[MinToExpire])
             VALUES
                   (@CustomerId
                   ,@SiteId
                   ,@PolicyId
                   ,@PolicyIdentifier
                   ,@QueueName
                   ,@AzureStorageConnectionStr
                   ,@Add
                   ,@Read
                   ,@Process
                   ,@Update
                   ,@MinToExpire)
    END
END

CREATE PROCEDURE [dbo].[AddAzurePolicyForBlobAccess]
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

    IF NOT EXISTS(SELECT 1 from dbo.[AzurePoliciesForBlobAccess] WHERE [CustomerId] = @CustomerId AND [SiteId] = @SiteId AND [PolicyId] = @PolicyId)
    BEGIN
        INSERT INTO [dbo].[AzurePoliciesForBlobAccess]
                   ([CustomerId]
                   ,[SiteId]
                   ,[PolicyId]
                   ,[PolicyIdentifier]
                   ,[ContainerName]
                   ,[AzureStorageConnectionStr]
                   ,[Write]
                   ,[Read]
                   ,[Delete]
                   ,[MinToExpire])
             VALUES
                   (@CustomerId
                   ,@SiteId
                   ,@PolicyId
                   ,@PolicyIdentifier
                   ,@ContainerName
                   ,@AzureStorageConnectionStr
                   ,@Write
                   ,@Read
                   ,@Delete
                   ,@MinToExpire)
    END
END

CREATE PROCEDURE [dbo].[DeleteCustomer]
(
    @CustomerId int
)
AS
BEGIN
    SET NOCOUNT ON

    BEGIN TRANSACTION
        DELETE FROM dbo.AzureBlobPoliciesMap WHERE CustomerId = @CustomerId
        DELETE FROM dbo.AzurePoliciesForBlobAccess WHERE CustomerId = @CustomerId
        DELETE FROM dbo.AzurePoliciesForQueueAccess WHERE CustomerId = @CustomerId
        DELETE FROM dbo.AzureQueuePoliciesMap WHERE CustomerId = @CustomerId
        DELETE FROM dbo.StorageInfoList WHERE CustomerId = @CustomerId
        DELETE FROM dbo.Collector WHERE CustomerId = @CustomerId
        DELETE FROM dbo.Sites WHERE CustomerId = @CustomerId
        DELETE FROM dbo.Customers WHERE CustomerId = @CustomerId
    COMMIT TRANSACTION
END

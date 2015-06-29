CREATE PROCEDURE [dbo].[GetCollectorPoliciesMap]
AS
BEGIN
    SET NOCOUNT ON

    SELECT [CustomerId], [SiteId], [CollectorId], [PolicyId] FROM [dbo].[AzureBlobPoliciesMap]
    SELECT [CustomerId], [SiteId], [CollectorId], [PolicyId] FROM [dbo].[AzureQueuePoliciesMap]
END

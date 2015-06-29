CREATE PROCEDURE [dbo].[GetPolicyInformation]
(
      @CustomerId int = null
    , @SiteId int = null
)AS
BEGIN
    SET NOCOUNT ON

    SELECT CustomerId, SiteId, PolicyId, ContainerName + ' (' + PolicyIdentifier + ')' FROM dbo.AzurePoliciesForBlobAccess WHERE CustomerId = ISNULL(@CustomerId, CustomerId) AND SiteId = ISNULL(@SiteId, SiteId) ORDER BY ContainerName
    SELECT CustomerId, SiteId, PolicyId, QueueName + ' (' + PolicyIdentifier + ')' FROM dbo.AzurePoliciesForQueueAccess WHERE CustomerId = ISNULL(@CustomerId, CustomerId) AND SiteId = ISNULL(@SiteId, SiteId) ORDER BY QueueName
END

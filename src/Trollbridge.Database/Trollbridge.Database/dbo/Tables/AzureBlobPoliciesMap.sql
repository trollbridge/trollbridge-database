CREATE TABLE [dbo].[AzureBlobPoliciesMap] (
    [CustomerId]  INT NOT NULL,
    [SiteId]      INT NOT NULL,
    [CollectorId] INT NOT NULL,
    [PolicyId]    INT NOT NULL,
    CONSTRAINT [PK_BlobPoliciesMap] PRIMARY KEY CLUSTERED ([CustomerId] ASC, [SiteId] ASC, [CollectorId] ASC, [PolicyId] ASC)
);


CREATE TABLE [dbo].[AzurePoliciesForBlobAccess] (
    [CustomerId]                INT            NOT NULL,
    [SiteId]                    INT            NOT NULL,
    [PolicyId]                  INT            NOT NULL,
    [PolicyIdentifier]          NVARCHAR (100) NOT NULL,
    [ContainerName]             NVARCHAR (100) NOT NULL,
    [AzureStorageConnectionStr] NVARCHAR (200) NOT NULL,
    [Write]                     BIT            NOT NULL,
    [Read]                      BIT            NOT NULL,
    [Delete]                    BIT            NOT NULL,
    [MinToExpire]               INT            NOT NULL,
    CONSTRAINT [PK_PoliciesForBlobAccess] PRIMARY KEY CLUSTERED ([CustomerId] ASC, [SiteId] ASC, [PolicyId] ASC)
);


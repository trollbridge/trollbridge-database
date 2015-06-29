CREATE TABLE [dbo].[AzurePoliciesForQueueAccess] (
    [CustomerId]                INT            NOT NULL,
    [SiteId]                    INT            NOT NULL,
    [PolicyId]                  INT            NOT NULL,
    [PolicyIdentifier]          NVARCHAR (100) NOT NULL,
    [QueueName]                 NVARCHAR (100) NOT NULL,
    [AzureStorageConnectionStr] NVARCHAR (200) NOT NULL,
    [Add]                       BIT            NOT NULL,
    [Read]                      BIT            NOT NULL,
    [Process]                   BIT            NOT NULL,
    [Update]                    BIT            NOT NULL,
    [MinToExpire]               INT            NULL,
    CONSTRAINT [PK_PoliciesForQueueAccess] PRIMARY KEY CLUSTERED ([CustomerId] ASC, [SiteId] ASC, [PolicyId] ASC)
);


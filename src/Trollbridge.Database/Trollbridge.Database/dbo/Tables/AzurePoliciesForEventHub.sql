CREATE TABLE [dbo].[AzurePoliciesForEventHub] (
    [CustomerId]            INT            NOT NULL,
    [SiteId]                INT            NOT NULL,
    [PolicyId]              INT            NOT NULL,
    [EventHubName]          NVARCHAR (100) NOT NULL,
    [PolicyIdentifier]      NVARCHAR (100) NOT NULL,
    [EventHubConnectionStr] NVARCHAR (200) NOT NULL,
    [Manage]                BIT            NOT NULL,
    [Send]                  BIT            NOT NULL,
    [Listen]                BIT            NOT NULL,
    [MinToExpire]           INT            NOT NULL,
    CONSTRAINT [PK_PoliciesForEventHubAccess] PRIMARY KEY CLUSTERED ([CustomerId] ASC, [SiteId] ASC, [PolicyId] ASC)
);


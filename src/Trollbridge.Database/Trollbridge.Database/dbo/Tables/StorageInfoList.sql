CREATE TABLE [dbo].[StorageInfoList] (
    [StorageInfoId]    INT            IDENTITY (1, 1) NOT NULL,
    [CustomerId]       INT            NOT NULL,
    [SiteId]           INT            NOT NULL,
    [CollectorId]      INT            NOT NULL,
    [TypeId]           INT            NOT NULL,
    [DestinationId]    INT            NOT NULL,
    [ConnectionString] NVARCHAR (256) NOT NULL,
    CONSTRAINT [PK_StorageInfoList] PRIMARY KEY CLUSTERED ([StorageInfoId] ASC)
);


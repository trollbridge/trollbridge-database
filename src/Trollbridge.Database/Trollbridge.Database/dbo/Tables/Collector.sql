CREATE TABLE [dbo].[Collector] (
    [CustomerId]          INT           NOT NULL,
    [SiteId]              INT           NOT NULL,
    [CollectorId]         INT           NOT NULL,
    [MinuteToLate]        INT           NOT NULL,
    [ResendAfterXMin]     INT           NOT NULL,
    [TimeNotified]        DATETIME2 (7) NULL,
    [Active]              BIT           NOT NULL,
    [MacAddress1]         NVARCHAR (50) CONSTRAINT [DF_Collector_MacAddress1] DEFAULT ('') NOT NULL,
    [MacAddress2]         NVARCHAR (50) CONSTRAINT [DF_Collector_MacAddress2] DEFAULT ('') NOT NULL,
    [LastUpdateTimestamp] DATETIME2 (7) NOT NULL,
    CONSTRAINT [PK_Collector] PRIMARY KEY CLUSTERED ([CustomerId] ASC, [SiteId] ASC, [CollectorId] ASC)
);


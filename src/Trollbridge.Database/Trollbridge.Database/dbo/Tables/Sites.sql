CREATE TABLE [dbo].[Sites] (
    [CustomerId] INT            NOT NULL,
    [SiteId]     INT            NOT NULL,
    [SiteName]   NVARCHAR (100) NOT NULL,
    [Address1]   NVARCHAR (50)  CONSTRAINT [DF_Sites_Address1] DEFAULT ('') NOT NULL,
    [Address2]   NVARCHAR (50)  CONSTRAINT [DF_Sites_Address2] DEFAULT ('') NOT NULL,
    [City]       NVARCHAR (50)  CONSTRAINT [DF_Sites_City] DEFAULT ('') NOT NULL,
    [State]      NVARCHAR (50)  CONSTRAINT [DF_Sites_State] DEFAULT ('') NOT NULL,
    [ZipCode]    NVARCHAR (10)  CONSTRAINT [DF_Sites_ZipCode] DEFAULT ('') NOT NULL,
    [Country]    NVARCHAR (50)  CONSTRAINT [DF_Sites_Country] DEFAULT ('') NOT NULL,
    CONSTRAINT [PK_Sites] PRIMARY KEY CLUSTERED ([CustomerId] ASC, [SiteId] ASC)
);


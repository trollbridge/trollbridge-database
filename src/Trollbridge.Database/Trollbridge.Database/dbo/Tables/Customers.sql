CREATE TABLE [dbo].[Customers] (
    [CustomerId]  INT           NOT NULL,
    [CompanyName] NVARCHAR (50) NOT NULL,
    [Address1]    NVARCHAR (50) CONSTRAINT [DF_Customers_Address1] DEFAULT ('') NOT NULL,
    [Address2]    NVARCHAR (50) CONSTRAINT [DF_Customers_Address2] DEFAULT ('') NOT NULL,
    [City]        NVARCHAR (50) CONSTRAINT [DF_Customers_City] DEFAULT ('') NOT NULL,
    [State]       NVARCHAR (50) CONSTRAINT [DF_Customers_State] DEFAULT ('') NOT NULL,
    [ZipCode]     NVARCHAR (10) CONSTRAINT [DF_Customers_ZipCode] DEFAULT ('') NOT NULL,
    [Country]     NVARCHAR (50) CONSTRAINT [DF_Customers_Country] DEFAULT ('') NOT NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CustomerId] ASC)
);


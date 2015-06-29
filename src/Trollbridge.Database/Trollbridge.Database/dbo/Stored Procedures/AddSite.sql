CREATE PROCEDURE [dbo].[AddSite]
(
      @CustomerId int
    , @SiteId int
    , @SiteName nvarchar(100) = ''
    , @Address1 nvarchar (50) = ''
    , @Address2 nvarchar (50) = ''
    , @City nvarchar (50) = ''
    , @State nvarchar (50) = ''
    , @ZipCode nvarchar (10) = ''
    , @Country nvarchar (50) = ''
)
AS
    SET NOCOUNT ON
    
    IF NOT EXISTS(SELECT 1 from dbo.[Sites] WHERE CustomerId = @CustomerId AND SiteId = @SiteId)
    BEGIN
        INSERT INTO dbo.[Sites] ([CustomerId], [SiteId], [SiteName], [Address1], [Address2], [City], [State], [ZipCode], [Country])
          VALUES
          (   @CustomerId
            , @SiteId
            , @SiteName
            , @Address1
            , @Address2
            , @City
            , @State
            , @ZipCode
            , @Country )
    END

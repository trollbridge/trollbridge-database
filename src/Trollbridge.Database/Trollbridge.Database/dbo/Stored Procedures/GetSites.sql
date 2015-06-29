CREATE PROCEDURE [dbo].[GetSites]
(
      @CustomerId int = null
    , @SiteId int = null
)
AS
BEGIN
    SET NOCOUNT ON

    SELECT [CustomerId], [SiteId], [SiteName], [Address1], [Address2], [City], [State], [ZipCode], [Country]
      FROM [dbo].[Sites]
     WHERE [CustomerId] = ISNULL(@CustomerId, [CustomerId]) AND [SiteId] = ISNULL(@SiteId, [SiteId])
     ORDER BY [SiteName]
END

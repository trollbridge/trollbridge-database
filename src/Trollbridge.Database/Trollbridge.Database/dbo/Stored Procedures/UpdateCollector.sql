CREATE PROCEDURE [dbo].[UpdateCollector]
(
      @CustomerId int
    , @SiteId int
    , @CollectorId int
    , @MinuteToLate int
    , @ResendAfterXMin int
    , @Active bit
    , @MacAddress1 nvarchar(50)
    , @MacAddress2 nvarchar(50)
)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM dbo.Collector WHERE CustomerId = @CustomerId AND SiteId = @SiteId AND CollectorId = @CollectorId)
    BEGIN
        UPDATE [dbo].[Collector]
           SET [MinuteToLate] = @MinuteToLate
              ,[ResendAfterXMin] = @ResendAfterXMin
              ,[Active] = @Active
              ,[MacAddress1] = @MacAddress1
              ,[MacAddress2] = @MacAddress2
         WHERE CustomerId = @CustomerId AND SiteId = @SiteId AND CollectorId = @CollectorId
    END
END

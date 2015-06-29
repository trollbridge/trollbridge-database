CREATE PROCEDURE [dbo].[GetCollectors]
(
      @CustomerId int = null
    , @SiteId int = null
    , @CollectorId int = null
)
AS
BEGIN
    SET NOCOUNT ON

    SELECT   CustomerId
           , SiteId
           , CollectorId
           , MinuteToLate
           , ResendAfterXMin
           , TimeNotified
           , Active
           , MacAddress1
           , MacAddress2
           , LastUpdateTimestamp
      FROM [dbo].[Collector]
     WHERE CustomerId = ISNULL(@CustomerId, CustomerId) AND SiteId = ISNULL(@SiteId, SiteId) AND CollectorId = ISNULL(@CollectorId, CollectorId)
     ORDER BY CustomerId, SiteId, CollectorId
END

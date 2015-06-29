CREATE PROCEDURE [dbo].[AddCollector]
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
INSERT INTO [dbo].[Collector]
           ( [CustomerId]
           , [SiteId]
           , [CollectorId]
           , [MinuteToLate]
           , [ResendAfterXMin]
           , [TimeNotified]
           , [Active]
           , [MacAddress1]
           , [MacAddress2]
           , [LastUpdateTimestamp]
		   )
     VALUES
           ( @CustomerId
           , @SiteId
           , @CollectorId
           , @MinuteToLate
           , @ResendAfterXMin
           , NULL
           , @Active
           , @MacAddress1
           , @MacAddress2
           , GETDATE()
		   )
END

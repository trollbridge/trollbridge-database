CREATE PROCEDURE [dbo].[AddStorageInfoList]
(
      @CustomerId int
    , @SiteId int
    , @CollectorId int
    , @TypeId int
    , @DestinationId int
    , @ConnectionString nvarchar(256)
)
AS
    SET NOCOUNT ON
    INSERT INTO [dbo].[StorageInfoList]
            ( [CustomerId]
            , [SiteId]
            , [CollectorId]
            , [TypeId]
            , [DestinationId]
            , [ConnectionString])
        VALUES
            ( @CustomerId
            , @SiteId
            , @CollectorId
            , @TypeId
            , @DestinationId
            , @ConnectionString)
    SELECT @@IDENTITY

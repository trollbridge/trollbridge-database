CREATE PROCEDURE [dbo].[UpdateStorageInfoList]
(
      @StorageInfoId int
    , @DestinationId int
    , @ConnectionString nvarchar(256)
)
AS
    SET NOCOUNT ON

    UPDATE [dbo].[StorageInfoList]
       SET [DestinationId] = @DestinationId
         , [ConnectionString] = @ConnectionString
     WHERE StorageInfoId = @StorageInfoId

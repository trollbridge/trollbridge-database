CREATE PROCEDURE [dbo].[DeleteStorageInfoList]
(
     @StorageInfoId int
)
AS
    SET NOCOUNT ON

    DELETE FROM [dbo].[StorageInfoList]
          WHERE StorageInfoId = @StorageInfoId

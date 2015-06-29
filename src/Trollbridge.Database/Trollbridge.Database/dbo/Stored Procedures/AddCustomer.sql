CREATE PROCEDURE [dbo].[AddCustomer]
(
      @CustomerId int
    , @CompanyName nvarchar(50) = ''
    , @Address1 nvarchar(50) = ''
    , @Address2 nvarchar (50) = ''
    , @City nvarchar (50) = ''
    , @State nvarchar (50) = ''
    , @ZipCode nvarchar (10) = ''
    , @Country nvarchar (50) = ''
)
AS
    SET NOCOUNT ON
    
    IF NOT EXISTS(SELECT 1 from dbo.[Customers] WHERE [CustomerId] = @CustomerId)
    BEGIN
        INSERT INTO dbo.[Customers] (CustomerId, CompanyName, [Address1], [Address2], [City], [State], [ZipCode], [Country])
          VALUES
          (   @CustomerId
            , @CompanyName
            , @Address1
            , @Address2 
            , @City
            , @State
            , @ZipCode
            , @Country)
    END


CREATE PROCEDURE [dbo].[UpdateCustomer]
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
    
    IF EXISTS(SELECT 1 from dbo.[Customers] WHERE [CustomerId] = @CustomerId)
    BEGIN
        UPDATE dbo.[Customers]
           SET [CompanyName] = @CompanyName 
             , [Address1] = @Address1 
             , [Address2] = @Address2
             , [City] = @City
             , [State] = @State
             , [ZipCode] = @ZipCode
             , [Country] = @Country
        WHERE [CustomerId] = @CustomerId
    END

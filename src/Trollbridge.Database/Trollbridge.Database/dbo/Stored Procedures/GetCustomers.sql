CREATE PROCEDURE [dbo].[GetCustomers]
(
    @CustomerId int = null
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT   [CustomerId]
	       , [CompanyName]
	       , [Address1]
		   , [Address2]
		   , [City]
		   , [State]
		   , [ZipCode]
		   , [Country]
      FROM [dbo].[Customers]
     WHERE CustomerId = ISNULL(@CustomerId, CustomerId)
    ORDER BY CompanyName
END

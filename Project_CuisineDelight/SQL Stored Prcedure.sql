CREATE PROCEDURE [dbo].[AddingItemtoPackages]
		@Package_ID INT,
		@Item_ID INT,
		@Quantity int,
		@Item_Name NVARCHAR (150)
AS
	insert into PackageItems(Package_ID,Item_ID,Quantity,Item_Name) VALUES(@Package_ID,@Item_ID,@Quantity,@Item_Name)

RETURN

----------------------------------------------

CREATE PROCEDURE [dbo].[AddingPackages]
		@userId  uniqueidentifier,
		@Package_Name NVARCHAR (50),
		@Package_Desc NVARCHAR (500),
		@Package_Discount int,
		@Package_Image   NVARCHAR (100)
AS
	insert into Packages(UserId,Package_Name,Package_Desc,Package_Discount,Package_Image) VALUES(@userId,@Package_Name,@Package_Desc,@Package_Discount,@Package_Image  )

RETURN
--------------------------------------------
CREATE PROCEDURE [dbo].[AddItem]
		@userId  uniqueidentifier,
		@Item_Name  NVARCHAR (150),
		@Item_Desc NVARCHAR (150),
		@Item_Price int,
		@Item_Image  NVARCHAR (150),
		@Item_Type NVARCHAR (50)
AS
	insert into Items(UserId,Item_Name,Item_Desc, Item_Price, Item_Image, Item_Type) VALUES(@userId,@Item_Name  ,@Item_Desc,@Item_Price,@Item_Image,@Item_Type)
RETURN
---------------------------------------------

CREATE PROCEDURE [dbo].[DeleteItem]
 @Item_ID int
AS
    DELETE FROM PackageItems WHERE  Item_ID=@Item_ID;
	DELETE FROM Items WHERE Item_ID=@Item_ID;
RETURN 0

-------------------------------

CREATE PROCEDURE [dbo].[DeletePackage]
 @Package_ID int
AS
    DELETE FROM PackageItems WHERE Package_ID=@Package_ID;
	DELETE FROM Packages WHERE Package_ID=@Package_ID;
RETURN 0

----------------------------------


CREATE PROCEDURE [dbo].[EditItem]
		@Item_ID  int,
		@Item_Name  NVARCHAR (150),
		@Item_Desc NVARCHAR (150),
		@Item_Price int,
		@Item_Image  NVARCHAR (150),
		@Item_Type  NVARCHAR (50)
AS
	UPDATE Items SET Item_Name=@Item_Name,Item_Desc=@Item_Desc,Item_Price=@Item_Price, Item_Image=@Item_Image, Item_Type =@Item_Type  WHERE Item_ID=@Item_ID
RETURN

------------------------------

CREATE PROCEDURE [dbo].[EditPackage]
		 @Package_ID      INT  ,
		 @Package_Name    NVARCHAR (50),
		 @Package_Desc    NVARCHAR (500),
		 @Package_Discount INT,
		 @Package_Image  NVARCHAR (100)
AS
	UPDATE Packages SET Package_Name=@Package_Name, Package_Desc  = @Package_Desc,Package_Discount=@Package_Discount, Package_Image = @Package_Image  WHERE  Package_ID = @Package_ID
RETURN
--------------------------------

CREATE PROCEDURE [dbo].[EditUserInfo]
		@userId  uniqueidentifier,
		@firstname varchar(50),
		@Lastname varchar(50),
		@Mobileno varchar(50)
AS
	UPDATE UserDetails SET FirstName=@firstname,LastName=@Lastname,MobileNumber=@Mobileno WHERE UserId=@userId
RETURN
-------------------------------------

CREATE PROCEDURE [dbo].[NEW_USER]
      @userId uniqueidentifier,
      @firstname varchar(50),
      @Lastname varchar(50),
      @UserType varchar(50),
      @Mobileno varchar(50)
AS
   insert into UserDetails(FirstName,UserId,LastName,UserType,MobileNumber) VALUES(@firstname,@userId,@Lastname,@UserType,@Mobileno )
RETURN
----------------------------------
-------------------------------------
CREATE PROCEDURE [dbo].[NEW_USER_AS_Caterer]
      @userId uniqueidentifier,
      @description  NVARCHAR (150),
      @UserType varchar(50),
      @Mobileno varchar(50)
AS
   insert into UserDetails(UserId,UserType,MobileNumber) VALUES(@userId,@UserType,@Mobileno )
   insert into CatererDetails(UserId,Description) values (@userId, @description)
RETURN
------------------------------------------------------------
CREATE PROCEDURE [dbo].[UpdateItemtoPackages]
		@Package_ID INT,
		@Item_ID INT,
		@Quantity int,
		@Item_Name NVARCHAR (150)
AS
	update PackageItems set Quantity=@Quantity where Package_ID= @Package_ID and Item_ID=@Item_ID

RETURN
------------------------------------------
CREATE PROCEDURE [dbo].[UpdatePrice]
	@Package_ID INT,
	@Package_Price  NCHAR (10)
AS

Update Packages  set Package_Price= @Package_Price where Package_ID = @Package_ID
RETURN 0

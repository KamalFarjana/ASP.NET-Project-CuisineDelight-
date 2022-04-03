#This is for the new user

CREATE PROCEDURE [dbo].[NEW_USER]
      @userId uniqueidentifier,
      @firstname varchar(50),
      @Lastname varchar(50),
      @UserType varchar(50),
      @Mobileno varchar(50)
AS
   insert into UserDetails(FirstName,UserId,LastName,UserType,MobileNumber) VALUES(@firstname,@userId,@Lastname,@UserType,@Mobileno )
RETURN

#This is for edit the user information 
CREATE PROCEDURE [dbo].[EditUserInfo]
		@userId  uniqueidentifier,
		@firstname varchar(50),
		@Lastname varchar(50),
		@Mobileno varchar(50)
AS
	UPDATE UserDetails SET FirstName=@firstname,LastName=@Lastname,MobileNumber=@Mobileno WHERE UserId=@userId
RETURN

#this is for adding new item by caterer
CREATE PROCEDURE [dbo].[AddItem]
		@userId  uniqueidentifier,
		@Item_Name  NVARCHAR (150),
		@Item_Desc NVARCHAR (150),
		@Item_Price int,
		@Item_Image  NVARCHAR (150)
AS
	insert into Items(UserId,Item_Name,Item_Desc, Item_Price, Item_Image) VALUES(@userId,@Item_Name  ,@Item_Desc,@Item_Price,@Item_Image)
RETURN
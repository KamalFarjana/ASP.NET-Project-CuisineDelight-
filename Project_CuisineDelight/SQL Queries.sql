CREATE TABLE [dbo].[UserDetails] (
    [Id]        INT              IDENTITY (1, 1) NOT NULL,
    [FirstName] VARCHAR (50)     NOT NULL,
    [LastName]  NVARCHAR (50)    NOT NULL,
    [UserId]    UNIQUEIDENTIFIER NOT NULL,
    [UserType]  NVARCHAR (50)    NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE PROCEDURE [dbo].[NEW_USER]
		@userId  uniqueidentifier,
		@firstname varchar(50),
		@Lastname varchar(50),
		@UserType varchar(50)
AS
	insert into UserDetails(FirstName, UserId,LastName,UserType) VALUES(@firstname,@userId,@Lastname,@UserType )
RETURN

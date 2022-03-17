CREATE TABLE [dbo].[UserDetials] (
    [Id]        INT              IDENTITY (1, 1) NOT NULL,
    [FirstName] VARCHAR (50)     NOT NULL,
    [UserId]    UNIQUEIDENTIFIER NOT NULL,
    [LastName] NVARCHAR(50) NOT NULL, 
    [UserType] NVARCHAR(50) NOT NULL, 
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


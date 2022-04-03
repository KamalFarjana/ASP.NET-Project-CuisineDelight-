CREATE TABLE [dbo].[UserDetails] (
    [Id]           INT              IDENTITY (1, 1) NOT NULL,
    [FirstName]    VARCHAR (50)      NULL,
    [LastName]     NVARCHAR (50)     NULL,
    [UserId]       UNIQUEIDENTIFIER NOT NULL,
    [UserType]     NVARCHAR (50)    NOT NULL,
    [MobileNumber] NVARCHAR (50)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

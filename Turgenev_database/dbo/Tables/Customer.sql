CREATE TABLE [dbo].[Customer] (
    [CustomerID]   INT          NOT NULL,
    [CustomerName] VARCHAR (50) NULL,
    [Phone]        BIGINT       NULL,
    [Address]      VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);


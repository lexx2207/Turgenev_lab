CREATE TABLE [dbo].[Product] (
    [ProductID]   INT          NOT NULL,
    [ProductName] VARCHAR (50) NULL,
    [CategoryID]  INT          NULL,
    PRIMARY KEY CLUSTERED ([ProductID] ASC),
    CONSTRAINT [FK_Product_Category] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Category] ([CategoryID])
);


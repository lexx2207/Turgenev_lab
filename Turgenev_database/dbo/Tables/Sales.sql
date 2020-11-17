CREATE TABLE [dbo].[Sales] (
    [SaleID]     INT   NOT NULL,
    [TimeID]     INT   NOT NULL,
    [CustomerID] INT   NOT NULL,
    [ProductID]  INT   NOT NULL,
    [EmployeeID] INT   NOT NULL,
    [CarrierID]  INT   NOT NULL,
    [Price]      MONEY NULL,
    [Quantity]   INT   NULL,
    PRIMARY KEY CLUSTERED ([SaleID] ASC, [TimeID] ASC, [CustomerID] ASC, [ProductID] ASC, [EmployeeID] ASC, [CarrierID] ASC),
    CONSTRAINT [FK_Sales_Carrier] FOREIGN KEY ([CarrierID]) REFERENCES [dbo].[Carrier] ([CarrierId]),
    CONSTRAINT [FK_Sales_Customer] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID]),
    CONSTRAINT [FK_Sales_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID]),
    CONSTRAINT [FK_Sales_Product] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID]),
    CONSTRAINT [FK_Sales_Time] FOREIGN KEY ([TimeID]) REFERENCES [dbo].[Time] ([TimeID])
);


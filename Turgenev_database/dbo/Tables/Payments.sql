CREATE TABLE [dbo].[Payments] (
    [PaymentID]  INT   NOT NULL,
    [EmployeeID] INT   NULL,
    [Salary]     MONEY NULL,
    [TimeID]     INT   NULL,
    PRIMARY KEY CLUSTERED ([PaymentID] ASC),
    CONSTRAINT [FK_Payments_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID]),
    CONSTRAINT [FK_Payments_Time] FOREIGN KEY ([TimeID]) REFERENCES [dbo].[Time] ([TimeID])
);


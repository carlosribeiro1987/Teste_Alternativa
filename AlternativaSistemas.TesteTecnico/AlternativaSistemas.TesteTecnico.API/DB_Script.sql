IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Categorias] (
    [Id] int NOT NULL IDENTITY,
    [name] nvarchar(50) NOT NULL,
    [description] nvarchar(1024) NOT NULL,
    CONSTRAINT [PK_Categorias] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Produtos] (
    [Id] int NOT NULL IDENTITY,
    [name] nvarchar(50) NOT NULL,
    [description] nvarchar(1024) NOT NULL,
    [value] decimal(10,2) NOT NULL,
    [brand] nvarchar(50) NOT NULL,
    [category_id] int NOT NULL,
    CONSTRAINT [PK_Produtos] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Produtos_Categorias_category_id] FOREIGN KEY ([category_id]) REFERENCES [Categorias] ([Id]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_Produtos_category_id] ON [Produtos] ([category_id]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220307202751_Inicial', N'5.0.14');
GO

COMMIT;
GO


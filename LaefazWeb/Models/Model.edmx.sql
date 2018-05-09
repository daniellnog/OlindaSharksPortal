
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/01/2018 11:59:08
-- Generated from EDMX file: C:\Users\brucilin.de.gouveia\Documents\Visual Studio 2015\Workspace\Portal\LaefazWeb\Models\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TDM.Db];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Ambiente_TipoAmbiente]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Ambiente] DROP CONSTRAINT [FK_Ambiente_TipoAmbiente];
GO
IF OBJECT_ID(N'[dbo].[FK_AmbienteUsuario_StatusExecucao]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AmbienteUsuario] DROP CONSTRAINT [FK_AmbienteUsuario_StatusExecucao];
GO
IF OBJECT_ID(N'[dbo].[FK_DataPool_Aut]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DataPool] DROP CONSTRAINT [FK_DataPool_Aut];
GO
IF OBJECT_ID(N'[dbo].[FK_DataPool_Demanda]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DataPool] DROP CONSTRAINT [FK_DataPool_Demanda];
GO
IF OBJECT_ID(N'[dbo].[FK_DataPool_TDM]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DataPool] DROP CONSTRAINT [FK_DataPool_TDM];
GO
IF OBJECT_ID(N'[dbo].[FK_Execucao_TipoFaseTeste]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Execucao] DROP CONSTRAINT [FK_Execucao_TipoFaseTeste];
GO
IF OBJECT_ID(N'[dbo].[FK_ParametroScript_Parametro]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ParametroScript] DROP CONSTRAINT [FK_ParametroScript_Parametro];
GO
IF OBJECT_ID(N'[dbo].[FK_ParametroScript_Script]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ParametroScript] DROP CONSTRAINT [FK_ParametroScript_Script];
GO
IF OBJECT_ID(N'[dbo].[FK_ParametroScript_TipoParametro]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ParametroScript] DROP CONSTRAINT [FK_ParametroScript_TipoParametro];
GO
IF OBJECT_ID(N'[dbo].[FK_ParametroValor_ParametroScript]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ParametroValor] DROP CONSTRAINT [FK_ParametroValor_ParametroScript];
GO
IF OBJECT_ID(N'[dbo].[FK_ParametroValor_TestData]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ParametroValor] DROP CONSTRAINT [FK_ParametroValor_TestData];
GO
IF OBJECT_ID(N'[dbo].[FK_Script_CondicaoScript]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Script] DROP CONSTRAINT [FK_Script_CondicaoScript];
GO
IF OBJECT_ID(N'[dbo].[FK_Script_ScriptPai]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Script] DROP CONSTRAINT [FK_Script_ScriptPai];
GO
IF OBJECT_ID(N'[dbo].[FK_TDM_Usuario_TDM]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TDM_Usuario] DROP CONSTRAINT [FK_TDM_Usuario_TDM];
GO
IF OBJECT_ID(N'[dbo].[FK_TDM_Usuario_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TDM_Usuario] DROP CONSTRAINT [FK_TDM_Usuario_Usuario];
GO
IF OBJECT_ID(N'[dbo].[FK_TestData_AmbienteExecucao]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TestData] DROP CONSTRAINT [FK_TestData_AmbienteExecucao];
GO
IF OBJECT_ID(N'[dbo].[FK_TestData_AmbienteVirtual]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TestData] DROP CONSTRAINT [FK_TestData_AmbienteVirtual];
GO
IF OBJECT_ID(N'[dbo].[FK_TestData_DataPool]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TestData] DROP CONSTRAINT [FK_TestData_DataPool];
GO
IF OBJECT_ID(N'[dbo].[FK_TestData_Execucao]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TestData] DROP CONSTRAINT [FK_TestData_Execucao];
GO
IF OBJECT_ID(N'[dbo].[FK_TestData_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TestData] DROP CONSTRAINT [FK_TestData_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_TestData_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TestData] DROP CONSTRAINT [FK_TestData_Usuario];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[__RefactorLog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[__RefactorLog];
GO
IF OBJECT_ID(N'[dbo].[Ambiente]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Ambiente];
GO
IF OBJECT_ID(N'[dbo].[AmbienteUsuario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AmbienteUsuario];
GO
IF OBJECT_ID(N'[dbo].[AUT]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AUT];
GO
IF OBJECT_ID(N'[dbo].[CondicaoScript]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CondicaoScript];
GO
IF OBJECT_ID(N'[dbo].[Controle_Ambiente]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Controle_Ambiente];
GO
IF OBJECT_ID(N'[dbo].[DataPool]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DataPool];
GO
IF OBJECT_ID(N'[dbo].[Demanda]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Demanda];
GO
IF OBJECT_ID(N'[dbo].[Execucao]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Execucao];
GO
IF OBJECT_ID(N'[dbo].[Parametro]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Parametro];
GO
IF OBJECT_ID(N'[dbo].[ParametroScript]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ParametroScript];
GO
IF OBJECT_ID(N'[dbo].[ParametroValor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ParametroValor];
GO
IF OBJECT_ID(N'[dbo].[Pessoas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pessoas];
GO
IF OBJECT_ID(N'[dbo].[Script]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Script];
GO
IF OBJECT_ID(N'[dbo].[Status]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Status];
GO
IF OBJECT_ID(N'[dbo].[TDM]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TDM];
GO
IF OBJECT_ID(N'[dbo].[TDM_Usuario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TDM_Usuario];
GO
IF OBJECT_ID(N'[dbo].[TestData]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestData];
GO
IF OBJECT_ID(N'[dbo].[TipoAmbiente]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoAmbiente];
GO
IF OBJECT_ID(N'[dbo].[TipoFaseTeste]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoFaseTeste];
GO
IF OBJECT_ID(N'[dbo].[TipoParametro]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoParametro];
GO
IF OBJECT_ID(N'[dbo].[Usuario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuario];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'C__RefactorLog'
CREATE TABLE [dbo].[C__RefactorLog] (
    [OperationKey] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'Ambiente'
CREATE TABLE [dbo].[Ambiente] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IdTipoAmbiente] int  NOT NULL,
    [Descricao] varchar(50)  NOT NULL,
    [IP] varchar(50)  NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'AmbienteUsuario'
CREATE TABLE [dbo].[AmbienteUsuario] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IdUsuario] int  NOT NULL,
    [IdAmbiente] int  NOT NULL,
    [IdStatusExecucao] int  NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'AUT'
CREATE TABLE [dbo].[AUT] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] varchar(50)  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'CondicaoScript'
CREATE TABLE [dbo].[CondicaoScript] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] varchar(50)  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'Controle_Ambiente'
CREATE TABLE [dbo].[Controle_Ambiente] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] varchar(50)  NULL,
    [Script] varchar(50)  NULL,
    [Usuario] varchar(50)  NULL,
    [Situacao] int  NULL
);
GO

-- Creating table 'DataPool'
CREATE TABLE [dbo].[DataPool] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IdTDM] int  NULL,
    [IdAut] int  NULL,
    [IdDemanda] int  NULL,
    [Descricao] varchar(50)  NOT NULL,
    [QtdSolicitada] int  NULL,
    [QtdDisponivel] int  NULL,
    [QtdReservada] int  NULL,
    [QtdUtilizada] int  NULL,
    [Observacao] varchar(5000)  NULL,
    [DataInicioExecucao] datetime  NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'Demanda'
CREATE TABLE [dbo].[Demanda] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] varchar(50)  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'Execucao'
CREATE TABLE [dbo].[Execucao] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IdTipoFaseTeste] int  NOT NULL,
    [Descricao] varchar(50)  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'Parametro'
CREATE TABLE [dbo].[Parametro] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] varchar(50)  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'ParametroScript'
CREATE TABLE [dbo].[ParametroScript] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IdParametro] int  NOT NULL,
    [IdScript] int  NOT NULL,
    [IdTipoParametro] int  NOT NULL,
    [Descricao] varchar(50)  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'ParametroValor'
CREATE TABLE [dbo].[ParametroValor] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IdTestData] int  NOT NULL,
    [IdParametroScript] int  NOT NULL,
    [Valor] varchar(50)  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'Pessoas'
CREATE TABLE [dbo].[Pessoas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nome] varchar(80)  NOT NULL,
    [idade] int  NULL,
    [endereco] varchar(80)  NULL,
    [DataCriacao] datetime  NULL,
    [UltimaAtualizacao] datetime  NULL
);
GO

-- Creating table 'Script'
CREATE TABLE [dbo].[Script] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IdScriptPai] int  NULL,
    [IdCondicaoScript] int  NULL,
    [Descricao] varchar(50)  NOT NULL,
    [Arquivo] varchar(500)  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'Status'
CREATE TABLE [dbo].[Status] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] varchar(50)  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'TDM'
CREATE TABLE [dbo].[TDM] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] varchar(50)  NOT NULL,
    [TdmPublico] bit  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'TDM_Usuario'
CREATE TABLE [dbo].[TDM_Usuario] (
    [IdUsuario] int  NOT NULL,
    [IdTDM] int  NOT NULL,
    [Descricao] varchar(50)  NULL
);
GO

-- Creating table 'TestData'
CREATE TABLE [dbo].[TestData] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IdExecucao] int  NOT NULL,
    [IdDataPool] int  NOT NULL,
    [IdStatus] int  NOT NULL,
    [IdUsuario] int  NULL,
    [IdAmbienteExecucao] int  NULL,
    [IdAmbienteVirtual] int  NULL,
    [InicioExecucao] datetime  NULL,
    [TerminoExecucao] datetime  NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'TipoAmbiente'
CREATE TABLE [dbo].[TipoAmbiente] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] varchar(50)  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'TipoFaseTeste'
CREATE TABLE [dbo].[TipoFaseTeste] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] varchar(50)  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'TipoParametro'
CREATE TABLE [dbo].[TipoParametro] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] varchar(50)  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- Creating table 'Usuario'
CREATE TABLE [dbo].[Usuario] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Login] nvarchar(50)  NOT NULL,
    [Senha] nvarchar(32)  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimaAtualizacao] datetime  NOT NULL,
    [UsuarioCriacao] varchar(50)  NULL,
    [UsuarioAlteracao] varchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [OperationKey] in table 'C__RefactorLog'
ALTER TABLE [dbo].[C__RefactorLog]
ADD CONSTRAINT [PK_C__RefactorLog]
    PRIMARY KEY CLUSTERED ([OperationKey] ASC);
GO

-- Creating primary key on [Id] in table 'Ambiente'
ALTER TABLE [dbo].[Ambiente]
ADD CONSTRAINT [PK_Ambiente]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AmbienteUsuario'
ALTER TABLE [dbo].[AmbienteUsuario]
ADD CONSTRAINT [PK_AmbienteUsuario]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AUT'
ALTER TABLE [dbo].[AUT]
ADD CONSTRAINT [PK_AUT]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CondicaoScript'
ALTER TABLE [dbo].[CondicaoScript]
ADD CONSTRAINT [PK_CondicaoScript]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Controle_Ambiente'
ALTER TABLE [dbo].[Controle_Ambiente]
ADD CONSTRAINT [PK_Controle_Ambiente]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DataPool'
ALTER TABLE [dbo].[DataPool]
ADD CONSTRAINT [PK_DataPool]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Demanda'
ALTER TABLE [dbo].[Demanda]
ADD CONSTRAINT [PK_Demanda]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Execucao'
ALTER TABLE [dbo].[Execucao]
ADD CONSTRAINT [PK_Execucao]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Parametro'
ALTER TABLE [dbo].[Parametro]
ADD CONSTRAINT [PK_Parametro]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ParametroScript'
ALTER TABLE [dbo].[ParametroScript]
ADD CONSTRAINT [PK_ParametroScript]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ParametroValor'
ALTER TABLE [dbo].[ParametroValor]
ADD CONSTRAINT [PK_ParametroValor]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Pessoas'
ALTER TABLE [dbo].[Pessoas]
ADD CONSTRAINT [PK_Pessoas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Script'
ALTER TABLE [dbo].[Script]
ADD CONSTRAINT [PK_Script]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [PK_Status]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TDM'
ALTER TABLE [dbo].[TDM]
ADD CONSTRAINT [PK_TDM]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdUsuario], [IdTDM] in table 'TDM_Usuario'
ALTER TABLE [dbo].[TDM_Usuario]
ADD CONSTRAINT [PK_TDM_Usuario]
    PRIMARY KEY CLUSTERED ([IdUsuario], [IdTDM] ASC);
GO

-- Creating primary key on [Id] in table 'TestData'
ALTER TABLE [dbo].[TestData]
ADD CONSTRAINT [PK_TestData]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TipoAmbiente'
ALTER TABLE [dbo].[TipoAmbiente]
ADD CONSTRAINT [PK_TipoAmbiente]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TipoFaseTeste'
ALTER TABLE [dbo].[TipoFaseTeste]
ADD CONSTRAINT [PK_TipoFaseTeste]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TipoParametro'
ALTER TABLE [dbo].[TipoParametro]
ADD CONSTRAINT [PK_TipoParametro]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Usuario'
ALTER TABLE [dbo].[Usuario]
ADD CONSTRAINT [PK_Usuario]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [IdTipoAmbiente] in table 'Ambiente'
ALTER TABLE [dbo].[Ambiente]
ADD CONSTRAINT [FK_Ambiente_TipoAmbiente]
    FOREIGN KEY ([IdTipoAmbiente])
    REFERENCES [dbo].[TipoAmbiente]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Ambiente_TipoAmbiente'
CREATE INDEX [IX_FK_Ambiente_TipoAmbiente]
ON [dbo].[Ambiente]
    ([IdTipoAmbiente]);
GO

-- Creating foreign key on [IdAmbienteExecucao] in table 'TestData'
ALTER TABLE [dbo].[TestData]
ADD CONSTRAINT [FK_TestData_AmbienteExecucao]
    FOREIGN KEY ([IdAmbienteExecucao])
    REFERENCES [dbo].[Ambiente]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TestData_AmbienteExecucao'
CREATE INDEX [IX_FK_TestData_AmbienteExecucao]
ON [dbo].[TestData]
    ([IdAmbienteExecucao]);
GO

-- Creating foreign key on [IdAmbienteVirtual] in table 'TestData'
ALTER TABLE [dbo].[TestData]
ADD CONSTRAINT [FK_TestData_AmbienteVirtual]
    FOREIGN KEY ([IdAmbienteVirtual])
    REFERENCES [dbo].[Ambiente]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TestData_AmbienteVirtual'
CREATE INDEX [IX_FK_TestData_AmbienteVirtual]
ON [dbo].[TestData]
    ([IdAmbienteVirtual]);
GO

-- Creating foreign key on [IdStatusExecucao] in table 'AmbienteUsuario'
ALTER TABLE [dbo].[AmbienteUsuario]
ADD CONSTRAINT [FK_AmbienteUsuario_StatusExecucao]
    FOREIGN KEY ([IdStatusExecucao])
    REFERENCES [dbo].[Status]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AmbienteUsuario_StatusExecucao'
CREATE INDEX [IX_FK_AmbienteUsuario_StatusExecucao]
ON [dbo].[AmbienteUsuario]
    ([IdStatusExecucao]);
GO

-- Creating foreign key on [IdAut] in table 'DataPool'
ALTER TABLE [dbo].[DataPool]
ADD CONSTRAINT [FK_DataPool_Aut]
    FOREIGN KEY ([IdAut])
    REFERENCES [dbo].[AUT]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DataPool_Aut'
CREATE INDEX [IX_FK_DataPool_Aut]
ON [dbo].[DataPool]
    ([IdAut]);
GO

-- Creating foreign key on [IdCondicaoScript] in table 'Script'
ALTER TABLE [dbo].[Script]
ADD CONSTRAINT [FK_Script_CondicaoScript]
    FOREIGN KEY ([IdCondicaoScript])
    REFERENCES [dbo].[CondicaoScript]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Script_CondicaoScript'
CREATE INDEX [IX_FK_Script_CondicaoScript]
ON [dbo].[Script]
    ([IdCondicaoScript]);
GO

-- Creating foreign key on [IdDemanda] in table 'DataPool'
ALTER TABLE [dbo].[DataPool]
ADD CONSTRAINT [FK_DataPool_Demanda]
    FOREIGN KEY ([IdDemanda])
    REFERENCES [dbo].[Demanda]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DataPool_Demanda'
CREATE INDEX [IX_FK_DataPool_Demanda]
ON [dbo].[DataPool]
    ([IdDemanda]);
GO

-- Creating foreign key on [IdTDM] in table 'DataPool'
ALTER TABLE [dbo].[DataPool]
ADD CONSTRAINT [FK_DataPool_TDM]
    FOREIGN KEY ([IdTDM])
    REFERENCES [dbo].[TDM]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DataPool_TDM'
CREATE INDEX [IX_FK_DataPool_TDM]
ON [dbo].[DataPool]
    ([IdTDM]);
GO

-- Creating foreign key on [IdDataPool] in table 'TestData'
ALTER TABLE [dbo].[TestData]
ADD CONSTRAINT [FK_TestData_DataPool]
    FOREIGN KEY ([IdDataPool])
    REFERENCES [dbo].[DataPool]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TestData_DataPool'
CREATE INDEX [IX_FK_TestData_DataPool]
ON [dbo].[TestData]
    ([IdDataPool]);
GO

-- Creating foreign key on [IdTipoFaseTeste] in table 'Execucao'
ALTER TABLE [dbo].[Execucao]
ADD CONSTRAINT [FK_Execucao_TipoFaseTeste]
    FOREIGN KEY ([IdTipoFaseTeste])
    REFERENCES [dbo].[TipoFaseTeste]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Execucao_TipoFaseTeste'
CREATE INDEX [IX_FK_Execucao_TipoFaseTeste]
ON [dbo].[Execucao]
    ([IdTipoFaseTeste]);
GO

-- Creating foreign key on [IdExecucao] in table 'TestData'
ALTER TABLE [dbo].[TestData]
ADD CONSTRAINT [FK_TestData_Execucao]
    FOREIGN KEY ([IdExecucao])
    REFERENCES [dbo].[Execucao]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TestData_Execucao'
CREATE INDEX [IX_FK_TestData_Execucao]
ON [dbo].[TestData]
    ([IdExecucao]);
GO

-- Creating foreign key on [IdParametro] in table 'ParametroScript'
ALTER TABLE [dbo].[ParametroScript]
ADD CONSTRAINT [FK_ParametroScript_Parametro]
    FOREIGN KEY ([IdParametro])
    REFERENCES [dbo].[Parametro]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ParametroScript_Parametro'
CREATE INDEX [IX_FK_ParametroScript_Parametro]
ON [dbo].[ParametroScript]
    ([IdParametro]);
GO

-- Creating foreign key on [IdScript] in table 'ParametroScript'
ALTER TABLE [dbo].[ParametroScript]
ADD CONSTRAINT [FK_ParametroScript_Script]
    FOREIGN KEY ([IdScript])
    REFERENCES [dbo].[Script]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ParametroScript_Script'
CREATE INDEX [IX_FK_ParametroScript_Script]
ON [dbo].[ParametroScript]
    ([IdScript]);
GO

-- Creating foreign key on [IdTipoParametro] in table 'ParametroScript'
ALTER TABLE [dbo].[ParametroScript]
ADD CONSTRAINT [FK_ParametroScript_TipoParametro]
    FOREIGN KEY ([IdTipoParametro])
    REFERENCES [dbo].[TipoParametro]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ParametroScript_TipoParametro'
CREATE INDEX [IX_FK_ParametroScript_TipoParametro]
ON [dbo].[ParametroScript]
    ([IdTipoParametro]);
GO

-- Creating foreign key on [IdParametroScript] in table 'ParametroValor'
ALTER TABLE [dbo].[ParametroValor]
ADD CONSTRAINT [FK_ParametroValor_ParametroScript]
    FOREIGN KEY ([IdParametroScript])
    REFERENCES [dbo].[ParametroScript]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ParametroValor_ParametroScript'
CREATE INDEX [IX_FK_ParametroValor_ParametroScript]
ON [dbo].[ParametroValor]
    ([IdParametroScript]);
GO

-- Creating foreign key on [IdTestData] in table 'ParametroValor'
ALTER TABLE [dbo].[ParametroValor]
ADD CONSTRAINT [FK_ParametroValor_TestData]
    FOREIGN KEY ([IdTestData])
    REFERENCES [dbo].[TestData]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ParametroValor_TestData'
CREATE INDEX [IX_FK_ParametroValor_TestData]
ON [dbo].[ParametroValor]
    ([IdTestData]);
GO

-- Creating foreign key on [IdScriptPai] in table 'Script'
ALTER TABLE [dbo].[Script]
ADD CONSTRAINT [FK_Script_ScriptPai]
    FOREIGN KEY ([IdScriptPai])
    REFERENCES [dbo].[Script]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Script_ScriptPai'
CREATE INDEX [IX_FK_Script_ScriptPai]
ON [dbo].[Script]
    ([IdScriptPai]);
GO

-- Creating foreign key on [IdStatus] in table 'TestData'
ALTER TABLE [dbo].[TestData]
ADD CONSTRAINT [FK_TestData_Status]
    FOREIGN KEY ([IdStatus])
    REFERENCES [dbo].[Status]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TestData_Status'
CREATE INDEX [IX_FK_TestData_Status]
ON [dbo].[TestData]
    ([IdStatus]);
GO

-- Creating foreign key on [IdTDM] in table 'TDM_Usuario'
ALTER TABLE [dbo].[TDM_Usuario]
ADD CONSTRAINT [FK_TDM_Usuario_TDM]
    FOREIGN KEY ([IdTDM])
    REFERENCES [dbo].[TDM]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TDM_Usuario_TDM'
CREATE INDEX [IX_FK_TDM_Usuario_TDM]
ON [dbo].[TDM_Usuario]
    ([IdTDM]);
GO

-- Creating foreign key on [IdUsuario] in table 'TDM_Usuario'
ALTER TABLE [dbo].[TDM_Usuario]
ADD CONSTRAINT [FK_TDM_Usuario_Usuario]
    FOREIGN KEY ([IdUsuario])
    REFERENCES [dbo].[Usuario]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IdUsuario] in table 'TestData'
ALTER TABLE [dbo].[TestData]
ADD CONSTRAINT [FK_TestData_Usuario]
    FOREIGN KEY ([IdUsuario])
    REFERENCES [dbo].[Usuario]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TestData_Usuario'
CREATE INDEX [IX_FK_TestData_Usuario]
ON [dbo].[TestData]
    ([IdUsuario]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
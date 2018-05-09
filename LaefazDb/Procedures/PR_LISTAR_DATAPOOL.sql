--CREATE PROCEDURE PR_LISTAR_DATAPOOL
--	@DISPLAYLENGTH INT,
--	@DISPLAYSTART INT,
--	@SORTCOL INT,
--	@SORTDIR NVARCHAR(10),
--	@SEARCH NVARCHAR(255) = NULL,
--	@LISTARTODOS INT = 0,
--	@IDTDM NVARCHAR(255)
--AS
--BEGIN
--	DECLARE @FIRSTREC INT, @LASTREC INT
--	SET @FIRSTREC = @DISPLAYSTART;
--	SET @LASTREC = @DISPLAYSTART + @DISPLAYLENGTH;

--	With CTE_DataPool as
--	(
--		SELECT 
--			ROW_NUMBER() over 
--			(
--				order by 
--					case when (@SortCol = 0 and @SortDir='asc') then Demanda.Descricao end asc,
--					case when (@SortCol = 0 and @SortDir='desc') then Demanda.Descricao end desc,
					
--					case when (@SortCol = 1 and @SortDir='asc') then AUT.Descricao end asc,
--					case when (@SortCol = 1 and @SortDir='desc') then AUT.Descricao end desc,
					
--					--case when (@SortCol = 2 and @SortDir='asc') then TipoMassa end asc,
--					--case when (@SortCol = 2 and @SortDir='desc') then TipoMassa end desc,
					
--					case when (@SortCol = 3 and @SortDir='asc') then DataPool.QtdSolicitada end asc,
--					case when (@SortCol = 3 and @SortDir='desc') then DataPool.QtdSolicitada end desc,
					
--					case when (@SortCol = 4 and @SortDir='asc') then QtdDisponivel end asc,
--					case when (@SortCol = 4 and @SortDir='desc') then QtdDisponivel end desc,
					
--					case when (@SortCol = 5 and @SortDir='asc') then QtdReservada end asc,
--					case when (@SortCol = 5 and @SortDir='desc') then QtdReservada end desc,
					
--					case when (@SortCol = 6 and @SortDir='asc') then QtdUtilizada end asc,
--					case when (@SortCol = 6 and @SortDir='desc') then QtdUtilizada end desc,
					
--					--case when (@SortCol = 7 and @SortDir='asc') then Farol end asc,
--					--case when (@SortCol = 7 and @SortDir='desc') then Farol end desc,
					
--					case when (@SortCol = 8 and @SortDir='asc') then DataPool.Descricao end asc,
--					case when (@SortCol = 8 and @SortDir='desc') then DataPool.Descricao end desc
--			) as RowNum,

--			COUNT(*) over() as TotalCount,
--			DataPool.Id,
--			DataPool.Descricao DescricaoDataPool,
--			Demanda.Descricao DescricaoDemanda,
--			AUT.Descricao DescricaoSistema,
--			'Tipo' TipoMassa,
--			DataPool.QtdSolicitada,
--			(SELECT COUNT(TestData.IdStatus) FROM TestData WHERE TestData.IdDataPool = DataPool.Id AND TestData.IdStatus=4) QtdDisponivel,
--			(SELECT COUNT(TestData.IdStatus) FROM TestData WHERE TestData.IdDataPool = DataPool.Id AND TestData.IdStatus=3) QtdReservada,
--			(SELECT COUNT(TestData.IdStatus) FROM TestData WHERE TestData.IdDataPool = DataPool.Id AND TestData.IdStatus=2) QtdUtilizada,
--			'-' Farol
--		FROM 
--			DataPool
--			LEFT JOIN Demanda ON Demanda.Id = DataPool.IdDemanda
--			LEFT JOIN AUT ON AUT.Id = DataPool.IdAut
--		WHERE 
--		(
--			(DataPool.IdTDM = @IDTDM OR @IDTDM IS NULL) AND
--			(
--				@SEARCH IS NULL 
--				OR DataPool.Descricao like '%' + @Search + '%'
--				OR Demanda.Descricao like '%' + @Search + '%'
--				OR AUT.Descricao like '%' + @Search + '%'
--				OR DataPool.QtdSolicitada like '%' + @Search + '%'
--			)
--		)
--	)
	
--	Select * from CTE_DataPool where @ListarTodos = 1 OR (@ListarTodos  = 0 AND RowNum > @FirstRec and RowNum <= @LastRec)
--END
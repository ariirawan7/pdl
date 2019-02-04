SELECT distinct
Year		= coalesce(ABC.Year, D.Year)
, Month		= coalesce(ABC.Month, D.Month)
, TAD		= coalesce(ABC.TAD, D.TAD)
, RAD		= coalesce(ABC.RAD, D.RAD)
, ABDM		= coalesce(ABC.ABDM, D.ABDM)
, ABDD = coalesce(ABC.ABDD, D.ABDD) -- Add
, TADName	= coalesce(ABC.TADName, D.TADName)
, RADName	= coalesce(ABC.RADName, D.RADName)
, ABDMName	= coalesce(ABC.ABDMName, D.ABDMName)
, ABDDName  = coalesce(ABC.ABDDName, D.ABDDName) -- Add
, Branch	= coalesce(ABC.Branch, D.Branch)
, BranchCode= coalesce(ABC.BranchCode, D.BranchCode)

--1.APE
, APE = ISNULL(APE, 0)
, APEMulti = ISNULL(APEMulti, 0)
, APEMultiAll = ISNULL(APEMultiAll, 0)
, APEMaxi = ISNULL(APEMaxi, 0)
, APESy = ISNULL(APESy, 0)
, APESmart = ISNULL(APESmart, 0)
, APEKids = ISNULL(APEKids, 0)
, APEWhole = ISNULL(APEWhole, 0)
, APEUltima = ISNULL(APEUltima, 0)
, APEPremSy = ISNULL(APEPremSy, 0)
--2.Recruit
, Recruit = ISNULL(Recruit, 0)
--3.Active Agent
, AA = ISNULL(AA, 0)
--4.Productive Agent
, PA = ISNULL(PA, 0)
--5.Rookie Agent
, RA = ISNULL(RA, 0)
, ARA = ISNULL(ARA, 0)
--6.Case
, CaseAPE = ISNULL(CaseAPE, 0)
--9.Persistency
, P_Eval = ISNULL(P_Eval, 0)
, P_NB = ISNULL(P_NB, 0)
--10.Man Power
, FAManPower = ISNULL(FAManPower, 0)
, AMManPower = ISNULL(AMManPower, 0)
, SAMManPower = ISNULL(SAMManPower, 0)
, PAMManPower = ISNULL(PAMManPower, 0)
--11.Leader No Production
, AMNoProd = ISNULL(AMNoProd, 0)
, SAMNoProd = ISNULL(SAMNoProd, 0)
, PAMNoProd = ISNULL(PAMNoProd, 0)
--12.Financing Leader
, AMFinancing = ISNULL(AMFinancing, 0)
, SAMFinancing = ISNULL(SAMFinancing, 0)
, PAMFinancing = ISNULL(PAMFinancing, 0)
--13.Licesed Agent
, LicensedUL = ISNULL(LicensedUL, 0)
, LicensedSY = ISNULL(LicensedSY, 0)
--14.Office
, SO = ISNULL(SO, 0)
, APESO = ISNULL(APESO, 0)
, GA = ISNULL(GA, 0)
, APEGA = ISNULL(APEGA, 0)


FROM(	
	SELECT distinct
	Year		= coalesce(AB.Year, C.Year)
	, Month		= coalesce(AB.Month, C.Month)
	, TAD		= coalesce(AB.TAD, C.TAD)
	, RAD		= coalesce(AB.RAD, C.RAD)
	, ABDM		= coalesce(AB.ABDM, C.ABDM)
	, ABDD		= coalesce(AB.ABDD, C.ABDD) -- Add
	, TADName	= coalesce(AB.TADName, C.TADName)
	, RADName	= coalesce(AB.RADName, C.RADName)
	, ABDMName	= coalesce(AB.ABDMName, C.ABDMName)
	, ABDDName  = coalesce(AB.ABDDName, C.ABDDName) -- Add
	, Branch	= coalesce(AB.Branch, C.Branch)
	, BranchCode= coalesce(AB.BranchCode, C.BranchCode)

	--1.APE
	, APE
	, APEMulti
	, APEMultiAll
	, APEMaxi
	, APESy
	, APESmart
	, APEKids
	, APEWhole
	, APEUltima
	, APEPremSy
	--2.Recruit
	, Recruit
	--3.Active Agent
	, AA
	--4.Productive Agent
	, PA
	--5.Rookie Agent
	, RA
	, ARA
	--6.Case
	, CaseAPE
	--9.Persistency
	, P_Eval
	, P_NB
	--10.Man Power
	, FAManPower
	, AMManPower
	, SAMManPower
	, PAMManPower
	--11.Leader No Production
	, AMNoProd
	, SAMNoProd
	, PAMNoProd
	--12.Financing Leader
	--, AMFinancing
	--, SAMFinancing
	--, PAMFinancing
	--13.Licesed Agent
	, LicensedUL
	, LicensedSY
	--14.Office
	, SO
	, APESO
	, GA
	, APEGA

	FROM (
		SELECT distinct
		Year		= coalesce(A.Year, B.Year)
		, Month		= coalesce(A.Month, B.Month)
		, TAD		= coalesce(A.TAD, B.TAD)
		, RAD		= coalesce(A.RAD, B.RAD)
		, ABDM		= coalesce(A.ABDM, B.ABDM)
		, ABDD		= coalesce(A.ABDD, B.ABDD) -- add
		, TADName	= coalesce(A.TADName, B.TADName)
		, RADName	= coalesce(A.RADName, B.RADName)
		, ABDMName	= coalesce(A.ABDMName, B.ABDMName)
		, ABDDName = coalesce(A.ABDDName, B.ABDDName) -- add
		, Branch	= coalesce(A.Branch, B.Branch)
		, BranchCode= coalesce(A.BranchCode, B.BranchCode)

		--1.APE
		, APE
		, APEMulti
		, APEMultiAll
		, APEMaxi
		, APESy
		, APESmart
		, APEKids
		, APEWhole
		, APEUltima
		, APEPremSy
		--6.Case
		, CaseAPE
		--9.Persistency
		, P_Eval
		, P_NB
		--14.Office
		--, SO
		, APESO
		--, GA
		, APEGA
		
		
		
		FROM (
			-------------------APE|Case|Office-------------------
			SELECT
			Year = YEAR(Trandate)
			, Month = MONTH(Trandate)
			, TAD = isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' )
			, RAD = isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' )
			, ABDM = isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' )
			, ABDD = isnull( ltrim(rtrim(a.ABDDRegional)), 'BLANK' ) -- add
			, a.TADName
			, a.RADName
			, a.ABDMName
			, a.ABDDName -- add
			, Branch = ltrim(rtrim(a.BranchName))
			, BranchCode = ltrim(rtrim(a.BranchCode))
			--1.APE
			, APE = SUM(APEIDR)
			, APEMulti = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) in('PANIN PREMIER MULTILINKED','PREMIER MULTILINKED ASSURANCE') 
				and ProdCode != 'PPUA8' --kecuali "PANIN PREMIER MULTILINKED (AGGI)"
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			, APEMultiAll = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) in ('PANIN PREMIER MULTILINKED','PREMIER MULTILINKED ASSURANCE') 
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			, APEMaxi = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				left outer join BranchCode b1 on a1.BranchCode=b1.BRCCOD
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) in ('PANIN PREMIER MAXILINKED','PREMIER MAXILINKED ASSURANCE') 
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			, APESy = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				left outer join BranchCode b1 on a1.BranchCode=b1.BRCCOD
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) = 'MULTILINKED SYARIAH'
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
-----tambahan ari				
			, APESmart = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				left outer join BranchCode b1 on a1.BranchCode=b1.BRCCOD
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) = 'PREMIER SMART PROTECTION'
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
------end of tambahan ari								
			, APEKids = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				left outer join BranchCode b1 on a1.BranchCode=b1.BRCCOD
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) = 'KIDS EDU PLAN'
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			, APEWhole = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				left outer join BranchCode b1 on a1.BranchCode=b1.BRCCOD
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) = 'PREMIER HERITAGE PLAN'
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			, APEUltima = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				left outer join BranchCode b1 on a1.BranchCode=b1.BRCCOD
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) = 'PREMIER ULTIMALINKED'
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			, APEPremSy = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				left outer join BranchCode b1 on a1.BranchCode=b1.BRCCOD
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) = 'Premier Multilinked Syariah'
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			--6.Case
			, CaseAPE = SUM(CaseNB)
			--14.Office
			, APESO	= (select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and a1.BranchType = 'A'
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			, APEGA	= (select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and a1.BranchType = 'G'
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
				
			FROM ASP_Stg_APE a
			WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and YEAR(Trandate) between 2015 and 2017 -- tdk berubah
			GROUP BY YEAR(Trandate)
				, MONTH(Trandate)
				, isnull( ltrim(rtrim(TADRegionName)), 'BLANK' )
				, isnull( ltrim(rtrim(RADRegionName)), 'BLANK' )
				, isnull( ltrim(rtrim(ABDMRegionName)), 'BLANK' )
				, isnull( ltrim(rtrim(ABDDRegional)), 'BLANK' )
				, ltrim(rtrim(BranchName))
				, ltrim(rtrim(BranchCode))
				, a.TADName
				, a.RADName
				, a.ABDMName
				, a.ABDDName
		
		UNION ALL	
			
		-- tahun 2018 keatas exclude AAGI
			-------------------APE|Case|Office-------------------
			SELECT
			Year = YEAR(Trandate)
			, Month = MONTH(Trandate)
			, TAD = isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' )
			, RAD = isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' )
			, ABDM = isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' )
			, ABDD = isnull( ltrim(rtrim(a.ABDDRegional)), 'BLANK' ) -- add
			, a.TADName
			, a.RADName
			, a.ABDMName
			, a.ABDDName -- add
			, Branch = ltrim(rtrim(a.BranchName))
			, BranchCode = ltrim(rtrim(a.BranchCode))
			--1.APE
			, APE = SUM(APEIDR)
			, APEMulti = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) in ('PANIN PREMIER MULTILINKED','PREMIER MULTILINKED ASSURANCE') 
				and ProdCode != 'PPUA8' --kecuali "PANIN PREMIER MULTILINKED (AGGI)"
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			, APEMultiAll = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) in ('PANIN PREMIER MULTILINKED','PREMIER MULTILINKED ASSURANCE')
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			, APEMaxi = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				left outer join BranchCode b1 on a1.BranchCode=b1.BRCCOD
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) in ('PANIN PREMIER MAXILINKED','PREMIER MAXILINKED ASSURANCE') 
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			, APESy = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				left outer join BranchCode b1 on a1.BranchCode=b1.BRCCOD
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) = 'MULTILINKED SYARIAH'
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
				
---tambahan ari
			, APESmart = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				left outer join BranchCode b1 on a1.BranchCode=b1.BRCCOD
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) = 'PREMIER SMART PROTECTION'
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
---end of tambahan ari
				
			, APEKids = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				left outer join BranchCode b1 on a1.BranchCode=b1.BRCCOD
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) = 'KIDS EDU PLAN'
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			, APEWhole = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				left outer join BranchCode b1 on a1.BranchCode=b1.BRCCOD
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) = 'PREMIER HERITAGE PLAN'
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			, APEUltima = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				left outer join BranchCode b1 on a1.BranchCode=b1.BRCCOD
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) = 'PREMIER ULTIMALINKED'
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			, APEPremSy = ( select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				left outer join BranchCode b1 on a1.BranchCode=b1.BRCCOD
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and ltrim(rtrim(ProdDesc)) = 'Premier Multilinked Syariah'
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				)
			--6.Case
			, CaseAPE = SUM(CaseNB)
			------------------- Data Harus sama dengan APE Actual ----------------------------------------
			--14.Office
			, APESO	= (select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and a1.BranchType  in ('A','W') -- add Venty : 25-06-2018
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				and a1.ProdCode <> 'PPUA8'
				)
			, APEGA	= (select SUM(APEIDR)
				FROM ASP_Stg_APE a1
				WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and a1.BranchType in ('G','M') -- add Venty : 25-06-2018
				and Year(a.trandate) = Year(a1.trandate)
				and MONTH(a.trandate) = MONTH(a1.trandate)
				and isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.TADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.RADRegionName)), 'BLANK' )
				and isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' ) = isnull( ltrim(rtrim(a1.ABDMRegionName)), 'BLANK' )
				and ltrim(rtrim(a.BranchName)) = ltrim(rtrim(a1.BranchName))
				and ltrim(rtrim(a.BranchCode)) = ltrim(rtrim(a1.BranchCode))
				and a1.ProdCode <> 'PPUA8'
				)
				
			FROM ASP_Stg_APE a
			WHERE SalesChannelLookUp in ('AGENCY','WEALTH MANAGEMENT','CONSERVATION') 
				and YEAR(Trandate) >= 2018
				and a.ProdCode <> 'PPUA8' --kecuali "PANIN PREMIER MULTILINKED (AGGI)"
			GROUP BY YEAR(Trandate)
				, MONTH(Trandate)
				, isnull( ltrim(rtrim(TADRegionName)), 'BLANK' )
				, isnull( ltrim(rtrim(RADRegionName)), 'BLANK' )
				, isnull( ltrim(rtrim(ABDMRegionName)), 'BLANK' )
				, isnull( ltrim(rtrim(ABDDRegional)), 'BLANK' )
				, ltrim(rtrim(BranchName))
				, ltrim(rtrim(BranchCode))
				, a.TADName
				, a.RADName
				, a.ABDMName
				, a.ABDDName
		
		) A
		
		
		
		full outer join
		
		
		
		(
			-------------------Persistency-------------------
			select Year = YEAR(Tanggal)
			, Month = MONTH(Tanggal)
			, TAD = isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' )
			, RAD = isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' )
			, ABDM = isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' )
			, ABDD	= isnull( ltrim(rtrim(a.ABDDRegional)), 'BLANK') --add
			, a.TADName
			, a.RADName
			, a.ABDMName
			, a.ABDDName -- add
			, Branch = ltrim(rtrim(a.BranchName))
			, BranchCode = ltrim(rtrim(a.BranchCode))
			--9.Persistency
			, P_Eval = SUM(EvalPremium)
			, P_NB = SUM(NBPremium)
			
			
			from ASP_Stg_Persistency a
			where GroupChannel in ('AGENCY','WEALTH MANAGEMENT')
				and YEAR(Tanggal) >= 2015
			GROUP BY YEAR(Tanggal)
				, MONTH(Tanggal)
				, isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK' )
				, isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK' )
				, isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK' )
				,isnull( ltrim(rtrim(a.ABDDRegional)), 'BLANK' )
				, ltrim(rtrim(a.BranchName))
				, ltrim(rtrim(a.BranchCode))
				, a.TADName
				, a.RADName
				, a.ABDMName
				, a.ABDDName
		) B
		on B.Year = A.Year
			and B.Month = A.Month
			and B.TAD = A.TAD
			and B.RAD = A.RAD
			and B.ABDM = A.ABDM
			and B.Branch = A.Branch
			and B.BranchCode = A.BranchCode	
			and A.ABDD=B.ABDD
			
	) AB




	full outer join



	(
		-------------------Agent-------------------
		SELECT
		Year	= YEAR(Tanggal)
		, Month	= MONTH(Tanggal)
		, TAD	= isnull( ltrim(rtrim(TADRegionName)), 'BLANK')
		, RAD	= isnull( ltrim(rtrim(RADRegionName)), 'BLANK')
		, ABDM	= isnull( ltrim(rtrim(ABDMRegionName)), 'BLANK')
		, ABDD	= isnull( ltrim(rtrim(a.ABDDRegional)), 'BLANK') --add
		, a.TADName
		, a.RADName
		, a.ABDMName
		, a.ABDDName -- add
		, Branch	= ltrim(rtrim(BranchName))
		, BranchCode
		--2.Recruit
		, Recruit	= SUM(NewRecruiter)
		--3.Active Agent
		, AA		= SUM(ActiveAgent)
		--4.Productive Agent
		, PA		= SUM(ProductiveAgent)
		--5.Rookie Agent
		, RA		= SUM(RookieAgent)
		, ARA		= SUM(ActiveRookieAgent)
		--10.Man Power
		, FAManPower	= SUM(FAManPower)
		, AMManPower	= SUM(AMManPower)
		, SAMManPower	= SUM(SAMManPower)
		, PAMManPower	= SUM(PAMManPower)
		--11.Leader No Production
		, AMNoProd		= SUM(AMNoProduction)
		, SAMNoProd		= SUM(SAMNoProduction)
		, PAMNoProd		= SUM(PAMNoProduction)
		--13.Licesed Agent
		, LicensedUL	= SUM(LicenseUnitLinked)
		, LicensedSY	= SUM(LicenseSyariah)
		--14.Office
		, SO	= (select COUNT(distinct BranchCode) 
			from ASP_Stg_Agent a1 where BranchType='A' 
			and a1.CategoryCode in ('A')
			and YEAR(a.Tanggal)=YEAR(a1.Tanggal)
			and MONTH(a.Tanggal)=MONTH(a1.Tanggal)
			and isnull(ltrim(rtrim(a.TADRegionName)),'BLANK')	= isnull(ltrim(rtrim(a1.TADRegionName)),'BLANK')
			and isnull(ltrim(rtrim(a.RADRegionName)),'BLANK')	= isnull(ltrim(rtrim(a1.RADRegionName)),'BLANK')
			and isnull(ltrim(rtrim(a.ABDMRegionName)),'BLANK')	= isnull(ltrim(rtrim(a1.ABDMRegionName)),'BLANK')
			and ltrim(rtrim(a.BranchName))		= ltrim(rtrim(a1.BranchName))
			)
		, GA	= (select COUNT(distinct BranchCode) 
			from ASP_Stg_Agent a1 where BranchType='G' 
			and a1.CategoryCode in ('A')
			and YEAR(a.Tanggal)=YEAR(a1.Tanggal)
			and MONTH(a.Tanggal)=MONTH(a1.Tanggal)
			and isnull(ltrim(rtrim(a.TADRegionName)),'BLANK')	= isnull(ltrim(rtrim(a1.TADRegionName)),'BLANK')
			and isnull(ltrim(rtrim(a.RADRegionName)),'BLANK')	= isnull(ltrim(rtrim(a1.RADRegionName)),'BLANK')
			and isnull(ltrim(rtrim(a.ABDMRegionName)),'BLANK')	= isnull(ltrim(rtrim(a1.ABDMRegionName)),'BLANK')
			and ltrim(rtrim(a.BranchName))		= ltrim(rtrim(a1.BranchName))
			)
			
		 
		FROM ASP_Stg_Agent a
		GROUP BY YEAR(Tanggal)
			, MONTH(Tanggal)
			, isnull( ltrim(rtrim(TADRegionName)), 'BLANK')
			, isnull( ltrim(rtrim(RADRegionName)), 'BLANK')
			, isnull( ltrim(rtrim(ABDMRegionName)), 'BLANK')
			, isnull( ltrim(rtrim(ABDDRegional)), 'BLANK')
			, ltrim(rtrim(BranchName))
			, BranchCode
			, a.TADName
			, a.RADName
			, a.ABDMName
			, a.ABDDName
	) C
	on C.Year = AB.Year
		and C.Month = AB.Month
		and C.TAD = AB.TAD
		and C.RAD = AB.RAD
		and C.ABDM = AB.ABDM
		and C.Branch = AB.Branch
		and C.BranchCode = AB.BranchCode
		and C.ABDD=AB.ABDD
) ABC    
      
      
      
full outer join




(
	-------------------Financing Leader-------------------
	SELECT distinct
	Year
	, Month
	, TAD	= isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK')
	, RAD	= isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK')
	, ABDM	= isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK')
	, ABDD	= isnull( ltrim(rtrim(a.ABDDRegional)), 'BLANK') --add
	, a.TADName
	, a.RADName
	, a.ABDMName
	, a.ABDDName -- add
	, Branch	=  ltrim(rtrim(BranchName))
	, BranchCode = ltrim(rtrim(a.BC))
	--12.Financing Leader
	, AMFinancing	= sum(AM)
	, SAMFinancing	= sum(SAM)
	, PAMFinancing	= sum(PAM)
		
	FROM ASP_Stg_FinancingLeader a
	where a.Year is not null
	group by Year
		, Month
		, isnull( ltrim(rtrim(a.TADRegionName)), 'BLANK')
		, isnull( ltrim(rtrim(a.RADRegionName)), 'BLANK')
		, isnull( ltrim(rtrim(a.ABDMRegionName)), 'BLANK')
		, isnull( ltrim(rtrim(a.ABDDRegional)), 'BLANK')
		, ltrim(rtrim(BranchName))
		, ltrim(rtrim(a.BC))
		, a.TADName
		, a.RADName
		, a.ABDMName
		, a.ABDDName
) D
on D.Year = ABC.Year
	and D.Month = ABC.Month
	and D.TAD = ABC.TAD
	and D.RAD = ABC.RAD
	and D.ABDM = ABC.ABDM
	and D.Branch = ABC.Branch
	and D.BranchCode = ABC.BranchCode
	and D.ABDD=ABC.ABDD

where coalesce(ABC.Year, D.Year) = Year(getdate()-1 )
and coalesce(ABC.Month, D.Month)  = Month(getdate()-1 )
order by Year, Month, TAD, RAD, ABDM, ABDD, Branch
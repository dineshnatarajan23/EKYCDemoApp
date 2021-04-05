function getPendingVsActedAppl(){
	var queryStr = "select status,  sum(case when status=0 then 1 else 0 end) as TotalPendingClaims, sum(case when status=1 then 1 else 0 end) as TotalApprovedClaims, sum(case when status=2 then 1 else 0 end) as TotalRejectedClaims from public.\"KYCApplications\" group by status";
	try{
		$s.query("KYCDS", queryStr);
			results = $s.queryDb();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
getPendingVsActedAppl();

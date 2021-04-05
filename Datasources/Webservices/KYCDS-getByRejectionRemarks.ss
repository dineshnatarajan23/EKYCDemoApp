function getByRejectionRemarks(){
	var queryStr = "select count('id'), remarks from public.\"KYCApplications\" where status = 2 Group by public.\"KYCApplications\".remarks";
	try{
		$s.query("KYCDS", queryStr);
			results = $s.queryDb();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
getByRejectionRemarks();

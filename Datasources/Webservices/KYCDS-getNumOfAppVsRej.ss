function getNumOfAppVsRej(){
	var queryStr = "select count('id'),status from public.\"KYCApplications\" Group by public.\"KYCApplications\".status";
	try{
		$s.query("KYCDS", queryStr);
			results = $s.queryDb();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
getNumOfAppVsRej();

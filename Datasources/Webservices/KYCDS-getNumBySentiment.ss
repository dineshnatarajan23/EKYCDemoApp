function getNumBySentiment(){
	var queryStr = "select count('id'),sentiment from public.\"KYCApplications\" Group by public.\"KYCApplications\".sentiment";
	try{
		$s.query("KYCDS", queryStr);
			results = $s.queryDb();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
getNumBySentiment();

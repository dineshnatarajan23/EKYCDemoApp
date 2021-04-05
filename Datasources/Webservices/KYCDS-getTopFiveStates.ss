function getTopFiveStates(){
	var queryStr = "select count('id'),state from public.\"KYCApplications\" Group by public.\"KYCApplications\".state Order by count('id') Desc limit 5";
	try{
		$s.query("KYCDS", queryStr);
			results = $s.queryDb();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
getTopFiveStates();

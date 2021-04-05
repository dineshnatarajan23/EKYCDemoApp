function getNumOfApplByOccType(){
	var queryStr = "select count('id'),occtype from public.\"KYCApplications\" Group by public.\"KYCApplications\".occtype";
	try{
		$s.query("KYCDS", queryStr);
			results = $s.queryDb();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
getNumOfApplByOccType();

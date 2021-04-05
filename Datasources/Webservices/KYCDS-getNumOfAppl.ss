function getNumOfAppl(){
	var queryStr = "select count('id') from public.\"KYCApplications\"";
	try{
		$s.query("KYCDS", queryStr);
			results = $s.queryDb();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
getNumOfAppl();

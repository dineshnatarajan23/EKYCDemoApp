function getNumRejected(){
	var queryStr = "select count('id') from public.\"KYCApplications\" where status = 2";
	try{
		$s.query("KYCDS", queryStr);
			results = $s.queryDb();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
getNumRejected();

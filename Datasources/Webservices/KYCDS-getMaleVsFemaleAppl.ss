function getMaleVsFemaleAppl(){
	var queryStr = "select count('id'),gender from public.\"KYCApplications\" Group by public.\"KYCApplications\".gender";
	try{
		$s.query("KYCDS", queryStr);
			results = $s.queryDb();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
getMaleVsFemaleAppl();

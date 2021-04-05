function getNumOfFemaleAppl(){
	var queryStr = "select count('id') from public.\"KYCApplications\" where public.\"KYCApplications\".gender = 'Female'";
	try{
		$s.query("KYCDS", queryStr);
			results = $s.queryDb();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
getNumOfFemaleAppl();

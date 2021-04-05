function selectAllKYCApplications(){
	var queryStr = "SELECT \"id\",\"firstname\",\"lastname\",\"email\",\"mobile\",\"gender\",\"maritalstatus\",\"occtype\",\"add1\",\"add2\",\"add3\",\"district\",\"postcode\",\"state\",\"country\",\"status\",\"validatorid\",\"agentid\",\"remarks\",\"age\" , count(*) OVER() AS full_count FROM \"public\".\"KYCApplications\"";
	var queryStrWithLimit = "SELECT \"id\",\"firstname\",\"lastname\",\"email\",\"mobile\",\"gender\",\"maritalstatus\",\"occtype\",\"add1\",\"add2\",\"add3\",\"district\",\"postcode\",\"state\",\"country\",\"status\",\"validatorid\",\"agentid\",\"remarks\",\"age\" , count(*) OVER() AS full_count FROM \"public\".\"KYCApplications\" LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("KYCDS", queryStrWithLimit);
		$s.setLong(1, "limit");
		$s.setLong(2, "offset");
		}else{
		$s.query("KYCDS", queryStr);
		}
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectAllKYCApplications();

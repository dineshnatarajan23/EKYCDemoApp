function getApplicationByCity(){
	var queryStr = "SELECT \"firstname\",\"lastname\" , count(*) OVER() AS full_count FROM \"public\".\"KYCApplications\" WHERE \"state\"= ?";
	var queryStrWithLimit = "SELECT \"firstname\",\"lastname\" , count(*) OVER() AS full_count FROM \"public\".\"KYCApplications\" WHERE \"state\"= ? LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("KYCDS", queryStrWithLimit);
		$s.setLong(2, "limit");
		$s.setLong(3, "offset");
		}else{
		$s.query("KYCDS", queryStr);
		}
	$s.setString(1, "state");
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
getApplicationByCity();

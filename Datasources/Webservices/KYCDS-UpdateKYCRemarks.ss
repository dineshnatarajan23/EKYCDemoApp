function UpdateKYCRemarks(){
	var queryStr = "UPDATE \"public\".\"KYCApplications\" SET \"remarks\"=? WHERE \"id\"= ?";
	try{
		$s.query("KYCDS", queryStr);
	$s.setString(1, "remarks");
	$s.setLong(2, "id");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
UpdateKYCRemarks();

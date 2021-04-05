function updateKYCStatus(){
	var queryStr = "UPDATE \"public\".\"KYCApplications\" SET \"status\"=?,\"approvedby\"=? WHERE \"id\"= ?";
	try{
		$s.query("KYCDS", queryStr);
	$s.setInteger(1, "status");
	$s.setString(2, "approvedby");
	$s.setLong(3, "id");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateKYCStatus();

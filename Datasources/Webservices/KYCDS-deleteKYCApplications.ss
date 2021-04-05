function deleteKYCApplications(){
	var queryStr = "DELETE FROM \"public\".\"KYCApplications\" WHERE \"id\"= ?";
	try{
		$s.query("KYCDS", queryStr);
		$s.setLong(1, "id");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
deleteKYCApplications();

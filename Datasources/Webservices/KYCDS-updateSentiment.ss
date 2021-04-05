function updateSentiment(){
	var queryStr = "UPDATE \"public\".\"KYCApplications\" SET \"review\"=?,\"sentiment\"=? WHERE \"id\"= ?";
	try{
		$s.query("KYCDS", queryStr);
	$s.setString(1, "review");
	$s.setString(2, "sentiment");
	$s.setLong(3, "id");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateSentiment();

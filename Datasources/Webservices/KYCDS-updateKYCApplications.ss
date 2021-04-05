function updateKYCApplications(){
	var queryStr = "UPDATE \"public\".\"KYCApplications\" SET \"id\"=?,\"firstname\"=?,\"lastname\"=?,\"email\"=?,\"mobile\"=?,\"gender\"=?,\"maritalstatus\"=?,\"occtype\"=?,\"add1\"=?,\"add2\"=?,\"add3\"=?,\"district\"=?,\"postcode\"=?,\"state\"=?,\"country\"=?,\"status\"=?,\"validatorid\"=?,\"agentid\"=?,\"remarks\"=? WHERE \"id\"= ?";
	try{
		$s.query("KYCDS", queryStr);
	$s.setLong(1, "id");
	$s.setString(2, "firstname");
	$s.setString(3, "lastname");
	$s.setString(4, "email");
	$s.setString(5, "mobile");
	$s.setString(6, "gender");
	$s.setString(7, "maritalstatus");
	$s.setString(8, "occtype");
	$s.setString(9, "add1");
	$s.setString(10, "add2");
	$s.setString(11, "add3");
	$s.setString(12, "district");
	$s.setString(13, "postcode");
	$s.setString(14, "state");
	$s.setString(15, "country");
	$s.setInteger(16, "status");
	$s.setString(17, "validatorid");
	$s.setString(18, "agentid");
	$s.setString(19, "remarks");
	$s.setLong(20, "id");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateKYCApplications();

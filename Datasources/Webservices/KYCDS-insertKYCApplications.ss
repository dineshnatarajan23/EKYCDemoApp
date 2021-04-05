function insertKYCApplications(){
	var queryStr = "INSERT INTO \"public\".\"KYCApplications\" (\"firstname\",\"lastname\",\"email\",\"mobile\",\"gender\",\"maritalstatus\",\"occtype\",\"add1\",\"add2\",\"add3\",\"district\",\"postcode\",\"state\",\"country\",\"status\",\"validatorid\",\"agentid\",\"remarks\",\"age\") VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	try{
		$s.query("KYCDS", queryStr);
		$s.setString(1, "firstname");
		$s.setString(2, "lastname");
		$s.setString(3, "email");
		$s.setString(4, "mobile");
		$s.setString(5, "gender");
		$s.setString(6, "maritalstatus");
		$s.setString(7, "occtype");
		$s.setString(8, "add1");
		$s.setString(9, "add2");
		$s.setString(10, "add3");
		$s.setString(11, "district");
		$s.setString(12, "postcode");
		$s.setString(13, "state");
		$s.setString(14, "country");
		$s.setInteger(15, "status");
		$s.setString(16, "validatorid");
		$s.setString(17, "agentid");
		$s.setString(18, "remarks");
		$s.setInteger(19, "age");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertKYCApplications();

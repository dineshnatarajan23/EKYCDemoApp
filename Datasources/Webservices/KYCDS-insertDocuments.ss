function insertDocuments(){
	var queryStr = "INSERT INTO \"public\".\"Documents\" (\"id\",\"doctype\",\"docname\",\"docexp\",\"custid\",\"doclink\",\"kycfield\") VALUES(?,?,?,?,?,?,?)";
	try{
		$s.query("KYCDS", queryStr);
		$s.setString(1, "id");
		$s.setString(2, "doctype");
		$s.setString(3, "docname");
		$s.setDate(4, "docexp");
		$s.setLong(5, "custid");
		$s.setString(6, "doclink");
		$s.setString(7, "kycfield");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertDocuments();

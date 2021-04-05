function updateDocuments(){
	var queryStr = "UPDATE \"public\".\"Documents\" SET \"id\"=?,\"doctype\"=?,\"docname\"=?,\"docexp\"=?,\"custid\"=?,\"doclink\"=?,\"kycfield\"=? WHERE \"id\"= ?";
	try{
		$s.query("KYCDS", queryStr);
	$s.setString(1, "id");
	$s.setString(2, "doctype");
	$s.setString(3, "docname");
	$s.setDate(4, "docexp");
	$s.setLong(5, "custid");
	$s.setString(6, "doclink");
	$s.setString(7, "kycfield");
	$s.setString(8, "id");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateDocuments();

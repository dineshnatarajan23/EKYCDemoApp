function deleteDocuments(){
	var queryStr = "DELETE FROM \"public\".\"Documents\" WHERE \"id\"= ?";
	try{
		$s.query("KYCDS", queryStr);
		$s.setString(1, "id");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
deleteDocuments();

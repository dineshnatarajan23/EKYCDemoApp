function getCities(){
	var queryStr = "SELECT \"City\" , count(*) OVER() AS full_count FROM \"public\".\"Location\"";
	var queryStrWithLimit = "SELECT \"City\" , count(*) OVER() AS full_count FROM \"public\".\"Location\" LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("KYCDS", queryStrWithLimit);
		$s.setLong(1, "limit");
		$s.setLong(2, "offset");
		}else{
		$s.query("KYCDS", queryStr);
		}
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
getCities();

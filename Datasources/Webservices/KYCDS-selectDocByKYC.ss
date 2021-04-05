function selectDocByKYC(){
	var queryStr = "SELECT \"id\",\"doctype\",\"docname\",\"docexp\",\"custid\",\"doclink\",\"kycfield\" , count(*) OVER() AS full_count FROM \"public\".\"Documents\" WHERE \"kycfield\"= ? AND \"custid\"= ?";
	var queryStrWithLimit = "SELECT \"id\",\"doctype\",\"docname\",\"docexp\",\"custid\",\"doclink\",\"kycfield\" , count(*) OVER() AS full_count FROM \"public\".\"Documents\" WHERE \"kycfield\"= ? AND \"custid\"= ? LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("KYCDS", queryStrWithLimit);
		$s.setLong(3, "limit");
		$s.setLong(4, "offset");
		}else{
		$s.query("KYCDS", queryStr);
		}
	$s.setString(1, "kycfield");
	$s.setLong(2, "custid");
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectDocByKYC();

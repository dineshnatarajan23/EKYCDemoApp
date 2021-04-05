function getRepo(){
	var queryStr = "SELECT \"repohost\" , count(*) OVER() AS full_count FROM \"public\".\"Config\"";
	var queryStrWithLimit = "SELECT \"repohost\" , count(*) OVER() AS full_count FROM \"public\".\"Config\" LIMIT ? OFFSET ?";
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
getRepo();


if( navigator.appName.indexOf("Microsoft") > -1 ) {
	function goXLineInbound(cuname , cutel , svnCode)
	{
		XLineLoader.SetServerParameter("WEBSERVER" , "152.99.237.3");
		XLineLoader.SetServerParameter("ITI_IP" , "152.99.237.3");
		XLineLoader.SetServerParameter("ITI_PORT" , "8081");

		XLineLoader.SetServerParameter("SIP_SERVER_IP" , "152.99.237.4");
		XLineLoader.SetServerParameter("AP2PIP" , "152.99.237.3");
		XLineLoader.SetServerParameter("AP2PPORT" , "8082");	
	
		XLineLoader.SetLoginParameter("NAME" , cuname); //customer name
		//XLineLoader.SetLoginParameter("CUID" , cuid);   //customer id 
		XLineLoader.SetLoginParameter("CUTEL" , cutel);
		XLineLoader.SetLoginParameter("GROUP" , "Liveweb");
		XLineLoader.SetLoginParameter("TYPE" , "client");
		XLineLoader.SetLoginParameter("AGNTNAME" , "»ó´ã¿ø");
		XLineLoader.SetLoginParameter("SITEID" , "acrc");
		XLineLoader.SetLoginParameter("SVNCODE" , svnCode);
		
		XLineLoader.Login();
	}

	document.write("<OBJECT classid=\"CLSID:9C115EE6-C0DA-4621-8CD8-F051EC6ED8A2\" codebase=\"http://152.99.237.3/lwpchat/moduleload/XLineLoader.cab#version=2011,10,31,1\" width=\"0\" height=\"0\" id=\"XLineLoader\">" +
	"<param name = \"CompanyName\" value = \"Koino\">" + 
	"<param name = \"ApplicationName\" value = \"LiveWeb\">" + 
	"<param name = \"SectionName\" value = \"ACRC\">" + 
	"<param name = \"Version\" value = \"1.0.0.75\">" + 
	"<param name = \"ExecuteFileName\" value = \"LiveWebClient.exe\">" + 
	"<param name = \"HostAddress\" value = \"152.99.237.3\">" + 
	"<param name = \"HostURL\" value = \"lwpchat/moduleload/\">" + 
	"<param name = \"ID\" value = \"client\">" + 
	"<param name = \"Type\" value = \"ACRC\">" +
	"</OBJECT>");
}

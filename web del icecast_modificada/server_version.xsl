<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0">
<xsl:output omit-xml-declaration="no" method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/icestats">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Icecast Streaming Media Server</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
</head>
<body>
	<h1 id="header">información</h1>
	<!--index header menu -->
	<div id="menu">
		<ul>
			<li><a href="admin/">Admin</a></li>
			<li><a href="status.xsl">Musiquita</a></li>
			<li><a href="server_version.xsl">Información</a></li>
		</ul>
	</div>
	<!--end index header menu -->

	<div class="roundbox">
		<h3>Server Information</h3>
		<table class="yellowkeys">
			<tbody>
				<xsl:for-each select="/icestats">
				<tr>
					<td>De donde soy?</td>
					<td>De la tierra</td>
				</tr>
				<tr>
					<td>Admin</td>
					<td>rubio@mipaginarubio.com</td>
				</tr>
				<tr>
					<td>Pagina</td>
					<td><xsl:value-of select="host" /></td>
				</tr>
				<tr>
					<td>Version</td>
					<td><xsl:value-of select="server_id" /></td>
				</tr>
				</xsl:for-each>
				<tr>
					<td>Donde descargar</td>
					<td><a href="http://icecast.org/download.php">icecast.org</a></td>
				</tr>
				<tr>
					<td>Subversion</td>
					<td><a href="http://icecast.org/svn.php">icecast.org/svn.php</a></td>
				</tr>
				<tr>
					<td>Documentacion</td>
					<td><a href="http://icecast.org/docs.php">icecast.org/docs.php</a></td>
				</tr>
				<tr>
					<td>Stream Directory</td>
					<td><a href="http://dir.xiph.org/index.php">dir.xiph.org</a></td>
				</tr>
				<tr>
					<td>Communidad</td>
					<td><a href="http://icecast.org/community.php">icecast.org/community.php</a></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

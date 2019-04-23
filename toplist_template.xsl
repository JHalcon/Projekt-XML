<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>

		<head>
			<title>Top list</title>
			<link rel="stylesheet" href="style.css"/>
		</head>

		<body>
			<h1 id="main"> MY FOVOURITE SONGS LIST </h1>
		


				<xsl:variable name="header">
					<tr>
						<td>
							Position on the list
						</td>
						<td>
						Song name
						</td>
						<td>
						Author
						</td>
						<td>
						Year 
						</td>
						<td>
						Cover
						</td>
					</tr>
				</xsl:variable>
	<table border="2">
	<tr ><td colspan = '5'><h4>Orchestral songs</h4></td></tr>
<xsl:copy-of select="$header"/>
<xsl:for-each select="//Song[@type='orchestral']">
<tr bgcolor="lightgrey">
<td><xsl:value-of select="position" /></td>
<td><xsl:value-of select="name" /> </td>
<td>

<xsl:value-of select="author" /> 
</td>
<td>
<xsl:value-of select="year" /> 

</td>
<td>
<img src="{cover}"/>
</td>
</tr>
</xsl:for-each>
	<tr><td colspan = '5'><h4>Instrumental songs</h4></td></tr>
<xsl:copy-of select="$header"/>
<xsl:for-each select="//Song[@type='instrumental']">
<tr bgcolor="DodgerBlue ">
<td><xsl:value-of select="position" /></td>
<td><xsl:value-of select="name" /> </td>
<td>

<xsl:value-of select="author" /> 
</td>
<td>
<xsl:value-of select="year" /> 

</td>
<td>
<img src="{cover}"/>
</td>
</tr>
</xsl:for-each>
	<tr><td colspan = '5'><h4>Instrumental and vocal songs</h4></td></tr>
<xsl:copy-of select="$header"/>
<xsl:for-each select="//Song[@type='instrumentalnvocal']">
<tr  bgcolor="bisque ">
<td><xsl:value-of select="position" /></td>
<td><xsl:value-of select="name" /> </td>
<td>

<xsl:value-of select="author" /> 
</td>
<td>
<xsl:value-of select="year" /> 

</td>
<td>
<img src="{cover}"/>
</td>
</tr>
</xsl:for-each>
</table>
		</body>

		</html>
</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">

		<h2>
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
		</h2>
		<p>
			<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
		</p>


	</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<ul class="nav">
			<xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
			<li class="nav-item"><a class="nav-link" href="/sitemap.aspx">Sitemap</a></li>
		</ul>
	</xsl:template>

	<xsl:template match="Zone">
		<li class="nav-item">
			<a class="nav-link">
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select='Title'></xsl:value-of>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>
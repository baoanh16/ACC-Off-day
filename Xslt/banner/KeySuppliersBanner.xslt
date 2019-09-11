<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h2>
			<xsl:value-of select='/BannerList/ModuleTitle'></xsl:value-of>
		</h2>
		<div class="row suppliers-banner">
			<xsl:if test="count(/BannerList/Banner) > 0">
				<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
			</xsl:if>
		</div>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="col-6 col-md-4">
			<div class="img">
				<img>
				<xsl:attribute name='src'>
					<xsl:value-of select='ImageUrl'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='alt'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
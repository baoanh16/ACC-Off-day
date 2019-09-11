<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="container">
			<h1 class="h-title">
				<xsl:apply-templates select="/NewsList/ZoneTitle"></xsl:apply-templates>
			</h1>
			<div class="row ajaxresponsewrap">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</div>
		<xsl:if test="/NewsList/NextPageUrl!=''">
			<div class="btn-viewmore">
				<a class="ajaxpagerlink">
					<xsl:attribute name="href">
						<xsl:value-of select="/NewsList/NextPageUrl" />
					</xsl:attribute>
					View more
				</a>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News">
		<div class="photo-gallery-wrapper">
			<div class="photo-gallery">
				<xsl:apply-templates select='NewsImages'></xsl:apply-templates>
			</div>
			<div class="photo-name">
				<span class="mdi-eye"></span>
				<span>
					<xsl:value-of select='Title'></xsl:value-of>
				</span>
			</div>
			<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
		</div>
	</xsl:template>

	<xsl:template match='NewsImages'>
		<a>
			<xsl:attribute name='href'>
				<xsl:value-of select='ImageUrl'></xsl:value-of>
			</xsl:attribute>
			<img>
			<xsl:attribute name='src'>
				<xsl:value-of select='ImageUrl'></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name='alt'>
				<xsl:value-of select='Title'></xsl:value-of>
			</xsl:attribute>
			</img>
		</a>
	</xsl:template>
</xsl:stylesheet>
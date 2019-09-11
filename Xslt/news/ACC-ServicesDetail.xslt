<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h1 class="h-title">
			<xsl:value-of select='/NewsDetail/Title'></xsl:value-of>
			<xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
		</h1>
		<div class="briefcontent">
			<xsl:value-of select='/NewsDetail/BriefContent' disable-output-escaping='yes'></xsl:value-of>
		</div>
		<div class="row">
			<xsl:value-of select='/NewsDetail/FullContent' disable-output-escaping='yes'></xsl:value-of>
			<div class="col">
				<div class="swiper-container">
					<div class="swiper-pagination"></div>
					<div class="swiper-wrapper">
						<xsl:if test="count(/NewsDetail/NewsImages)>0">
							<xsl:apply-templates select="/NewsDetail/NewsImages"></xsl:apply-templates>
						</xsl:if>
					</div>
				</div>
			</div>
		</div>

	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="swiper-slide">
			<img>
			<xsl:attribute name='src'>
				<xsl:value-of select='ImageUrl'></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name='alt'>
				<xsl:value-of select='Title'></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>
</xsl:stylesheet>
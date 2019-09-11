<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<h3 class="h-title">
			<xsl:value-of select='/NewsList/News/Title'></xsl:value-of>
		</h3>
		<p>
			<xsl:value-of select='/NewsList/News/FullContent' disable-output-escaping='yes'>
			</xsl:value-of>
		</p>
		<div class="slider">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select='/NewsList/News/NewsImages'></xsl:apply-templates>
				</div>
			</div>
			<div class="swiper-navigation">
				<div class="swiper-prev"><span class="mdi mdi-chevron-left"></span></div>
				<div class="swiper-next"><span class="mdi mdi-chevron-right"></span></div>
			</div>
		</div>

	</xsl:template>
	<xsl:template match='NewsImages'>
		<div class="swiper-slide">
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
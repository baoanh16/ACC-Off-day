<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h2 class="h-title">
			<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>

		</h2>
		<div class="row">
			<div class="col">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<div class="position-wrapper">
			<div class="title-wrapper">
				<h3>
					<span>
						<xsl:value-of select='position()'></xsl:value-of>
					</span>
					<xsl:value-of select='Title'></xsl:value-of>
					<time>
						<xsl:value-of select='SubTitle'></xsl:value-of>
					</time>
					<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
				</h3>
			</div>
			<div class="detail-wrapper">
				<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				<div class="wrapper-btn">
					<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
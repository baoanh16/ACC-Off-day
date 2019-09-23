<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<h1 class="h-title">
			<xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>
		</h1>
		<div class="row">
			<xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match='News'>
		<div class="col-lg-4">
			<div class="info">
				<h2>
					<xsl:value-of select='Title'></xsl:value-of>
					<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
				</h2>
				<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">


		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

	</xsl:template>

	<xsl:template match="Zone">


		<xsl:if test="position()=1">

			<section class="expertise-display-list" id="section-1">
				<div class="container">
					<div class="row expertise-wrapper">
						<xsl:apply-templates select="News"></xsl:apply-templates>
					</div>
				</div>
			</section>


		</xsl:if>
		<xsl:if test="position()=2">

			<section class="expertise-display-list" id="section-2">
				<div class="container">
					<div class="row expertise-wrapper">
						<xsl:apply-templates select="News"></xsl:apply-templates>
					</div>
				</div>
			</section>

		</xsl:if>
		<xsl:if test="position()=3">

			<section class="expertise-display-list" id="section-3">
				<div class="container">
					<div class="row expertise-wrapper">
						<xsl:apply-templates select="News"></xsl:apply-templates>
					</div>
				</div>
			</section>


		</xsl:if>
		<xsl:if test="position()=4">

			<section class="expertise-display-list" id="section-4">
				<div class="container">
					<div class="row expertise-wrapper">
						<xsl:apply-templates select="News"></xsl:apply-templates>
					</div>
				</div>
			</section>

		</xsl:if>
		<xsl:if test="position()=5">

			<section class="expertise-display-list" id="section-5">
				<div class="container">
					<div class="row expertise-wrapper">
						<xsl:apply-templates select="News"></xsl:apply-templates>
					</div>
				</div>
			</section>


		</xsl:if>


	</xsl:template>

	<xsl:template match="News">
		<div class="col-lg-5">
			<div class="expertise-image">
				<div class="wrapper">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</div>
		</div>
		<div class="col-lg-7">
			<div class="expertise-caption">
				<h2>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</h2>
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

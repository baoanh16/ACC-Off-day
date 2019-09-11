<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="acc-customer-1 ajaxresponse">
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<h1>

							<xsl:value-of select='/NewsList/ZoneTitle'></xsl:value-of>
						</h1>
					</div>
					<div class="col-lg-8">
						<p>
							<xsl:value-of select='/NewsList/ZoneDescription'></xsl:value-of>
						</p>
					</div>
				</div>
				<div class="row no-gutters ajaxresponsewrap">
					<xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
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
			</div>
		</section>
	</xsl:template>
	<xsl:template match='News'>
		<div class="img-wrapper">
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
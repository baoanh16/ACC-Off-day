<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row zone grid-row-10-sm">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</div>

	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="count(Zone) > 0 and IsActive='true' ">
			<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>

		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode="Child">
		<div class="col-lg-3 col-md-4 col-6 grid-col-10-sm">
			<a>
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="box-zoom">
						<img class="lazyload">
						<xsl:attribute name='data-src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h3>
							<xsl:value-of select='Title'></xsl:value-of>
						</h3>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>
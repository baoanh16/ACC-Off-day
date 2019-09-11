<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<ul class="nav">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:choose>

			<xsl:when test="count(Zone)>0">
				<li class="nav-item has-sub">
					<a class="nav-link">
						<xsl:if test="IsActive = 'true'">
							<xsl:attribute name="class">
								<xsl:text>nav-link active</xsl:text>
							</xsl:attribute>
						</xsl:if>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</a>
					<ul class="sub-menu">
						<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
					</ul>
				</li>
			</xsl:when>
			<xsl:otherwise>

				<li class="nav-item">
					<a class="nav-link">
						<xsl:if test="IsActive='true'">
							<xsl:attribute name="class">
								<xsl:text>nav-link active</xsl:text>
							</xsl:attribute>
						</xsl:if>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</a>
				</li>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="Zone" mode="Child">
		<li class="sub-item">
			<a class="sub-link">
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>sub-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>

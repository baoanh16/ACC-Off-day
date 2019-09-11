<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="acc-nav-1">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="nav-wrap">
			<xsl:if test="IsActive = 'true'">
				<xsl:attribute name="class">
					<xsl:text>nav-wrap active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="nav-toggle">
				<xsl:if test="IsActive = 'true'">
					<xsl:attribute name="class">
						<xsl:text>nav-toggle active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
				<xsl:if test="count(Zone)>0">
					<span class="fa fa-caret-down"></span>
				</xsl:if>
			</a>
			<xsl:if test="count(Zone)>0">
				<nav>
					<ul>
						<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
					</ul>
				</nav>
			</xsl:if>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Child">
		<li>
			<a>
				<xsl:if test="IsActive = 'true'">
					<xsl:attribute name="class">
						<xsl:text>active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>
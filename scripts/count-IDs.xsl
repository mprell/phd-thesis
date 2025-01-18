<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <!--This script has to be applied on the xml-file with all letters-->
    
    <xsl:output method="xml" encoding="utf-8" indent="no"/>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="span">
        <xsl:element name="span">
            <xsl:attribute name="from">
                <xsl:value-of select="./@from"/>
            </xsl:attribute>
            <xsl:attribute name="to">
                <xsl:value-of select="./@ana"/>
            </xsl:attribute>
            <xsl:attribute name="ana">
                <xsl:value-of select="./@ana"/>
            </xsl:attribute>
            <xsl:attribute name="xml:id">
                <xsl:text>e</xsl:text>
                <xsl:number format="1" level="any"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()" />
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
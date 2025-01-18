<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0">
    
    <!--This script has to be applied on the single xml-files per letter or subcorpora-->
    
    <xsl:output indent="yes" />
    <xsl:strip-space elements="*" />
    <xsl:mode streamable="yes" on-no-match="shallow-copy" />
    <xsl:template match="/">
        <teiCorpus>
            <xsl:merge>
                <xsl:merge-source for-each-stream="uri-collection('./sources')" streamable="yes" select="*">
                    <xsl:merge-key select="TEI" />
                </xsl:merge-source>
                <xsl:merge-action>
                    <xsl:apply-templates select="current-merge-group()" />
                </xsl:merge-action>
            </xsl:merge>
        </teiCorpus>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0"
    version="2.0">
    
    <!--This script creates the graphml file based on the single xml file of all subcorpora-->
    
    <xsl:output method="text" indent="yes"/>
    
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        <xsl:text>&#60;?xml version="1.0" encoding="UTF-8"?&#62;&#10;&#60;graphml xmlns="http://graphml.graphdrawing.org/xmlns"&#62;&#10;&#60;key id="Relation" for="edge" attr.name="Relation" attr.type="string"/&#62;&#10;&#60;key id="Korpus" for="edge" attr.name="Korpus" attr.type="string"/&#62;&#10;&#60;key id="Datierung" for="edge" attr.name="Datierung" attr.type="string"/&#62;&#10;&#60;key id="Signatur" for="edge" attr.name="Signatur" attr.type="string"/&#62;&#10;&#60;key id="XML-ID" for="edge" attr.name="XML-ID" attr.type="string"/&#62;&#10;&#60;graph edgedefault="directed"&#62;&#10;</xsl:text>

        <!-- Nodes: Lists all persons and sorts out duplicate mentions (is required for NodeXL import, among other things). -->
        <xsl:for-each select="distinct-values(//span[not(ancestor::TEI/teiHeader/fileDesc/titleStmt/title/contains(text(),'an August Hermann Francke'))]/@*[position() &#60; 3])">
            <!-- Argument 3, because @from and @to are always the first two attributes in the span element! -->
            <!-- not ancestor prevents spans that are in the H24-AHF corpus from being output as well. -->
            <xsl:text>&#60;node id="</xsl:text><xsl:value-of select="."/><xsl:text>"/&#62;&#10;</xsl:text>
        </xsl:for-each>
        
        <!-- Edges: Lists all span with its start and end nodes and relationship categories. -->
        <xsl:for-each select="//span[not(ancestor::TEI/teiHeader/fileDesc/titleStmt/title/contains(text(),'an August Hermann Francke'))]">
            <xsl:text>&#60;edge id="e</xsl:text>
            <xsl:value-of select="position()" /><xsl:text>" source="</xsl:text><xsl:value-of select="@from"/><xsl:text>" target="</xsl:text><xsl:value-of select="@to"/><xsl:text>"&#62;&#10;</xsl:text>
            <xsl:text>&#60;data key="Relation"&#62;</xsl:text>
            <xsl:value-of select="@ana"/>
            <xsl:text>&#60;/data&#62;&#10;</xsl:text>
            <xsl:text>&#60;data key="Korpus"&#62;</xsl:text>
            <xsl:if test="ancestor::TEI/teiHeader/fileDesc/titleStmt/title/contains(text(),'an Heinrich XXIV. von Reuß-Schleiz zu Köstritz')"> 
                <xsl:text>EB_H24</xsl:text>
            </xsl:if>
            <xsl:if test="ancestor::TEI/teiHeader/fileDesc/titleStmt/title/contains(text(),'an Nikolaus Ludwig von Zinzendorf')"> 
                <xsl:text>EB_NLZ</xsl:text>
            </xsl:if>
            <xsl:text>&#60;/data&#62;&#10;</xsl:text>
            <xsl:text>&#60;data key="Datierung"&#62;</xsl:text>
            <xsl:value-of select="ancestor::TEI/teiHeader/profileDesc/correspDesc/correspAction[@type='sent']/date[1]/@when/substring(.,1,4)" /><!-- [1] because PK16_56 has two date@when the letter was written on two days; i.e. only the first date is considered. -->
            <xsl:value-of select="ancestor::TEI/teiHeader/profileDesc/correspDesc/correspAction[@type='sent']/date[1]/@from/substring(.,1,4)" /><!-- for time spans, only the start date is considered; letters are not written over several years anyway; there is also no case of a year change in the corpus. -->
            <xsl:value-of select="ancestor::TEI/teiHeader/profileDesc/correspDesc/correspAction[@type='sent']/date[1]/@notBefore/substring(.,1,4)" /><!--in the case of fuzzy dating, only the earliest possible date is taken into account; there are no undated letters in the corpus at all that are narrowed down to several years; dating indexing is always done to the year.-->
                
            <xsl:if test="not(ancestor::TEI/teiHeader/profileDesc/correspDesc/correspAction[@type='sent']/date/@*)"> 
                <xsl:text>oD</xsl:text>
            </xsl:if>
            <xsl:text>&#60;/data&#62;&#10;</xsl:text>
            <xsl:text>&#60;data key="Signatur"&#62;</xsl:text>
            <xsl:value-of select="ancestor::TEI//idno[@type='shelfmark']"/>
            <xsl:text>&#60;/data&#62;&#10;</xsl:text>
            <xsl:text>&#60;data key="XML-ID"&#62;</xsl:text>
            <xsl:value-of select="@xml:id"/>
            <xsl:text>&#60;/data&#62;&#10;</xsl:text>
            <xsl:text>&#60;/edge&#62;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#60;/graph&#62;&#10;&#60;/graphml&#62;</xsl:text>
    </xsl:template>

</xsl:stylesheet>
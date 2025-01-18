<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0"
    version="2.0">
    
    <!--This script filters all relationship information and lists the single text passages sorted by the relationship categories.-->
    
    <xsl:output method="text" indent="yes"/>
    
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        
        <xsl:text>1&#10;</xsl:text>
        
        <xsl:for-each select="//tei:span[contains(@ana,'1') and not(contains(@ana,'.1') or contains(@ana,'1.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each><!-- outputs every text passage with the ana code 1, but at the same time skips the anas in which 1 is only part of the code and thus another ana; but at the same time it outputs the anas which are connected with a P -->
        <xsl:text>&#10;&#10;</xsl:text>
            
        <xsl:text>1.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'1.1') and not(contains(@ana,'.1.1') or contains(@ana,'1.1.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>1.1.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'1.1.1') and not(contains(@ana,'.1.1.1') or contains(@ana,'1.1.1.'))]">
                <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
                <xsl:value-of select="."/>
                <xsl:text>&#10;&#10;</xsl:text>
            </xsl:for-each> 
        <xsl:text>&#10;&#10;</xsl:text>
            
        <xsl:text>1.1.1.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'1.1.1.1')]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>1.1.2&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'1.1.2') and not(contains(@ana,'.1.1.2') or contains(@ana,'1.1.2.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>1.1.2.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'1.1.2.1') and not(contains(@ana,'.1.1.2.1') or contains(@ana,'1.1.2.1.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>1.1.2.1.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'1.1.2.1.1') and not(contains(@ana,'.1.1.2.1.1') or contains(@ana,'1.1.2.1.1.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>1.1.2.2&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'1.1.2.2') and not(contains(@ana,'.1.1.2.2') or contains(@ana,'1.1.2.2.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>1.1.2.3&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'1.1.2.3') and not(contains(@ana,'.1.1.2.3') or contains(@ana,'1.1.2.3.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>1.2&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'1.2') and not(contains(@ana,'.1.2') or contains(@ana,'1.2.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>1.2.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'1.2.1') and not(contains(@ana,'.1.2.1') or contains(@ana,'1.2.1.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>2&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'2') and not(contains(@ana,'.2') or contains(@ana,'2.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>2.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'2.1') and not(contains(@ana,'.2.1') or contains(@ana,'2.1.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>2.1.a&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'2.1.a') and not(contains(@ana,'.2.1.a') or contains(@ana,'2.1.a.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>2.1.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'2.1.1') and not(contains(@ana,'.2.1.1') or contains(@ana,'2.1.1.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>2.2&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'2.2') and not(contains(@ana,'.2.2') or contains(@ana,'2.2.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>2.2.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'2.2.1') and not(contains(@ana,'.2.2.1') or contains(@ana,'2.2.1.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>2.3&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'2.3') and not(contains(@ana,'.2.3') or contains(@ana,'2.3.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        
        <xsl:text>2.4&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'2.4') and not(contains(@ana,'.2.4') or contains(@ana,'2.4.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>2.4.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'2.4.1') and not(contains(@ana,'.2.4.1') or contains(@ana,'2.4.1.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>2.5&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'2.5') and not(contains(@ana,'.2.5') or contains(@ana,'2.5.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>3&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'3') and not(contains(@ana,'.3') or contains(@ana,'3.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>3.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'3.1') and not(contains(@ana,'.3.1') or contains(@ana,'3.1.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>3.1.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'3.1.1') and not(contains(@ana,'.3.1.1') or contains(@ana,'3.1.1.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>3.1.2&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'3.1.2') and not(contains(@ana,'.3.1.2') or contains(@ana,'3.1.2.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>3.2&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'3.2') and not(contains(@ana,'.3.2') or contains(@ana,'3.2.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>3.2.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'3.2.1') and not(contains(@ana,'.3.2.1') or contains(@ana,'3.2.1.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        
        <xsl:text>3.2.2&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'3.2.2') and not(contains(@ana,'.3.2.2') or contains(@ana,'3.2.2.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>3.2.3&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'3.2.3') and not(contains(@ana,'.3.2.3') or contains(@ana,'3.2.3.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>3.3&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'3.3') and not(contains(@ana,'.3.3') or contains(@ana,'3.3.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>3.4&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'3.4') and not(contains(@ana,'.3.4') or contains(@ana,'3.4.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>3.5&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'3.5') and not(contains(@ana,'.3.5') or contains(@ana,'3.5.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>3.6&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'3.6') and not(contains(@ana,'.3.6') or contains(@ana,'3.6.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>4&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'4') and not(contains(@ana,'.4') or contains(@ana,'4.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>4.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'4.1') and not(contains(@ana,'.4.1') or contains(@ana,'4.1.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>4.2&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'4.2') and not(contains(@ana,'.4.2') or contains(@ana,'4.2.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>4.2.1&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'4.2.1') and not(contains(@ana,'.4.2.1') or contains(@ana,'4.2.1.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#10;&#10;</xsl:text>
        
        <xsl:text>4.3&#10;</xsl:text>
        <xsl:for-each select="//tei:span[contains(@ana,'4.3') and not(contains(@ana,'.4.3') or contains(@ana,'4.3.'))]">
            <xsl:value-of select="position()" /><xsl:text>. </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
        
        <xsl:text>&#10;&#10;</xsl:text>
        
    </xsl:template>
    
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="B[matches(., '\p{IsCyrillic}+')]">
        <B>
            <xsl:text>matched: </xsl:text>
            <xsl:value-of select="."/>
        </B>
    </xsl:template>
    
    <xsl:template match="B[not(matches(., '\p{InCyrillicExtended-A}+'))]">
        <B>
            <xsl:text>not matched: </xsl:text>
            <xsl:value-of select="."/>
        </B>
    </xsl:template>
    
    <xsl:template match="B[not(matches(., '\p{IsCyrillic}+'))]">
        <B>
            <xsl:text>not matched: </xsl:text>
            <xsl:value-of select="."/>
        </B>
    </xsl:template>
    
    
    
    
</xsl:stylesheet>
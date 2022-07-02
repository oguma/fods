<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
    xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
    exclude-result-prefixes="table text"
    version="1.0">
    
    <xsl:output indent="yes" omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <root>
            <xsl:apply-templates select="//table:table"/>
        </root>
    </xsl:template>
    
    <xsl:template match="table:table">
        <sheet name="{@table:name}">
            <xsl:apply-templates select="table:table-row"/>
        </sheet>
    </xsl:template>
    
    <xsl:template match="table:table-row">
        <row>
            <xsl:apply-templates select="table:table-cell"/>
        </row>
    </xsl:template>
    
    <xsl:template match="table:table-cell">
        <col><xsl:value-of select="text:p"/></col>
    </xsl:template>
    
</xsl:stylesheet>
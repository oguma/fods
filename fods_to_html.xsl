<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
    xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
    exclude-result-prefixes="table text"
    version="1.0">
    
    <xsl:output indent="yes" omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <div>
            <xsl:apply-templates select="//table:table"/>
        </div>
    </xsl:template>
    
    <xsl:template match="table:table">
        <table data-name="{@table:name}">
            <xsl:apply-templates select="table:table-row"/>
        </table>
    </xsl:template>
    
    <xsl:template match="table:table-row">
        <tr>
            <xsl:apply-templates select="table:table-cell"/>
        </tr>
    </xsl:template>
    
    <xsl:template match="table:table-cell">
        <td><xsl:value-of select="text:p"/></td>
    </xsl:template>
    
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="banco">
        <html>
            <head> </head>

            <body>
                <h2>Empleados</h2>
                <xsl:apply-templates select="empleado"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="empleado">
        <xsl:if test="sueldo > 2000">
            <ul>
                <li><xsl:value-of select="nombre"/></li>
                <li><xsl:value-of select="apellidos"/></li>
            </ul>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>

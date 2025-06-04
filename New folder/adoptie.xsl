<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" />

  <xsl:template match="/">
    <html>
      <head>
        <title>Lista Pisicilor de Adopție</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
            margin: 20px;
          }
          h1 {
            text-align: center;
            color: #333;
          }
          .pisica {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px;
            display: inline-block;
            width: 200px;
            vertical-align: top;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 2px 2px 8px rgba(0,0,0,0.1);
          }
          .pisica img {
            max-width: 100%;
            height: auto;
            border-radius: 4px;
          }
          .nume {
            text-align: center;
            font-weight: bold;
            margin-top: 10px;
            font-size: 1.2em;
            color: #555;
          }
        </style>
      </head>
      <body>
        <h1>Lista Pisicilor de Adopție</h1>
        <xsl:for-each select="adoptii/pisica">
          <div class="pisica">
            <img src="{imagine}" alt="{nume}"/>
            <div class="nume"><xsl:value-of select="nume"/></div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
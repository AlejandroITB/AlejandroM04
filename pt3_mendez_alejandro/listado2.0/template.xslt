<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
  <meta charset="utf-8" />
  <link rel="stylesheet" href="../css/alejandro.css"/>
  <title>Recetas</title>
</head>
<body>
		<header>
    <center>
      <img src="../imagenes/delicias.png" width="350" height="150"/>
    </center>
      <div class="hmenu">
				<ul class="menu">
					<li><a href="../index.html">INICIO</a></li>
					<li><a href="../index.html">SOBRE MI</a></li>
					<li><a href="../listado/listado.html">RECETAS</a></li>
					<li><a href="../contacto/contacto.html">CONTACTO</a></li>
					<li><a href="#">OTRAS COSAS</a></li>
				</ul>
			</div>
		</header>
  <center>
    <h2>LISTADO DE RECETAS</h2>
  </center>

  <table border="1">
    <tr bgcolor="#B8ABA9">
      <th style="text-align:center">Titulo</th>
      <th style="text-align:center">Dificultad</th>
      <th style="text-align:center">Tiempo</th>
      <th style="text-align:center">Ingredientes</th>
    </tr>
    <xsl:for-each select="receptes/recepta">
    <tr>
      <td><a href="{@url}"><xsl:value-of select="@url"/> <xsl:value-of select="title"/></a></td>
      <td><xsl:value-of select="dificultad"/></td>
      <td><xsl:value-of select="tiempo"/></td>
      <td><xsl:value-of select="ingredientes"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>


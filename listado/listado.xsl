<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html lang="es">
			<head>
				<link rel="stylesheet" type="text/css" href="../css/arxiu.css" />
				<title>Delicias Kitchen</title>
				<title>Receptes</title>
				<link rel="shortcut icon" href="../imagenes/Logo-Delicias.png" type="image/x-icon"></link>
			</head>
			<body>
				<header class="header">
					<div>
						<img src="../imagenes/Logo-Delicias.png" alt="Logo Delicias"></img>
					</div>
					<nav id="nav-principal">
						<div>
							<a href="../index.html">INICI</a>
							<a href="../sobre_mi/sobre_mi.html">SOBRE MÍ</a>
							<a href="../listado/listado.xml">RECEPTES</a>
							<a href="../contacto/contacto.html">CONTACTE</a>
							<a href="../otras_cosas/otras_cosas.html">ALTRES COSES</a>
							<a href="../login/login.html" style="color: #7ABA96">LOGIN</a>
						</div>
					</nav>
				</header>
				<main>
					<div id="recetas_pastas">
						<h2>RECEPTES</h2>
						<p>La pasta és un dels pilars bàsics per alimentar un esportista. Gràcies al seu alt valor nutricional aporta molts carbohidrats de baix índex glucèmic. Ideal per fer un esforç prolongat i no quedar-se sense energia.</p>
						<br></br>
						<xsl:for-each select="//receta">
							<xsl:sort select="nombre"/>
							<div class="receta">
								<img src="../imagenes/PLATOS/{position}.jpg" alt="receta" class="imagen"></img> <!-- Aquí ens posa la imatge referenciada en el XML, només el nombre -->
								<div class="texto">
									<a href="../receta/{position}.html"><xsl:value-of select="nombre"/></a> <!-- Aquí ens posa l'arxiu de la recepta desitjada-->
									<br></br>
									<p><i><xsl:value-of select="subtitulo"/></i></p> <!-- Aquí ens escull el subtítol de la recepta-->
									<br></br>
									<table>
										<tr>
											<td><b>Dificultat: </b> <xsl:value-of select="dificultad"/></td>
											<td><b>Cuina: </b> <xsl:value-of select="cocina"/></td>
											<td><b>Vegetariana: </b> <xsl:value-of select="vegetariana"/></td>
											<td><b>Celíacs: </b> <xsl:value-of select="celíacos"/></td>
											<td><b>Anticàncer: </b> <xsl:value-of select="anticáncer"/></td>
										</tr>
									</table>
									<br></br>
									<p><b>Autor: </b> <xsl:value-of select="autor"/></p> <!-- Aquí ens escull l'autor de la recepta-->
								</div>
							</div>
						</xsl:for-each>
					</div>
				</main>
				<footer class="footer">
					<div>
						<a href="https://www.facebook.com/">FACEBOOK</a>
						<a href="https://www.instagram.com/">INSTAGRAM</a>
						<a href="https://twitter.com/">TWITTER</a>
						<a href="https://www.pinterest.es/">PINTEREST</a>
						<a href="https://www.google.com/intl/es/gmail/about/">EMAIL</a>
						<a href="https://hypel.ink/">RSS</a>
					</div>
				</footer>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
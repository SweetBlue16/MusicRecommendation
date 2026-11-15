$usuario = "neo4j"
$contrasena = "TU_CONTRASEÑA"

Write-Host "Vaciando la base de datos actual..." -ForegroundColor Yellow
cypher-shell -u $usuario -p $contrasena "MATCH (n) DETACH DELETE n;"

Write-Host "Creando nodos..." -ForegroundColor Yellow
cypher-shell -u $usuario -p $contrasena -f "..\scripts\01_esquema_nodos.cypher"

Write-Host "Creando relaciones..." -ForegroundColor Yellow
cypher-shell -u $usuario -p $contrasena -f "..\scripts\02_esquema_relaciones.cypher"

Write-Host "La base de datos se reconstruyó con éxito." -ForegroundColor Green
<?php

echo 'Ingrese el largo del cuadro'."\n";
$largo = trim(fgets(STDIN));
echo 'Ingrese el ancho del cuadro'."\n";
$ancho = trim(fgets(STDIN));
echo 'Ingrese la clasificación del cuadro'."\n";
$clasificacion = trim(fgets(STDIN));
echo 'Ingrese el precio base'."\n";
$precioBase = trim(fgets(STDIN));
echo 'La superficie del cuadro es: ' ."\n".
    calcularSuperficie($ancho,$largo) .
    ' mts2, y el precio final es: $' .
    calcularPrecio(calcularSuperficie($ancho,$largo),$precioBase,$clasificacion) .
    '.';

/* Calcula el precio de venta del cuadro a partir
de su superficie, clasificación y precio base
*/
//@params FLOAT $superficie, $precioBase
//@param STRING $clasificacion
//@return FLOAT $precioFinal
function calcularPrecio($superficie,$precioBase,$clasificacion){
$incremento = 1;
  if($clasificacion=='P'||$clasificacion=='M'){
    $incremento = $incremento + 0.15;
  }elseif ($clasificacion=='E') {
    $incremento = $incremento + 0.05;
  }else{
    $incremento = $incremento + 0.02;
  }
  if($superficie>2){
    $incremento = $incremento + 0.1;
  }elseif ($superficie>=1 && $superficie<=2) {
    $incremento = $incremento + 0.08;
  }
$precioFinal = $precioBase*$incremento;
return $precioFinal;
}

function calcularSuperficie($ancho, $largo){
  $superficie=$ancho*$largo;
    return $superficie;
}

 ?>

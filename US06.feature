Feature: Recomendaciones educativas

  Scenario Outline: Visualización de sugerencias personalizadas
    Given el usuario accede al reporte del niño <NOMBRE>
    When entra a la sección "Recomendaciones"
    Then el sistema muestra sugerencias enfocadas en <ÁREA>

    Examples:
      | NOMBRE  | ÁREA               |
      | Mateo   | Memoria y atención|
      | Valentina | Lenguaje verbal |

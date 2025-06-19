Feature: Descarga del historial

  Scenario Outline: Generación de historial en PDF
    Given el <USUARIO> visualiza el perfil del niño <NOMBRE>
    When selecciona "Descargar historial"
    Then el sistema genera un archivo con <CANTIDAD> evaluaciones

    Examples:
      | USUARIO   | NOMBRE   | CANTIDAD      |
      | Padre     | Mateo    | 6             |
      | Psicólogo | Camila   | 10            |

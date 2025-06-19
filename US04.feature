Feature: Visualización de reportes

  Scenario Outline: Visualización de informe cognitivo
    Given el usuario <USUARIO> ha iniciado sesión
    When accede a la sección "Reportes"
    Then visualiza el informe del niño <NOMBRE_NIÑO> con estado "<ESTADO>"
    And tiene la opción de descargar el PDF del informe

    Examples:
      | USUARIO   | NOMBRE_NIÑO | ESTADO            |
      | Psicólogo | Mateo       | Actualizado       |
      | Padre     | Camila      | Sin actualización |

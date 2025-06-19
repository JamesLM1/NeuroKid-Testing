Feature: Registro de niño
  Scenario Outline: Agregar nuevo niño y validar datos
    Given el usuario inició sesión
    When selecciona "Agregar nuevo niño"
    And completa los datos: <NOMBRE>, <EDAD>, <NIVEL_ESCOLAR>
    And presiona "Guardar"
    Then el sistema muestra el mensaje "<MENSAJE>"

    Examples:
      | NOMBRE   | EDAD | NIVEL_ESCOLAR | MENSAJE                            |
      | Diego    | 5    | Inicial       | Niño registrado exitosamente       |
      | Valeria  | -1   | Primaria      | Error: edad inválida               |
      | Martín   | 7    | (vacío)       | Error: nivel escolar requerido     |

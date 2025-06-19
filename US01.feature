Feature: Registro de psicólogo
  Scenario Outline: Registro exitoso y manejo de errores
    Given el psicólogo accede a la plataforma de registro
    When completa sus datos personales: <NOMBRE>, <CORREO>, <CÓDIGO_COLEGIATURA>
    And acepta los términos y condiciones
    And presiona "Registrar"
    Then el sistema muestra el mensaje "<MENSAJE>"

    Examples:
      | NOMBRE     | CORREO                | CÓDIGO_COLEGIATURA | MENSAJE                        |
      | Laura      | laura@gmail.com       | PSY-12345           | Cuenta creada exitosamente     |
      | Marcos     | marcos.com            | PSY-98765           | Error: correo inválido         |
      | Alicia     | alicia@gmail.com      | (vacío)             | Error: colegiatura obligatoria |

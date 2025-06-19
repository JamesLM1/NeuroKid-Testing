Feature: Enviar feedback

  Scenario Outline: Envío de comentarios
    Given el usuario inicia sesión
    When accede al apartado "Feedback"
    And escribe "<COMENTARIO>"
    And presiona "Enviar"
    Then el sistema muestra "<RESPUESTA>"

    Examples:
      | COMENTARIO                         | RESPUESTA                        |
      | Muy buena experiencia              | ¡Gracias por tu opinión!         |
      | (vacío)                            | Error: comentario obligatorio    |

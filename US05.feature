Feature: Generación de alertas

  Scenario Outline: Activación automática de alerta
    Given el sistema detecta un <TIPO_CAMBIO> en el comportamiento del niño <NOMBRE>
    When el patrón supera los límites configurados
    Then se genera una alerta de tipo "<TIPO_ALERTA>" para <DESTINATARIO>

    Examples:
      | TIPO_CAMBIO     | NOMBRE  | TIPO_ALERTA     | DESTINATARIO        |
      | bajo rendimiento| Diego   | Cognitiva       | Psicólogo           |
      | hiperactividad  | Lucía   | Conductual      | Padres y Psicólogo  |

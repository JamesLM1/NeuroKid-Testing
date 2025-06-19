Feature: Recordatorios de seguimiento

  Scenario Outline: Envío de recordatorio mensual
    Given han pasado <DÍAS> días desde el último reporte del niño <NOMBRE>
    When el <USUARIO> accede al sistema
    Then recibe un recordatorio de seguimiento

    Examples:
      | DÍAS | NOMBRE  | USUARIO   |
      | 30   | Javier  | Psicólogo |
      | 45   | Luciana | Padre     |

Feature: Visualización de estadísticas

  Scenario Outline: Acceso a gráficos de progreso
    Given el psicólogo <NOMBRE> inicia sesión
    When selecciona "Estadísticas"
    Then visualiza gráficos de <TIPO_DATOS>

    Examples:
      | NOMBRE     | TIPO_DATOS              |
      | Dr. Ramos  | Evolución cognitiva     |
      | Dra. López | Comparativa por edad    |

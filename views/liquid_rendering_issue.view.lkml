view: liquid_rendering_issue {
  sql_table_name: demo_db.Salary;;

  measure: liquid_rendering_issue {
    description: "Prueba de formato con HTML"
    type: sum
    value_format: "#,##0"

    html:
    {% if rendered_value > 10000 %}
    <div style="background-color: lightblue; color: red;">{{ rendered_value | number_format }}</div>
    {% else %}
    <div style="background-color: transparent;">{{ rendered_value | number_format }}</div>
    {% endif %} ;;
  sql: ${TABLE}.Salary ;;
 }
}

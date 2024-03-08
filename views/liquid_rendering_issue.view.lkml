view: liquid_rendering_issue {
  sql_table_name: demo_db.users ;;

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.id ;;
  }

  measure: column_1 {
    description: "Prueba de formato con HTML"
    type: sum
    value_format: "#,##0"
    sql: ${TABLE}.id ;;
  }

  measure: column_2 {
    description: "Prueba de formato con HTML"
    type: sum
    value_format: "#,##0"
    sql: ${TABLE}.id ;;
  }

  measure: liquid_rendering_issue {
    description: "Prueba de formato con HTML"
    type: sum
    value_format: "#,##0"
    html:

    <div style="background-color: lightblue>100</div>


    sql: ${TABLE}.id ;;
  }


}

view: liquid_rendering_issue {

  sql_table_name: demo_db.Salary ;;


   measure: liquid_rendering_issue {
     description: "testing liquid_rendering_issue"
     type: sum
    value_format: "#,##0"
    sql: ${TABLE}.Salary ;;
   }
 }

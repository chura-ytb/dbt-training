

select
	"employee_id",
	concat("first_name", ' ', "last_name") as full_name
from
	"dbt_training"."raw"."employees"



	where "employee_id" not in (select "employee_id" from "dbt_training"."public"."employee_names")


select work_order,
       wo.store_id,
       repair_date,
       warranty,
       warranty_status,
       device_generation,
       product_description,
       customer_reported_code,
       triage_failure_code,
       triage_failure_description,
       "asp repair_code" asp_repair_code,
       "asp repair_description" asp_repair_description,
       rma_country,
       repair_start_time,
       repair_complete_time,
       repair_location,
       technician_id,
       rework_90_day,
       sales
from work_order wo
left join store s on wo.store_id = s.store_id
where depot = 0

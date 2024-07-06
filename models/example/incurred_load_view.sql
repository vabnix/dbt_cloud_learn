{{ config(materialized='view') }}

with incurred_data as (

    select * from {{ref('PrelimReport')}}

)

select PROJECT_ID,
	PACKAGE_TYPE,
	PACKAGE_SUBTYPE,
	PACKAGE,
	CBS_NAME,
	CBS_PATHID,
	CBS_STATUS,
	WPI_NUMBER,
	PO,
	COMMITMENT_ID,
	COMMITMENTS_AMT,
	ACTUALS_AMT,
	INCURRED_AMT,
	LAST_MONTH_INCURRED_AMT,
	INCURRED_TO_DATE,
	PRELIM_INCURRED_TO_DATE,
	NULL AS DIFF_INCURRED_COMMITMENTS,
	NULL AS DIFF_INCURRED_ACTUALS,
	CURRENT_MONTH_FORECAST,
	NULL AS IDENTIFIERS
from incurred_data


select brand_description, planning_year, country_of_origin_description, sum([estimated_landed_cost]*[total_QTY]) as ELC, sum([estimated_landed_cost]*[total_QTY]*[Duty_rate]/100) as Total_Duty FROM [SDS].[dbo].[TSDS_ACT] where country_of_origin_description like 'Mex%' and (planning_year = '2014' or planning_year = '2015' or planning_year = '2016')
group by planning_year, brand_description, country_of_origin_description
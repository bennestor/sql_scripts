--Number of chloroplast and mitochondria annotated genes
SELECT 
(SELECT COUNT(1) FROM genome_spreadsheet_sql_suba_local
WHERE location_localizer LIKE '%chloroplast%') AS 'Chloroplasts (localizer)',
(SELECT COUNT(1) FROM genome_spreadsheet_sql_suba_local
WHERE location_localizer LIKE '%mitochondr%') AS 'Mitochondria (localizer)',
(SELECT COUNT() FROM genome_spreadsheet_sql_suba_local
WHERE Arabidopsis_location_suba LIKE '%plastid%') AS 'Chloroplasts (suba)',
(SELECT COUNT(1) FROM genome_spreadsheet_sql_suba_local
WHERE Arabidopsis_location_suba LIKE '%mitochondr%') AS 'Mitochondria (suba)';

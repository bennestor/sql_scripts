-- Join localizer results for Hakea protein localisation predictions
CREATE TABLE 'genome_spreadsheet_sql_suba_local' AS
SELECT Gene_id, SwissProt_annot, Arabidopsis_hit_annot, l.field2 AS 'location_localizer',
Arabidopsis_location_suba, Arabidopsis_location_suba_all_predictors, Sequence_length, Sequence 
FROM genome_spreadsheet_sql_suba g LEFT JOIN localizer_ids l ON g.Gene_id=l.field1;

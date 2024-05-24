--Add information from SUBA predictions for homologous Arabidopsis protein locations (including updated Arabidopsis hit annotation)
CREATE TABLE 'genome_spreadsheet_sql_suba' AS 
SELECT Gene_id, SwissProt_annot, a.field2 AS 'Arabidopsis_hit_annot', suba_location_consensus AS 'Arabidopsis_location_suba', 
suba_location_all_predictors AS 'Arabidopsis_location_suba_all_predictors', Sequence_length, Sequence 
FROM genome_spreadsheet_sql g LEFT JOIN at_blast_filt a ON g.Gene_id=a.field1
LEFT JOIN tair_blast_filt_ids t ON g.Gene_id=t.field1
LEFT JOIN Suba_all s ON t.field2=s.locus;

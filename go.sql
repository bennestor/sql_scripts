--Add GO ID and description and named Hakea genes
CREATE TABLE 'genome_spreadsheet_sql_suba_local_go' AS 
SELECT g.Gene_id, n.Name, SwissProt_annot, b.tophit_nr AS 'NR_annot', Arabidopsis_hit_annot, location_localizer AS 'Location_localizer',
Arabidopsis_location_suba, Arabidopsis_location_suba_all_predictors, b.go_id AS 'GO_ID', b.go_names AS 'GO_description', 
Sequence_length, Sequence, n.Notes, n.Genome_v1_published_sequence 
FROM genome_spreadsheet_sql_suba_local g LEFT JOIN blast2go b ON g.Gene_id=b.seqname 
LEFT JOIN named_genes n ON g.Gene_id=n.Gene_id;

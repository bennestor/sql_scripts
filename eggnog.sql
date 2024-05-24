--Add eggnog annotation, GO id, and KEGG id (REPLACED BY GO.sql)
CREATE TABLE 'genome_spreadsheet_sql_suba_local_egg' AS
SELECT Gene_id, SwissProt_annot, Arabidopsis_hit_annot, e.Description AS 'eggNOG annotation', location_localizer,
Arabidopsis_location_suba, Arabidopsis_location_suba_all_predictors, e.GOs as 'GO_IDs', e.KEGG_Ko AS 'KEGG_Ko_IDs', 
Sequence_length, Sequence 
FROM genome_spreadsheet_sql_suba_local g LEFT JOIN eggnog_annot e ON g.Gene_id=e.Query;

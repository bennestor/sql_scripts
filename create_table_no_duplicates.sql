--Create table using genome_spreadsheet_v2_swprot_arath. In this file, the gene ID is doubled where there are no annotations, so this replaces the duplicate IDs with NULL.
CREATE TABLE 'genome_spreadsheet_sql' AS
SELECT Gene_id, CASE
  WHEN Gene_id = SwissProt_annotation THEN NULL
  ELSE SwissProt_annotation
END AS New_annotation,
CASE
  WHEN Gene_id = Top_Arabidopsis_hit THEN NULL
  ELSE Top_Arabidopsis_hit
END AS New_arabidopsis_hit, Sequence, LENGTH(Sequence) AS 'Sequence_length'
FROM genome_spreadsheet

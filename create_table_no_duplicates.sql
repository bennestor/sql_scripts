--Create table using genome_spreadsheet_v2_swprot_arath. In this file, the gene ID is doubled where there are no annotations, so this replaces the duplicate IDs with NULL.
CREATE TABLE 'genome_spreadsheet_sql' AS
SELECT Gene_id, CASE
  WHEN Gene_id = SwissProt_annotation THEN NULL
  ELSE SwissProt_annotation
END AS SwissProt_annot, Sequence, LENGTH(Sequence) AS 'Sequence_length'
FROM genome_spreadsheet

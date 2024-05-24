--Make table for all library expressions
CREATE TABLE 'spreadsheet_expression' AS
SELECT c.Geneid, CR0, CR1, CR4, CR7, CR12, R1, R10, R50, ML1, ML10, ML50, WLI, WLII, WLIII, WLIV, WLM 
FROM featurecounts_CR_TMM c JOIN featurecounts_RvL_TMM r ON c.Geneid=r.Geneid
JOIN featurecounts_WL_avg_reps_TMM w ON c.Geneid=w.Geneid;

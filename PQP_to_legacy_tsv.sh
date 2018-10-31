# Conversion of OpenMS 2.3 develop PQP to OpenMS 2.0 tsv/csv
# openswath/openswath:0.1.2::
 TargetedFileConverter -in sample.PQP -out sample.tsv -legacy_traml_id 
 
# Change column names and file extention 
sed -e '1s/TransitionId/transition_name/' -e '1s/TransitionGroupId/transition_group_id/' -e '1s/Decoy/decoy/' -e '1s/ProteinId/ProteinName/' -e '1s/NormalizedRetentionTime/Tr_recalibrated/' sample.tsv > sample.csv 

export OMP_SCHEDULE=dynamic,1
export OMP_NUM_THREADS=4

SGPEx_Converter ../data/ABL1_ChEMBL_NV_MW_800_linux.sdf ../data/ABL1_ChEMBL_NV_MW_800_1_7_S10.txt ../results/bcr-abl.lat

SGPEx_Clusterize -s ../results/bcr-abl.lat

SGPEx_GR -c ../results/bcr-abl_SEC.lat

SGPEx_PAD -c ../results/bcr-abl_SEC_GRClassic.lat

SGPEx_PAD -c ../results/bcr-abl_SEC_InactiveGR.lat

SGPEx_PAD -c ../results/bcr-abl_SEC_NormalizedGR.lat

SGPEx_ToCSV -c ../results/bcr-abl_SEC_GRClassic_PAD.lat

SGPEx_ToCSV -c ../results/bcr-abl_SEC_InactiveGR_PAD.lat

SGPEx_ToCSV -c ../results/bcr-abl_SEC_NormalizedGR_PAD.lat

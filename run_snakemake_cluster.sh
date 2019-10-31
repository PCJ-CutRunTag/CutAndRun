conda activate cutrun
snakemake --snakefile Snake2 \
    -j 499 \
    --cluster-config cluster.json \
    --cluster "bsub \
    -P {cluster.allocation} \
    -q {cluster.queue} \
    -n {cluster.tasks} \
    -R {cluster.resources} \
    -W {cluster.walltime} \
    -J {cluster.jobname} \
    -o {cluster.output} \
    -e {cluster.error}"
conda deactivate

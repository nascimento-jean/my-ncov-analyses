from snakemake.utils import min_version
min_version("6.0")

configfile: "ncov/defaults/parameters.yaml"

# config["workdir"] = "ncov/"

module ncov_workflow:
    snakefile: "ncov/Snakefile"
    config: config

use rule * from ncov_workflow as other_*

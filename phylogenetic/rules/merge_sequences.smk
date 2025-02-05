"""
This part of the workflow appends other data to the main dataset.

REQUIRED INPUTS:
    main_sequences  = data/sequences.fasta
    main_metadata   = data/metadata.tsv

OUTPUTS:

    merged_sequences = data/sequences_all.fasta
    merged_metadata  = data/metadata_all.tsv


This part of the workflow usually includes the following steps:

    - Any transformation to match the columns of the tsv files
    - Concatenation of the tsv and the sequences files

"""

# now this rule only rename main data.s
rule merge_data:
    input:
        sequences = "data/sequences.fasta",
        metadata = "data/metadata.tsv",
    output:
        sequences = "data/sequences_all.fasta",
        metadata = "data/metadata_all.tsv"
    shell:
        """
        cp {input.sequences} {output.sequences}
        cp {input.metadata} {output.metadata}
        """

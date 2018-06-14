baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: snpeff
inputs:
  max_heap_size:
    default: '4'
    doc: Specify max memory to use
    inputBinding:
      position: 5
      prefix: --max_heap_size
    type: string
  options:
    doc: Specify additional command line options
    inputBinding:
      position: 4
      prefix: --options
    type: string?
  output_ann_vcf_filename:
    default: output
    doc: Specify filename for annotated VCF
    inputBinding:
      position: 3
      prefix: --output_ann_vcf_filename
    type: string
  ref_genome:
    default: GRCh37.75
    doc: Specify ENSEMBL reference genomes
    inputBinding:
      position: 1
      prefix: --ref_genome
    type: string
  vcf_in:
    doc: Specify VCF input file
    inputBinding:
      position: 2
      prefix: --vcf_in
    type: File
label: SnpEff
outputs:
  output_ann_vcf:
    doc: Annotated vcf output file
    outputBinding:
      glob: output_ann_vcf/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/snpeff:28
s:author:
  class: s:Person
  s:name: Adam Halstead

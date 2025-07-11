cwlVersion: v1.2
$graph:
- class: Workflow
  label: graceal
  doc: Simple process for testing
  id: graceal
  inputs:
    to_print:
      doc: printing string
      label: printing string
      type: string
  outputs: {}
  steps:
    process:
      run: '#main'
      in:
        to_print: to_print
      out: []
- class: CommandLineTool
  id: main
  requirements:
    DockerRequirement:
      dockerPull: ghcr.io/grallewellyn/ogc_process_test:main
    NetworkAccess:
      networkAccess: true
    ResourceRequirement:
      ramMin: 5
      coresMin: 1
      outdirMax: 20
  baseCommand: /app/grace/print_script.sh
  inputs:
    to_print:
      type: string
      inputBinding:
        position: 1
        prefix: --to_print
  outputs: {}
s:author:
- class: s:Person
  s:name: grallewellyn
s:contributor:
- class: s:Person
  s:name: grallewellyn
s:citation: https://github.com/grallewellyn/ogc_process_test.git
s:codeRepository: https://github.com/grallewellyn/ogc_process_test.git
s:commitHash: 1d2b433595684722857aa0233f8f222f926945a2
s:dateCreated: 2025-07-11
s:license: https://github.com/MAAP-Project/sardem-sarsen/blob/main/LICENSE
s:softwareVersion: 1.0.0
s:version: test
s:releaseNotes: None
s:keywords: ogc, sar
$namespaces:
  s: https://schema.org/
$schemas:
- https://raw.githubusercontent.com/schemaorg/schemaorg/refs/heads/main/data/releases/9.0/schemaorg-current-http.rdf

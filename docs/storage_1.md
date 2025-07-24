# Storage

!!! warning "This page is a stub"

    As of now, this page is incomplete, possibly incorrect and
    open for [contributions](CONTRIBUTING.md).

There are multiple types of [resources](resources.md) you may need.
This page is about finding a place to store big amounts of data:
it shows a flowchart how to determine the storage resource
you can use, followed by an overview of all resources.

## Selecting the storage resource you can use

```mermaid
flowchart TD

  question_custom_rs[Need a custom setup?]

  data_science_platform[Data Science Platform]
  question_custom_rs --> |Yes| data_science_platform
  question_custom_rs --> |No| question_heavy_compute

  question_heavy_compute[Need heavy compute?]
  question_heavy_compute --> |Yes| question_hpc_cluster
  question_heavy_compute --> |No| research_field
  question_heavy_compute --> |No| others

  subgraph heavy_compute["Heavy compute"]

    berzelius_storage[Berzelius Storage]
    center_storage[Center Storage]
    centerstorage_nobackup[Centerstorage nobackup]
    crex_1[Crex 1]
    klemming[Klemming]
    mimer[Mimer]
    nobackup[Nobackup]

    question_hpc_cluster[Which HPC cluster do you use?]
    question_hpc_cluster --> |Berzelius| berzelius_storage
    question_hpc_cluster --> |Any NSC cluster| center_storage
    question_hpc_cluster --> |COSMOS| centerstorage_nobackup
    question_hpc_cluster --> |Bianca| crex_1
    question_hpc_cluster --> |Dardel| klemming
    question_hpc_cluster --> |Alvis| mimer
    question_hpc_cluster --> |Kebnekaise| nobackup
  end

  subgraph research_field["Research field"]

    bolin_centre_database[Bolin Centre Database]
    fega_sweden[FEGA Sweden]
    gbif_sweden[GBIF Sweden]
    sll_data_repository[SciLifeLab Data Repository]
    sites_data_portal[SITES Data Portal]
    sbdi[SBDI]

    question_research_field[What is your research field?]

    question_research_field --> |Climate| bolin_centre_database
    question_research_field --> |Genomics or phenomics| fega_sweden
    question_research_field --> |Biodiversity| gbif_sweden
    question_research_field --> |Biodiversity| sbdi
    question_research_field --> |Life science| sll_data_repository
    question_research_field --> |Ecosystems| sites_data_portal
  end

  subgraph others["Others"]

    eosc_file_sync_and_share[EOSC File Sync and Share]
    dcache[dCache]
    spirula[Spirula]
    doris[DORIS]
    vesta[Vesta]

    question_sync_and_share["Want to sync and share files?"]
    question_sync_and_share --> |Yes| eosc_file_sync_and_share
    question_sync_and_share --> |No| question_connect_naiss

    question_connect_naiss["Need a connection with a NAISS HPC cluster?"]
    question_connect_naiss --> |Yes| dcache
    question_connect_naiss --> |No| question_data_sensitivity

    question_data_sensitivity["Is the data sensitive?"]
    question_data_sensitivity --> |Yes| doris
    question_data_sensitivity --> |Yes| vesta
    question_data_sensitivity --> |No| spirula

  end
```

???- question "Why is this a useful resource?"

    This page is the only page that combines all the storage resources
    of all the different providers.

???- question "How is this list generated and updated?"

    On a daily basis,
    [the `update_content.yaml` continuous integration script](https://github.com/NBISweden/SCoRe_user_doc/blob/main/.github/workflows/update_content.yaml)
    checks the websites of the course providers and updates the list,
    using [the `scoreto` R package](https://github.com/richelbilderbeek/scoreto).

???- question "A storage provider is missing!"

    If a storage provider is missing, please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).

???- question "My storage resource is absent!"

    If your storage resource is absent, please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).

???- question "My storage resource can be displayed better!"

    If your storage resource can be displayed better,
    please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).

???- question "How can I read this data is a machine-friendly format?"

    This information can be downloaded as a `.csv` from
    [the `scoreto` R package](https://github.com/richelbilderbeek/scoreto/blob/main/inst/extdata/storage.csv).

<!-- storage_2.md is machine-generated and pasted below this file, storage_1.md -->

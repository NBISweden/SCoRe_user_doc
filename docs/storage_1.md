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

  berzelius_storage[Berzelius Storage]
  center_storage[Center Storage]
  centerstorage_nobackup[Centerstorage nobackup]
  crex_1[Crex 1]
  data_science_platform[Data Science Platform]
  dcache[dCache]
  eosc_file_sync_and_share[EOSC File Sync and Share]
  klemming[Klemming]
  mimer[Mimer]
  nobackup[Nobackup]
  researchdata[Researchdata.se]
  spirula[Spirula]
  vesta[Vesta]

  question_custom_rs[Need a custom setup?]
  question_custom_rs --> |Yes| data_science_platform
  question_custom_rs --> |No| question_heavy_compute

  question_heavy_compute[Need heavy compute?]
  question_heavy_compute --> |Yes| question_hpc_cluster
  question_heavy_compute --> |No| question_storage_time

  question_hpc_cluster[Which HPC cluster do you use?]
  question_hpc_cluster --> |Berzelius| berzelius_storage
  question_hpc_cluster --> |Any NSC cluster| center_storage
  question_hpc_cluster --> |COSMOS| centerstorage_nobackup
  question_hpc_cluster --> |Bianca| crex_1
  question_hpc_cluster --> |Dardel| klemming
  question_hpc_cluster --> |Alvis| mimer
  question_hpc_cluster --> |Kebnekaise| nobackup

  question_storage_time[How long must the data be stored?]
  question_storage_time --> |Short| eosc_file_sync_and_share
  question_storage_time --> |TODO| researchdata
  question_storage_time --> |TODO| spirula
  question_storage_time --> |Long, UU| vesta
  question_storage_time --> |Medium| dcache
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

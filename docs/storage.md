# Storage

There are multiple types of [resources](resources.md) you may need.
This page is about finding a place to store big amounts of data:
it shows a flowchart how to determine the storage resource
you can use, followed by an overview of all resources.

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

  heavy_compute ~~~ research_field
  question_hpc_cluster ~~~ research_field
  heavy_compute ~~~ others
  research_field ~~~ others
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


|HPC storage system name|Data sensitivity|Data activity|User fee|Accessible for|Center(s)|
|:----------------------------------------|:----------------|:-------------|:--------|:----------------------------------------------------------|:------|
|[Berzelius Storage](https://supr.naiss.se/resource/berzelius-storage/)|Regular          |Active        |Free       |Users of the NSC Berzelius HPC cluster                     |![NSC](logo/nsc_logo_66_x_24.png)|
|[Bolin Centre Database](https://bolin.su.se/data)|Regular          |Any           |Free       |Climate researchers                                        |![Stockholm University](logo/stockholm_university_logo_57_x_24.png)|
|[Center Storage](https://www.nsc.liu.se/support/storage/snic-centrestorage/)|Regular          |Active        |Free       |Users of the NSC HPC clusters                              |![NSC](logo/nsc_logo_66_x_24.png)|
|[Centerstorage nobackup](https://supr.naiss.se/resource/centrestorage-nobackup-lunarc/)|Regular          |Active        |Free       |Users of the LUNARC HPC clusters                           |![LUNARC](logo/lunarc_logo_42_x_24.png)|
|[Crex 1](https://supr.naiss.se/resource/crex-1/)|Regular          |Active        |Free       |Users of the UPPMAX Rackham and Snowy HPC clusters         |![UPPMAX](logo/uppmax_logo_116_x_24.png)|
|[Data Science Platform](https://datahub.aida.scilifelab.se/data-science-platform/)|Any              |Any           |[Prices](https://datahub.aida.scilifelab.se/services/#prices)|Anyone                                                     |![AIDA Data Hub](logo/aida_logo_24_x_24.png)|
|[dCache](https://supr.naiss.se/resource/dcache/)|Regular          |Active        |Free       |Swedish researchers                                        |![NAISS](logo/naiss_logo_148_x_24.png) ![Swestore](logo/swestore_logo_24_x_24.png)|
|[DORIS](https://snd.se/en/doris-researchers)|Any              |Any           |Free       |Swedish researchers                                        |![SND](logo/snd_logo_83_x_24.png) ![Doris SND](logo/doris_snd_logo_30_x_24.png)|
|[EOSC File Sync and Share](https://open-science-cloud.ec.europa.eu/services/file-sync-share)|Unsure           |Unknown       |Unknown    |EU citizens                                                |![EOSC](logo/eosc_logo_77_x_24.png)|
|[FEGA Sweden](https://fega.nbis.se/)     |Sensitive        |Any           |Free       |Swedish researchers working on genotype and phenotype data |![FEGA Sweden](logo/fega_sweden_logo_71_x_24.png)|
|[GBIF Sweden](https://gbif.se/)          |Regular          |Any           |Free       |Swedish researchers working on biodiversity data           |![GBIF](logo/gbif_logo_48_x_24.png)|
|[Klemming](https://supr.naiss.se/resource/klemming/)|Regular          |Active        |Free       |Users of the PDC Dardel HPC cluster                        |![PDC](logo/pdc_logo_21_x_24.png)|
|[Mimer](https://supr.naiss.se/resource/mimer/)|Regular          |Active        |Free       |Users of the C3SE Alvis HPC cluster                        |![C3SE](logo/c3se_logo_134_x_24.png)|
|[Nobackup](https://supr.naiss.se/resource/nobackup-hpc2n/)|Regular          |Active        |Free       |Users of the HPC2N HPC clusters                            |![HPC2N](logo/hpc2n_logo_84_x_24.png)|
|[SciLifeLab Data Repository](https://www.scilifelab.se/)|Regular          |Any           |Free       |Swedish life science researchers                           |![SciLifeLab](logo/sll_logo_110_x_24.png)|
|[SITES Data Portal](https://data.fieldsites.se/portal/)|Regular          |Any           |Free       |Swedish ecosystem researchers                              |![SITES](logo/sites_logo_68_x_24.png)|
|[Spirula](https://supr.naiss.se/resource/spirula/)|Regular          |Active        |Free       |Swedish data-driven life science researchers               |![SciLifeLab](logo/sll_logo_110_x_24.png) ![UPPMAX](logo/uppmax_logo_116_x_24.png)|
|[Swedish Biodiversity Data Infrastructure](https://biodiversitydata.se/)|Regular          |Any           |Free       |Swedish researchers working on biodiversity data           |![SBDI](logo/sbdi_logo_26_x_24.png)|
|[Vesta](https://www.uu.se/medarbetare/stod-och-verktyg/it/it-tjanster/tillaggstjanster/vesta)|Sensitive        |Any           |Free       |Uppsala University researchers                             |![UPPMAX](logo/uppmax_logo_116_x_24.png)|

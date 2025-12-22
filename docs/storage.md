# Storage
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/storage_1.md' INSTEAD -->
There are multiple types of [resources](resources.md) you may need.
This page is about finding a place to store big amounts of data:
it shows a flowchart how to determine the storage resource
you can use, followed by an overview of all resources.
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/storage_1.md' INSTEAD -->
Before you start, you should probably do a data classification
and write a data management plan.
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/storage_1.md' INSTEAD -->
Further things to consider include things like keeping a backup,
versioning, etc, but the flowchart below can be a useful start.
We will happily discuss your needs and help you find something suitable.

```mermaid
flowchart TD

  question_need_repo[Do you want to work actively on the data?]
  question_need_repo --> |Yes| question_heavy_compute
  question_need_repo --> |No| question_publish_archive

  question_publish_archive[Do you want to publish data?]
  question_publish_archive --> |Yes| research_field
  question_publish_archive --> |No| others

  question_heavy_compute[Need heavy compute?]
  question_heavy_compute --> |Yes| question_hpc_cluster[Cluster]
  question_heavy_compute --> |No| others

  click question_hpc_cluster "./compute.md" "Compute decision tree"

  subgraph research_field["Research field"]

    bolin_centre_database[Bolin Centre Database]
    click bolin_centre_database "https://bolin.su.se/data"
    fega_sweden[FEGA Sweden]
    click fega_sweden "https://fega.nbis.se"
    gbif_sweden[GBIF Sweden]
    click gbif_sweden "https://www.gbif.se"
    sll_data_repository[SciLifeLab Data Repository]
    click sll_data_repository "https://www.scilifelab.se/data/repository/"
    sites_data_portal[SITES Data Portal]
    click sites_data_portal "https://data.fieldsites.se/portal/"
    sbdi[SBDI]
    click sbdi "https://biodiversitydata.se"
    ena[ENA]
    click ena "https://www.ebi.ac.uk/ena/browser/home"

    question_research_field[What is your research field?]

    question_research_field --> |Climate| bolin_centre_database
    question_research_field --> |Genomics or phenomics| q_fega_sweden
    question_research_field --> |Biodiversity| gbif_sweden
    question_research_field --> |Biodiversity| sbdi
    question_research_field --> |Life science| sll_data_repository
    question_research_field --> |Ecosystems| sites_data_portal

    q_fega_sweden[Sensitive human data?] --> |Yes| fega_sweden
    q_fega_sweden[Sensitive human data?] --> |No| ena
  end

  subgraph others["Others"]

    eosc_file_sync_and_share[EOSC File Sync and Share]
    click eosc_file_sync_and_share "https://open-science-cloud.ec.europa.eu/services/file-sync-share"
    sll[SciLifeLab FAIR Storage]
    click sll "https://data.scilifelab.se/services/fairstorage/"
    uu[VESTA]
    click uu "https://www.uu.se/medarbetare/stod-och-verktyg/it/it-tjanster/tillaggstjanster/vesta"
    lu[COSMOS SENS or LUSEC]
    click lu "https://www.medarbetarwebben.lu.se/lagring-forskningsdata"
    gu[GU TRE]
    click gu "https://tre.gu.se"
    ki[OneDrive or SciShare]
    click ki "https://staff.ki.se/tools-and-support/it-and-telephony/store-and-share-files"

    question_sync_and_share["Want to sync and share files?"]
    question_sync_and_share --> |Yes| eosc_file_sync_and_share
    question_sync_and_share --> |No| question_data_sensitivity

    question_data_sensitivity["Is the data sensitive?"]
    question_data_sensitivity --> |Yes| local_secure
    question_data_sensitivity --> |No| sll

    local_secure[Local secure storage]
    local_secure --> |UU| uu
    local_secure --> |LU| lu
    local_secure --> |GU| gu
    local_secure --> |KI| ki

  end

```
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/storage_1.md' INSTEAD -->
???- question "Why is this a useful resource?"

    This page is the only page that combines all the storage resources
    of all the different providers.
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/storage_1.md' INSTEAD -->
???- question "How is this list generated and updated?"

    On a daily basis,
    [the `update_content.yaml` continuous integration script](https://github.com/NBISweden/SCoRe_user_doc/blob/main/.github/workflows/update_content.yaml)
    checks the websites of the course providers and updates the list,
    using [the `scoreto` R package](https://github.com/richelbilderbeek/scoreto).
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/storage_1.md' INSTEAD -->
???- question "A storage provider is missing!"

    If a storage provider is missing, please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/storage_1.md' INSTEAD -->
???- question "My storage resource is absent!"

    If your storage resource is absent, please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/storage_1.md' INSTEAD -->
???- question "My storage resource can be displayed better!"

    If your storage resource can be displayed better,
    please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/storage_1.md' INSTEAD -->
???- question "How can I read this data is a machine-friendly format?"

    This information can be downloaded as a `.csv` from
    [the `scoreto` R package](https://github.com/richelbilderbeek/scoreto/blob/main/inst/extdata/storage.csv).
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/storage_1.md' INSTEAD -->
<!-- storage_2.md is machine-generated and -->
<!-- pasted below this file, storage_1.md -->
<!-- markdownlint-disable MD060 --><!-- The pipes must not line up -->
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/storage_1.md' INSTEAD -->
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
|[GBIF Sweden](https://gbif.se/)          |Regular          |Any           |Free       |Swedish researchers working on biodiversity data           |![GBIF Sweden](logo/gbif_sweden_logo_48_x_24.png)|
|[Klemming](https://supr.naiss.se/resource/klemming/)|Regular          |Active        |Free       |Users of the PDC Dardel HPC cluster                        |![PDC](logo/pdc_logo_21_x_24.png)|
|[Mimer](https://supr.naiss.se/resource/mimer/)|Regular          |Active        |Free       |Users of the C3SE Alvis HPC cluster                        |![C3SE](logo/c3se_logo_134_x_24.png)|
|[Nobackup](https://supr.naiss.se/resource/nobackup-hpc2n/)|Regular          |Active        |Free       |Users of the HPC2N HPC clusters                            |![HPC2N](logo/hpc2n_logo_84_x_24.png)|
|[SciLifeLab Data Repository](https://www.scilifelab.se/)|Regular          |Any           |Free       |Swedish life science researchers                           |![SciLifeLab](logo/sll_logo_110_x_24.png)|
|[SITES Data Portal](https://data.fieldsites.se/portal/)|Regular          |Any           |Free       |Swedish ecosystem researchers                              |![SITES](logo/sites_logo_68_x_24.png)|
|[Spirula](https://supr.naiss.se/resource/spirula/)|Regular          |Active        |Free       |Swedish data-driven life science researchers               |![SciLifeLab](logo/sll_logo_110_x_24.png) ![UPPMAX](logo/uppmax_logo_116_x_24.png)|
|[Swedish Biodiversity Data Infrastructure](https://biodiversitydata.se/)|Regular          |Any           |Free       |Swedish researchers working on biodiversity data           |![SBDI](logo/sbdi_logo_26_x_24.png)|
|[Vesta](https://www.uu.se/medarbetare/stod-och-verktyg/it/it-tjanster/tillaggstjanster/vesta)|Sensitive        |Any           |Free       |Uppsala University researchers                             |![UPPMAX](logo/uppmax_logo_116_x_24.png)|
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/storage_1.md' INSTEAD -->
<!-- markdownlint-enable MD060 -->

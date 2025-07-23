# Storage

!!! warning "This page is a stub"

    As of now, this page is incomplete, possibly incorrect and
    open for [contributions](CONTRIBUTING.md).

There are multiple types of [resources](resources.md) you may need.
This page is about finding a place to store big amounts of data:
it shows a flowchart how to determine the storage resource
you can use, followed by an overview of all resources.

## Selecting the storage resource you can use

```text
TODO
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
|:----------------------|:----------------|:-------------|:----------|:--------------------------------------------------|:-------------------|
|[Berzelius Storage](https://supr.naiss.se/resource/berzelius-storage/)|regular          |active        |Free       |Users of the NSC Berzelius HPC cluster             |![NSC](logo/nsc_logo_66_x_24.png)|
|[Center Storage](https://www.nsc.liu.se/support/storage/snic-centrestorage/)|regular          |active        |Free       |Users of the NSC HPC clusters                      |![NSC](logo/nsc_logo_66_x_24.png)|
|[Centerstorage nobackup](https://supr.naiss.se/resource/centrestorage-nobackup-lunarc/)|regular          |active        |Free       |Users of the LUNARC HPC clusters                   |![LUNARC](logo/lunarc_logo_42_x_24.png)|
|[Crex 1](https://supr.naiss.se/resource/crex-1/)|regular          |active        |Free       |Users of the UPPMAX Rackham and Snowy HPC clusters |![UPPMAX](logo/uppmax_logo_116_x_24.png)|
|[Data Science Platform](https://datahub.aida.scilifelab.se/data-science-platform/)|any              |any           |[Prices](https://datahub.aida.scilifelab.se/services/#prices)|Anyone                                             |![AIDA Data Hub](logo/aida_logo_24_x_24.png)|
|[dCache](https://supr.naiss.se/resource/dcache/)|regular          |active        |Free       |Swedish researchers                                |![NAISS](logo/naiss_logo_148_x_24.png) ![Swestore](logo/swestore_logo_24_x_24.png)|
|[EOSC EU Node](https://open-science-cloud.ec.europa.eu/)|regular          |active        |Free       |Researchers in Europe                              |![EOSC](logo/eosc_logo_77_x_24.png)|
|[Klemming](https://supr.naiss.se/resource/klemming/)|regular          |active        |Free       |Users of the PDC Dardel HPC cluster                |![PDC](logo/pdc_logo_21_x_24.png)|
|[Mimer](https://supr.naiss.se/resource/mimer/)|regular          |active        |Free       |Users of the C3SE Alvis HPC cluster                |![C3SE](logo/c3se_logo_134_x_24.png)|
|[Nobackup](https://supr.naiss.se/resource/nobackup-hpc2n/)|regular          |active        |Free       |Users of the HPC2N HPC clusters                    |![HPC2N](logo/hpc2n_logo_84_x_24.png)|
|[Spirula](https://supr.naiss.se/resource/spirula/)|regular          |active        |Free       |Swedish data-driven life science researchers       |![SciLifeLab](logo/sll_logo_110_x_24.png) ![UPPMAX](logo/uppmax_logo_116_x_24.png)|
|[Vesta](https://www.uu.se/medarbetare/stod-och-verktyg/it/it-tjanster/tillaggstjanster/vesta)|sensitive        |any           |Free       |Uppsala University researchers                     |![UPPMAX](logo/uppmax_logo_116_x_24.png)|

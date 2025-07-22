# Resources

!!! warning "This page is a stub"

    As of now, this page is incomplete, possibly incorrect and
    open for [contributions](CONTRIBUTING.md).

There are multiple types of [resources](resources.md) you may need.
This page is about finding a place to run heavy calculations on:
it shows a flowchart how to determine the computational resource
you can use, followed by an overview of all resources.

## Selecting the computational resource you can use

```mermaid
flowchart TD
  sensitive_data[Do you work with sensitive data?]
  compute_ai[Do you focus on AI?]

  sens_compute_location[Where are you located?]
  compute_location[Where are you located?]

  alvis[Alvis]
  arrhenius[Arrhenius]
  bianca[Bianca]
  cosmos_sens[COSMOS SENS]
  dardel[Dardel]
  maja[Maja]
  rackham[Rackham]
  pelle[Pelle]
  tetralith[Tetralith]
  vesta[Vesta]

  sensitive_data --> |No| compute_ai
  sensitive_data --> |Yes| sens_compute_location

  compute_ai --> |No| compute_location
  compute_ai --> |Yes| alvis

  compute_location --> |Anywhere in Sweden| dardel
  compute_location --> |Anywhere in Sweden| tetralith
  compute_location --> |Umeå| Kebnekase
  compute_location --> |Uppsala| rackham
  rackham -.-> |Future| pelle

  sens_compute_location --> |Anywhere in Sweden| bianca
  sens_compute_location --> |Lund| cosmos_sens
  sens_compute_location --> |Uppsala| vesta
  sens_compute_location -.-> |Uppsala| maja
  bianca -.-> |Future| arrhenius
```

???- question "Why is this a useful resource?"

    This page is the only page that combines all the computational resources
    of all the different providers.

???- question "How is this list generated and updated?"

    On a daily basis,
    [the `update_content.yaml` continuous integration script](https://github.com/NBISweden/SCoRe_user_doc/blob/main/.github/workflows/update_content.yaml)
    checks the websites of the course providers and updates the list,
    using [the `scoreto` R package](https://github.com/richelbilderbeek/scoreto).

???- question "A compute provider is missing!"

    If a compute provider is missing, please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).

???- question "My compute resource is absent!"

    If your compute resource is absent, please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).

???- question "My compute resource can be displayed better!"

    If your compute resource can be displayed better,
    please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).

???- question "How can I read this data is a machine-friendly format?"

    This information can be downloaded as a `.csv` from
    [the `scoreto` R package](https://github.com/richelbilderbeek/scoreto/blob/main/inst/extdata/compute.csv).

<!-- compute_2.md is machine-generated and pasted below this file, compute_1.md -->


|HPC cluster name|Type of computation|Type of data|User fee|Accessible for|Center(s)|
|:----------------------------|:----------------|:---------|:----------|:----------------------|:-------------------------|
|[Alvis](https://www.c3se.chalmers.se/about/Alvis/)|AI               |Regular   |Free       |Swedish researchers    |![C3SE](logo/c3se_logo_134_x_24.png) ![NAISS](logo/naiss_logo_148_x_24.png)|
|[Bianca](https://docs.uppmax.uu.se/cluster_guides/bianca/)|General purpose  |Sensitive |Free       |Swedish researchers    |![NAISS](logo/naiss_logo_148_x_24.png) ![UPPMAX](logo/uppmax_logo_116_x_24.png)|
|[COSMOS](https://www.lunarc.lu.se/systems/cosmos/)|General purpose  |Regular   |Free       |Swedish researchers    |![LUNARC](logo/lunarc_logo_42_x_24.png) ![NAISS](logo/naiss_logo_148_x_24.png)|
|[COSMOS SENS](https://www.lunarc.lu.se/systems/cosmos-sens/)|General purpose  |Sensitive |Free       |Lund researchers       |![LUNARC](logo/lunarc_logo_42_x_24.png)|
|[Dardel](https://www.pdc.kth.se/hpc-services/computing-systems/dardel-hpc-system/dardel)|General purpose  |Regular   |Free       |Swedish researchers    |![NAISS](logo/naiss_logo_148_x_24.png) ![PDC](logo/pdc_logo_21_x_24.png)|
|[Data Science Platform](https://datahub.aida.scilifelab.se/data-science-platform/)|Any              |Any       |[User fee](https://datahub.aida.scilifelab.se/services/#prices)|Anyone                 |![AIDA Data Hub](logo/aida_logo_24_x_24.png)|
|[EOSC EU Node](https://open-science-cloud.ec.europa.eu/)|General purpose  |Regular   |Free       |Researchers in Europe  |![EOSC](logo/eosc_logo_77_x_24.png)|
|[Kebnekaise](https://www.hpc2n.umu.se/resources/hardware/kebnekaise)|General purpose  |Regular   |Free       |Umeå researchers       |![HPC2N](logo/hpc2n_logo_84_x_24.png)|
|[Kebnekaise GPU](https://www.hpc2n.umu.se/resources/hardware/kebnekaise)|General purpose  |Regular   |Free       |Umeå researchers       |![HPC2N](logo/hpc2n_logo_84_x_24.png)|
|[Kebnekaise Large Memory](https://www.hpc2n.umu.se/resources/hardware/kebnekaise)|General purpose  |Regular   |Free       |Umeå researchers       |![HPC2N](logo/hpc2n_logo_84_x_24.png)|
|[LUMI](https://lumi-supercomputer.eu/)|General purpose  |Regular   |Free       |Swedish researchers    |![CSC](logo/csc_logo_31_x_24.png) ![NAISS](logo/naiss_logo_148_x_24.png)|
|[Rackham](https://docs.uppmax.uu.se/cluster_guides/rackham/)|General purpose  |Regular   |Free       |Uppsala researchers    |![NAISS](logo/naiss_logo_148_x_24.png) ![UPPMAX](logo/uppmax_logo_116_x_24.png)|
|[Sigma](https://www.nsc.liu.se/systems/sigma/)|General purpose  |Regular   |Free       |Linköping researchers  |![NSC](logo/nsc_logo_66_x_24.png)|
|[Swedish Science Cloud](https://cloud.snic.se/)|Hosting websites |Regular   |Free       |Swedish researchers    |![NAISS](logo/naiss_logo_148_x_24.png)|
|[Tetralith](https://www.nsc.liu.se/systems/tetralith/)|General purpose  |Regular   |Free       |Swedish researchers    |![NAISS](logo/naiss_logo_148_x_24.png) ![NSC](logo/nsc_logo_66_x_24.png)|
|[Trusted research environment](https://tre.gu.se/)|General purpose  |Any       |Free       |Gothenburg researchers |![University of Gothenburg](logo/university_of_gothenburg_logo_24_x_24.png)|
|[Vera](https://www.c3se.chalmers.se/about/Vera/)|General purpose  |Regular   |Free       |Gothenburg researchers |![C3SE](logo/c3se_logo_134_x_24.png)|
|[Verdi](https://datahub.aida.scilifelab.se/data-science-platform/hardware/#verdi)|General purpose  |Any type  |Depends    |Anyone                 |![AIDA Data Hub](logo/aida_logo_24_x_24.png)|

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

## Overview

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

HPC cluster                 | Center(s)              | Compute type    | Compute   | Storage   |Type of data        | Costs for user                                                | Accessible for       |Provider(s)
----------------------------|------------------------|-----------------|-----------|-----------|--------------------|---------------------------------------------------------------|----------------------|---------
Alvis                       | NAISS, C3SE            | AI              | Medium    | Low       | Regular            | Free                                                          | Swedish researchers  |![NAISS logo](logo/naiss_logo_inverted_148_x_24.png)
Bianca                      | NAISS, UPPMAX          | General purpose | Medium    | Low       | Sensitive          | Free                                                          | Swedish researchers  |![NAISS logo](logo/naiss_logo_inverted_148_x_24.png) ![UPPMAX logo](logo/uppmax_logo_116_x_24.png)
COSMOS                      | NAISS, LUNARC          | General purpose | Medium    | Low       | Regular            | Free                                                          | Swedish researchers  |![NAISS logo](logo/naiss_logo_inverted_148_x_24.png) ![LUNARC logo](logo/lunarc_logo_42_x_24.png)
COSMOS SENS                 | LUNARC                 | General purpose | Medium    | Low       | Sensitive          | Free                                                          | Lund researchers     |![LUNARC logo](logo/lunarc_logo_42_x_24.png)
Dardel                      | NAISS, PDC             | General purpose | Medium    | Low       | Regular            | Free                                                          | Swedish researchers  |![NAISS logo](logo/naiss_logo_inverted_148_x_24.png) ![PDC logo](logo/pdc_logo_21_x_24.png)
Data Science Platform       | AIDA Data Hub          | Any             | Low-Medium| Low-Medium| Any                | [Prices](https://datahub.aida.scilifelab.se/services/#prices) | Anyone               |![AIDA Data hub logo](logo/aida_logo_24_x_24.png)
EOSC EU Node                | EOSC                   | General purpose | Low       | Low       | Active, regular    | Free                                                          | Researchers in Europe|.
Kebnekaise                  | HPC2N                  | General purpose | Medium    | Low       | Regular            | Free                                                          | Umeå researchers     |![HPC2N logo](logo/hpc2n_logo_84_x_24.png)
Kebnekaise GPU              | HPC2N                  | General purpose | Medium    | Low       | Regular            | Free                                                          | Umeå researchers     |![HPC2N logo](logo/hpc2n_logo_84_x_24.png)
Kebnekaise Large Memory     | HPC2N                  | General purpose | Medium    | Low       | Regular            | Free                                                          | Umeå researchers     |![HPC2N logo](logo/hpc2n_logo_84_x_24.png)
LUMI                        | NAISS, CSC             | General purpose | High      | Low       | Regular            | Free                                                          | Swedish researchers  |![NAISS logo](logo/naiss_logo_inverted_148_x_24.png)
Rackham                     | NAISS, UPPMAX          | General purpose | Medium    | Low       | Regular            | Free                                                          | Uppsala researchers  |![UPPMAX logo](logo/uppmax_logo_116_x_24.png)|
Sigma                       | NSC                    | General purpose | Medium    | Low       | Regular            | Free                                                          | Linköping researchers|.
Swedish Science Cloud       | NAISS                  | Hosting websites| Low       | Low       | Regular            | Free                                                          | Swedish researchers  |![NAISS logo](logo/naiss_logo_inverted_148_x_24.png)
Trusted research environment| Göteborg University    | General purpose | Low-Medium| Low-Medium| Any                | Free                                                          | Göteborg researchers |.
Tetralith                   | NAISS, NSC             | General purpose | Medium    | Low       | Regular            | Free                                                          | Swedish researchers  |![NAISS logo](logo/naiss_logo_inverted_148_x_24.png)
Vera                        | C3SE                   | General purpose | Medium    | Low       | Regular            | Free                                                          | Linköping researchers|.
Verdi                       | AIDA Data Hub          | General purpose | Low       | High      | Any type           | Depends                                                       | Anyone               |![AIDA Data hub logo](logo/aida_logo_24_x_24.png)
`Unknown`                   | SND                    | None            | None      | High      | Regular            | Free                                                          | Swedish researchers  |.

<!-- markdownlint-enable MD013 -->

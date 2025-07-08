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

HPC cluster            | Center(s)              | Compute type    | Compute   | Storage  |Type of data        | Costs for user                                                | Accessible for
-----------------------|------------------------|-----------------|-----------|----------|--------------------|---------------------------------------------------------------|----------------------
Alvis                  | NAISS, C3SE            | AI              | Medium    | Low      | Regular            | Free                                                          | Swedish researchers
Bianca                 | NAISS, UPPMAX          | General purpose | Medium    | Low      | Sensitive          | Free                                                          | Swedish researchers
COSMOS                 | NAISS, LUNARC          | General purpose | Medium    | Low      | Regular            | Free                                                          | Swedish researchers
COSMOS SENS            | LUNARC                 | General purpose | Medium    | Low      | Sensitive          | Free                                                          | Lund researchers
Dardel                 | NAISS, PDC             | General purpose | Medium    | Low      | Regular            | Free                                                          | Swedish researchers
Data Science Platform  | AIDA Data Hub          | Any             | Low-Medium|Low-Medium|Any                 | [Prices](https://datahub.aida.scilifelab.se/services/#prices) | Anyone
Kebnekaise             | HPC2N                  | General purpose | Medium    | Low      | Regular            | Free                                                          | Umeå researchers
Kebnekaise GPU         | HPC2N                  | General purpose | Medium    | Low      | Regular            | Free                                                          | Umeå researchers
Kebnekaise Large Memory| HPC2N                  | General purpose | Medium    | Low      | Regular            | Free                                                          | Umeå researchers
LUMI                   | NAISS, CSC             | General purpose | High      | Low      | Regular            | Free                                                          | Swedish researchers
Rackham                | NAISS, UPPMAX          | General purpose | Medium    | Low      | Regular            | Free                                                          | Uppsala researchers
Sigma                  | NSC                    | General purpose | Medium    | Low      | Regular            | Free                                                          | Linköping researchers
SweStore               | NAISS                  | None            | None      | High     | Active, regular    | Free                                                          | Swedish researchers
Swedish Science Cloud  | NAISS                  | Hosting websites| Low       | Low      | Regular            | Free                                                          | Swedish researchers
Tetralith              | NAISS, NSC             | General purpose | Medium    | Low      | Regular            | Free                                                          | Swedish researchers
Vera                   | C3SE                   | General purpose | Medium    | Low      | Regular            | Free                                                          | Linköping researchers
Verdi                  | AIDA Data Hub          | General purpose | Low       | High     | Any type           | Depends                                                       | Anyone
`Unknown`              | SND                    | None            | None      | High     | Regular            | Free                                                          | Swedish researchers

<!-- markdownlint-enable MD013 -->

# Resources

!!! warning "This page is a stub"

    As of now, this page is incomplete, possibly incorrect and
    open for [contributions](CONTRIBUTING.md).

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

HPC cluster | Center(s)              | Compute type   | Compute | Storage |Type of data| Accessible for
------------|------------------------|----------------|---------|---------|------------|--------------------
Alvis       | NAISS                  | AI             | Medium  | Low     | Regular    | Swedish researchers
Bianca      | NAISS, UPPMAX          | General purpose| Medium  | Low     | Sensitive  | Swedish researchers
COSMOS      | NAISS, LUNARC          | General purpose| Medium  | Low     | Regular    | Swedish researchers
COSMOS SENS | LUNARC                 | General purpose| Medium  | Low     | Sensitive  | Lund researchers
Dardel      | NAISS, PDC             | General purpose| Medium  | Low     | Regular    | Swedish researchers
Kebnekaise  | HPC2N                  | General purpose| Medium  | Low     | Regular    | Umeå researchers
LUMI        | NAISS                  | General purpose| High    | Low     | Regular    | Swedish researchers
Rackham     | NAISS, UPPMAX          | General purpose| Medium  | Low     | Regular    | Uppsala researchers
Tetralith   | NAISS, NSC             | General purpose| Medium  | Low     | Regular    | Swedish researchers
Vera        | NSC                    | General purpose| Medium  | Low     | Regular    | Linköping researchers
Verdi       | AIDA Data Hub          | General purpose| Low     | High    | Any type   | Anyone

<!-- markdownlint-enable MD013 -->


```mermaid
flowchart TD
  sensitive_data[Sensitive data?]
  compute[Compute or storage?]
  compute_ai[Focus on AI?]

  sens_compute[Compute or storage?]
  sens_compute_location[Where are you located?]
  compute_location[Where are you located?]
  compute_ai_location[Where are you located?]

  aida_data_hub[AIDA data hub]
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

  sensitive_data --> |No| compute
  sensitive_data --> |Yes| sens_compute

  sens_compute --> |Compute| sens_compute_location
  sens_compute --> |Storage| aida_data_hub

  compute --> |Compute| compute_ai
  compute --> |Storage| aida_data_hub

  compute_ai --> |No| compute_location
  compute_ai --> |Yes| compute_ai_location

  compute_location --> |Anywhere in Sweden| dardel
  compute_location --> |Anywhere in Sweden| tetralith
  compute_location --> |Umeå| Kebnekase
  compute_location --> |Uppsala| rackham
  rackham -.-> |Future| pelle

  compute_ai_location --> |Anywhere in Sweden| alvis

  sens_compute_location --> |Anywhere in Sweden| bianca
  sens_compute_location --> |Lund| cosmos_sens
  sens_compute_location --> |Uppsala| vesta
  sens_compute_location -.-> |Uppsala| maja
  bianca -.-> |Future| arrhenius
```

- [AIDA Data Hub resources](https://nbisweden.github.io/aida-datahub-docs/)
- [NBIS resources](https://nbis.se/services/computational-resources)

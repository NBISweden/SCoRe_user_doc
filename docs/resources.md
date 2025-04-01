# Resources

!!! warning "Incomplete"

    As of now, this table is incomplete. 

    If some resource is missing, please [contact us](contact_us.md).

HPC cluster | Center                 | Purpose
------------|------------------------|----------------------------------------------
Alvis       | NAISS                  | AI
Bianca      | NAISS                  | Sensitive data, more compute than storage
COSMOS      | NAISS                  | General purpose
Dardel      | NAISS                  | General purpose
LUMI        | NAISS                  | General purpose
Tetralith   | NAISS                  | General purpose
Verdi       | AIDA Data Hub          | Sensitive data, more storage than compute
`?`         | `[Other centers]`      | `[description]`


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

- [NBIS resources](https://nbis.se/services/computational-resources)

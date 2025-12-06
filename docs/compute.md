# Compute
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
There are multiple types of [resources](resources.md) you may need.
This page is about finding a place to run heavy calculations on:
it shows a flowchart how to determine the computational resource
you can use, followed by an overview of all resources.
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
```mermaid
flowchart TD
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
  subgraph researcher_on_sensitive_data[Researcher, sensitive data]
    arrhenius_rs[Arrhenius]
    bianca[Bianca]
    cosmos_sens[COSMOS SENS or LUSEC]    
    data_science_platform_rs[Data Science Platform]
    lumi_rs[LUMI]
    maja[Maja]
    trusted_research_environment_rs[Trusted Research Environment]

    question_custom_rs[Need a custom setup or a GPU-focused system?]
    question_custom_rs --> |Yes| data_science_platform_rs
    question_custom_rs --> |No| question_where_rs

    question_where_rs[Where are you located?]
    question_where_rs --> |Sweden| bianca
    question_where_rs --> |Lund| cosmos_sens
    question_where_rs --> |Gothenburg| trusted_research_environment_rs

    bianca -.-> |Future| maja
    bianca -.-> |Future| arrhenius_rs
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
  end
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
  subgraph researcher_on_regular_data[Researcher, regular data]
    alvis[Alvis]
    arrhenius_rr[Arrhenius]
    berzelius[Berzelius]
    cosmos[COSMOS]
    dardel[Dardel]
    data_science_platform_rr[Data Science Platform]
    kebnekaise[Kebnekaise]
    lumi[LUMI]
    pelle[Pelle]
    rackham[Rackham]
    sigma[Sigma]
    tetralith[Tetralith]
    vera[Vera]

    question_custom_rr[Need a custom setup?]
    question_custom_rr --> |Yes| data_science_platform_rr
    question_custom_rr --> |No| question_very_heavy_compute_rr

    question_very_heavy_compute_rr[Need very heavy compute?]
    question_very_heavy_compute_rr --> |Yes| lumi
    question_very_heavy_compute_rr --> |No| question_ai

    question_ai[Are you working with AI?]
    question_ai --> |Yes| question_kaw
    question_ai --> |No| question_where_rr

    question_kaw[Are you affiliated with KAW, DDLS, WASP, or similar?]
    question_kaw --> |Yes| berzelius
    question_kaw --> |No| alvis

    question_where_rr[Where are you located?]
    question_where_rr --> |Lund| cosmos
    question_where_rr --> |Sweden| dardel
    question_where_rr --> |Lund| kebnekaise
    question_where_rr --> |Sweden| tetralith
    question_where_rr --> |Linköping| sigma
    question_where_rr --> |Gothenburg| vera
    question_where_rr --> |Uppsala| rackham

    rackham -.-> |Future| pelle
    rackham -.-> |Future| arrhenius_rr
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
  end
  
  subgraph anyone_on_any_data[Anyone, any data]
    aa_data_science_platform[Data Science Platform]
  end
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
  job_question[Are you a researcher?]
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
  job_question --> |No| anyone_on_any_data
  job_question --> |Yes| sensitivity_question
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
  sensitivity_question[Do you work with sensitive data?]
  sensitivity_question --> |Yes| researcher_on_sensitive_data
  sensitivity_question --> |No| researcher_on_regular_data
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
  researcher_on_sensitive_data ~~~ researcher_on_regular_data 
```
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
???- question "Why is this a useful resource?"

    This page is the only page that combines all the computational resources
    of all the different providers.
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
???- question "How is this list generated and updated?"

    On a daily basis,
    [the `update_content.yaml` continuous integration script](https://github.com/NBISweden/SCoRe_user_doc/blob/main/.github/workflows/update_content.yaml)
    checks the websites of the course providers and updates the list,
    using [the `scoreto` R package](https://github.com/richelbilderbeek/scoreto).
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
???- question "A compute provider is missing!"

    If a compute provider is missing, please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
???- question "My compute resource is absent!"

    If your compute resource is absent, please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
???- question "My compute resource can be displayed better!"

    If your compute resource can be displayed better,
    please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
???- question "How can I read this data is a machine-friendly format?"

    This information can be downloaded as a `.csv` from
    [the `scoreto` R package](https://github.com/richelbilderbeek/scoreto/blob/main/inst/extdata/compute.csv).
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/compute_1.md' INSTEAD -->
<!-- compute_2.md is machine-generated and pasted below this file, compute_1.md -->
 [1] "<!-- markdownlint-disable MD060 --><!-- The pipes must not line up -->"                                                                                                                                                                               
 [2] ""                                                                                                                                                                                                                                                     
 [3] "|HPC cluster name|Type of computation|Type of data|User fee|Accessible for|Center(s)|"                                                                                                                                                                
 [4] "|:----------------------------|:-------------------|:------------|:--------|:----------------------|:------|"                                                                                                                                         
 [5] "|[Alvis](https://www.c3se.chalmers.se/about/Alvis/)|AI              |Regular   |Free       |Swedish researchers    |![C3SE](logo/c3se_logo_134_x_24.png) ![NAISS](logo/naiss_logo_148_x_24.png)|"                                                     
 [6] "|[Berzelius](https://www.nsc.liu.se/systems/berzelius/)|General purpose |Regular   |Free       |Linköping researchers  |![NSC](logo/nsc_logo_66_x_24.png)|"                                                                                           
 [7] "|[Bianca](https://docs.uppmax.uu.se/cluster_guides/bianca/)|General purpose |Sensitive |Free       |Swedish researchers    |![NAISS](logo/naiss_logo_148_x_24.png) ![UPPMAX](logo/uppmax_logo_116_x_24.png)|"                                         
 [8] "|[COSMOS](https://www.lunarc.lu.se/systems/cosmos/)|General purpose |Regular   |Free       |Lund researchers       |![LUNARC](logo/lunarc_logo_42_x_24.png) ![NAISS](logo/naiss_logo_148_x_24.png)|"                                                  
 [9] "|[COSMOS SENS](https://www.lunarc.lu.se/systems/cosmos-sens/)|General purpose |Sensitive |Free       |Lund researchers       |![LUNARC](logo/lunarc_logo_42_x_24.png)|"                                                                               
[10] "|[Dardel](https://www.pdc.kth.se/hpc-services/computing-systems/dardel-hpc-system/dardel)|General purpose |Regular   |Free       |Swedish researchers    |![NAISS](logo/naiss_logo_148_x_24.png) ![PDC](logo/pdc_logo_21_x_24.png)|"                  
[11] "|[Data Science Platform](https://datahub.aida.scilifelab.se/data-science-platform/)|Any             |Any       |[User fee](https://datahub.aida.scilifelab.se/services/#prices)|Anyone                 |![AIDA Data Hub](logo/aida_logo_24_x_24.png)|"
[12] "|[Kebnekaise](https://www.hpc2n.umu.se/resources/hardware/kebnekaise)|General purpose |Regular   |Free       |Umeå researchers       |![HPC2N](logo/hpc2n_logo_84_x_24.png)|"                                                                         
[13] "|[LUMI](https://lumi-supercomputer.eu/)|General purpose |Regular   |Free       |Swedish researchers    |![CSC](logo/csc_logo_31_x_24.png) ![NAISS](logo/naiss_logo_148_x_24.png)|"                                                                    
[14] "|[Rackham](https://docs.uppmax.uu.se/cluster_guides/rackham/)|General purpose |Regular   |Free       |Uppsala researchers    |![NAISS](logo/naiss_logo_148_x_24.png) ![UPPMAX](logo/uppmax_logo_116_x_24.png)|"                                       
[15] "|[Sigma](https://www.nsc.liu.se/systems/sigma/)|General purpose |Regular   |Free       |Linköping researchers  |![NSC](logo/nsc_logo_66_x_24.png)|"                                                                                                   
[16] "|[Tetralith](https://www.nsc.liu.se/systems/tetralith/)|General purpose |Regular   |Free       |Swedish researchers    |![NAISS](logo/naiss_logo_148_x_24.png) ![NSC](logo/nsc_logo_66_x_24.png)|"                                                    
[17] "|[Trusted research environment](https://tre.gu.se/)|General purpose |Any       |Free       |Gothenburg researchers |![University of Gothenburg](logo/university_of_gothenburg_logo_24_x_24.png)|"                                                     
[18] "|[Vera](https://www.c3se.chalmers.se/about/Vera/)|General purpose |Regular   |Free       |Gothenburg researchers |![C3SE](logo/c3se_logo_134_x_24.png)|"                                                                                              
[19] ""                                                                                                                                                                                                                                                     
[20] "<!-- markdownlint-enable MD060 -->"                                                                                                                                                                                                                   

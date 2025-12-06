# Web host
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/web_host_1.md' INSTEAD -->
There are multiple types of [resources](resources.md) you may need.
This page is about a place to host a website:
it shows a flowchart how to determine the resource
you can use, followed by an overview of all resources.
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/web_host_1.md' INSTEAD -->
## Selecting the right resource
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/web_host_1.md' INSTEAD -->
```mermaid
flowchart TD
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/web_host_1.md' INSTEAD -->
  eosc_interactive_notebooks[EOSC Interactive Notebooks]
  eosc_virtual_machines[EOSC Virtual Machines]
  scc[Swedish Science Cloud]
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/web_host_1.md' INSTEAD -->
  sll_serve[SciLifeLab Serve]
  eosc_cloud_container_platform[EOSC Cloud Container Platform]
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/web_host_1.md' INSTEAD -->
  question_notebook[Do you only need a Jupyter notebook?]
  question_notebook --> |Yes| eosc_interactive_notebooks
  question_notebook --> |No| question_deployment
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/web_host_1.md' INSTEAD -->
  question_deployment[How do you want to deploy?]
  question_deployment --> |From a container| question_life_science
  question_deployment --> |From an image| eosc_virtual_machines
  question_deployment --> |Custom| scc
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/web_host_1.md' INSTEAD -->
  question_life_science[Do you work in life science?]
  question_life_science --> |Yes| sll_serve
  question_life_science --> |No| eosc_cloud_container_platform 
```
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/web_host_1.md' INSTEAD -->
???- question "How is this list generated and updated?"

    On a daily basis,
    [the `update_content.yaml` continuous integration script](https://github.com/NBISweden/SCoRe_user_doc/blob/main/.github/workflows/update_content.yaml)
    checks the websites of the course providers and updates the list,
    using [the `scoreto` R package](https://github.com/richelbilderbeek/scoreto).
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/web_host_1.md' INSTEAD -->
???- question "My web hosting resource is absent!"

    If your web hosting resource is absent, please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/web_host_1.md' INSTEAD -->
???- question "My web hosting resource can be displayed better!"

    If your web hosting resource can be displayed better,
    please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/web_host_1.md' INSTEAD -->
???- question "How can I read this data is a machine-friendly format?"

    <!-- markdownlint-disable MD013 --><!-- URLs cannot be split up over lines, hence will break 80 characters per line -->

    This information can be downloaded as a `.csv` from
    [the `scoreto` R package](https://github.com/richelbilderbeek/scoreto/blob/main/inst/extdata/web_host.csv).

    <!-- markdownlint-enable MD013 -->
<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT 'docs/web_host_1.md' INSTEAD -->
<!-- web_host_2.md is machine-generated -->
<!-- and pasted below this file, web_host_1.md -->
 [1] "<!-- markdownlint-disable MD060 --><!-- The pipes must not line up -->"                                                                                                                                                                                                           
 [2] ""                                                                                                                                                                                                                                                                                 
 [3] "|Web host name|Deploy type|Data sensitivity|User fee|Accessible for|Center(s)|"                                                                                                                                                                                                   
 [4] "|:-----------------------------|:------------------------------------------------------------------------|:----------------|:--------|:-----------------------|:------|"                                                                                                          
 [5] "|[EOSC Cloud Container Platform](https://open-science-cloud.ec.europa.eu/services/cloud-container-platform)|Containers                                                               |Unknown          |Unknown    |EU citizens             |![EOSC](logo/eosc_logo_77_x_24.png)|"
 [6] "|[EOSC Interactive Notebooks](https://open-science-cloud.ec.europa.eu/services/interactive-notebooks)|Jupyter notebooks in multiple programming languages such as R and Python |Unknown          |Unknown    |EU citizens             |![EOSC](logo/eosc_logo_77_x_24.png)|"      
 [7] "|[EOSC Virtual Machines](https://open-science-cloud.ec.europa.eu/services/virtual-machines)|Predefined virtual machines                                              |Unknown          |Unknown    |EU citizens             |![EOSC](logo/eosc_logo_77_x_24.png)|"                
 [8] "|[SciLifeLab Serve](https://serve.scilifelab.se/)|Containers                                                               |Regular          |Free       |Life science scientists |![SciLifeLab](logo/sll_logo_110_x_24.png)|"                                                    
 [9] "|[Swedish Science Cloud](https://cloud.snic.se/)|Any type                                                                 |Regular          |Free       |Swedish researchers     |![NAISS](logo/naiss_logo_148_x_24.png)|"                                                        
[10] ""                                                                                                                                                                                                                                                                                 
[11] "<!-- markdownlint-enable MD060 -->"                                                                                                                                                                                                                                               

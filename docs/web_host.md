# Web host

There are multiple types of [resources](resources.md) you may need.
This page is about a place to host a website:
it shows a flowchart how to determine the resource
you can use, followed by an overview of all resources.

## Selecting the right resource

```mermaid
flowchart TD
  container[Can your work be put into a container?]
  life_science[Do you work in life science?]
  sll_serve[SciLifeLab Serve]
  ssc[Swedish Science Cloud]
  life_science --> |Yes| container
  life_science --> |No| ssc
  container --> |Yes| sll_serve
  container --> |No| ssc
```

???- question "How is this list generated and updated?"

    On a daily basis,
    [the `update_content.yaml` continuous integration script](https://github.com/NBISweden/SCoRe_user_doc/blob/main/.github/workflows/update_content.yaml)
    checks the websites of the course providers and updates the list,
    using [the `scoreto` R package](https://github.com/richelbilderbeek/scoreto).

???- question "My web hosting resource is absent!"

    If your web hosting resource is absent, please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).

???- question "My web hosting resource can be displayed better!"

    If your web hosting resource can be displayed better,
    please [contribute](CONTRIBUTING.md)
    or [contact us](contact_us.md).

???- question "How can I read this data is a machine-friendly format?"

    This information can be downloaded as a `.csv` from
    [the `scoreto` R package](https://github.com/richelbilderbeek/scoreto/blob/main/inst/extdata/web host.csv).

<!-- web_host_2.md is machine-generated and pasted below this file, web_host_1.md -->


|Webhost name|Deploy type|Data sensitivity|User fee|Accessible for|Center(s)|
|:-----------------------------|:------------------------------------------------------------------------|:----------------|:----------|:-----------------------|:-----------|
|[EOSC Cloud Container Platform](https://open-science-cloud.ec.europa.eu/services/cloud-container-platform)|Containers                                                               |Unknown          |Unknown    |EU citizens             |![EOSC](logo/eosc_logo_77_x_24.png)|
|[EOSC Interactive Notebooks](https://open-science-cloud.ec.europa.eu/services/interactive-notebooks)|Jupyter notebooks in multiple programming langauges such as R and Python |Unknown          |Unknown    |EU citizens             |![EOSC](logo/eosc_logo_77_x_24.png)|
|[EOSC Virtual Machines](https://open-science-cloud.ec.europa.eu/services/virtual-machines)|Predefined virtual machines                                              |Unknown          |Unknown    |EU citizens             |![EOSC](logo/eosc_logo_77_x_24.png)|
|[SciLifeLab Serve](https://serve.scilifelab.se/)|Containers                                                               |Regular          |Free       |Life science scientists |![SciLifeLab](logo/sll_logo_110_x_24.png)|
|[Swedish Science Cloud](https://cloud.snic.se/)|Any type                                                                 |Regular          |Free       |Swedish researchers     |![NAISS](logo/naiss_logo_148_x_24.png)|

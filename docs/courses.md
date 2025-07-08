# Courses

!!! warning "This page is a stub"

    As of now, this page is incomplete, possibly incorrect and
    open for [contributions](CONTRIBUTING.md).

There are multiple types of [resources](resources.md) you may need.
Knowledge is a resource too.
This page shows the places to increase your knowledge in a learning
environment, as provided by courses and training:
it shows a flowchart how to determine the courses
you can take, followed by an overview of all resources.

```mermaid
flowchart TD
  what[What do you want to learn?]
  
  which_cluster[Which HPC cluster do you use?]
  where_local[Where do you work?]

  what --> |How to use your HPC cluster| which_cluster
  what --> |A generic HPC skill| ENCCS
  what --> |A generic HPC skill| NAISS
  what --> |Life sciences| sll
  
  aida[AIDA Data Hub]  
  naiss[NAISS]  
  UPPMAX
  HPC2N
  NSC
  sll[SciLifeLab]
  
  which_cluster --> |AIDA Data Hub| aida
  which_cluster --> |NAISS| naiss
  which_cluster --> |Local| where_local
  where_local --> |UU, Uppsala| UPPMAX
  where_local --> |UmU, Umeå| HPC2N
  where_local --> |KTH, Stockholm| PDC
  where_local --> |Chalmers, Gothenburg| C3SE
  where_local --> |LiU| NSC
  where_local --> |LU| LUNARC
```



For now, here is an overview of courses:

- [AIDA Data Hub training](https://datahub.aida.scilifelab.se/training/)
- [NAISS training](https://www.naiss.se/training/)
- [SciLifeLab training](https://training.scilifelab.se/events)
- [ENCCS training](https://enccs.se/events)
- Courses by your local HPC center



|date_from  |date_to    |name                                                                   |url                                                                                                               |source                                       |
|:----------|:----------|:----------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------|:--------------------------------------------|
|2025-02-06 |2025-02-06 |Easy to use Generative AI                                              |https://datahub.aida.scilifelab.se/training-events/2025-02-06-easy-to-use-genai-workshop.html                     |https://datahub.aida.scilifelab.se/training/ |
|2025-02-05 |2025-02-05 |Distributed training with Ray Toolkit                                  |https://datahub.aida.scilifelab.se/training-events/2025-02-05-ray-toolkit-workshop.html                           |https://datahub.aida.scilifelab.se/training/ |
|2024-09-04 |2024-09-04 |Model computational optimization                                       |https://datahub.aida.scilifelab.se/training-events/2024-09-04-dali-workshop.html                                  |https://datahub.aida.scilifelab.se/training/ |
|2024-09-03 |2024-09-03 |Reproducible Machine Learning Research                                 |https://datahub.aida.scilifelab.se/training-events/2024-09-03-reproducible-ml.html                                |https://datahub.aida.scilifelab.se/training/ |
|2024-03-20 |2024-03-20 |Computation efficiency                                                 |https://datahub.aida.scilifelab.se/training-events/2024-03-20-computational-efficency.html                        |https://datahub.aida.scilifelab.se/training/ |
|2024-03-19 |2024-03-19 |Multimodal and constrastive learning                                   |https://datahub.aida.scilifelab.se/training-events/2024-03-19-multimodal-and-contrastive-learning.html            |https://datahub.aida.scilifelab.se/training/ |
|2023-09-07 |2023-09-07 |AIDA Transformers for vision                                           |https://datahub.aida.scilifelab.se/training-events/2023-09-07-transformer.html                                    |https://datahub.aida.scilifelab.se/training/ |
|2023-09-06 |2023-09-06 |Graph Neural Networks and Geometric Deep Learning                      |https://datahub.aida.scilifelab.se/training-events/2023-09-06-gnns.html                                           |https://datahub.aida.scilifelab.se/training/ |
|2025-09-09 |2025-09-11 |Introduction to Data Management Practices                              |https://uppsala.instructure.com/courses/112492                                                                    |https://training.scilifelab.se/events        |
|2025-09-10 |2025-09-12 |1st SciLifeLab Workshop on Microcrystal Electron Diffraction (MicroED) |https://www.scilifelab.se/wp-content/uploads/2025/06/Program_MicroED_Workshop10-12Sept-2025_2-1.pdf               |https://training.scilifelab.se/events        |
|2025-09-15 |2025-09-19 |Population Genomics in Practice                                        |https://docs.google.com/forms/d/e/1FAIpQLSfT9BIcZnqwOfvXLfXIiBLzDzZPTRXdC8b4kiogiFgJWom7PQ/viewform?usp=send_form |https://training.scilifelab.se/events        |
|2025-09-22 |2025-09-26 |Epigenomics Data Analysis: from Bulk to Single Cell – ONLINE           |https://uppsala.instructure.com/courses/112730                                                                    |https://training.scilifelab.se/events        |
|2025-10-06 |2025-10-31 |Omics and data-driven precision health                                 |https://scilifelab-training.github.io/Omics_DataDriven_PrecisionHealth/2504/                                      |https://training.scilifelab.se/events        |
|2025-10-13 |2025-10-16 |Biomarker Discovery: from theory to real world examples                |https://docs.google.com/forms/d/e/1FAIpQLSfdLPrNB1TdQ3x6cgNNNlSOMkuuH3-pFcHLMu9XBYD-Q5aYtA/viewform?usp=pp_url    |https://training.scilifelab.se/events        |
|2025-11-03 |2025-11-14 |Proteomics by Mass Spectrometry: When and How                          |https://doctoralcourses.application.ki.se/fubasextern/info?kurs=K7F2522                                           |https://training.scilifelab.se/events        |
|2025-11-10 |2025-11-14 |Physiology of ion channels and their role in disease                   |https://liu.se/en/organisation/liu/bkv/physiology-of-ion-channels-and-their-role-in-disease                       |https://training.scilifelab.se/events        |
|2025-11-17 |2025-11-21 |Introduction to bioinformatics using NGS data                          |https://uppsala.instructure.com/courses/112140                                                                    |https://training.scilifelab.se/events        |
|2025-11-24 |2025-11-28 |Introduction to Python - with application to bioinformatics            |https://uppsala.instructure.com/courses/113769                                                                    |https://training.scilifelab.se/events        |
# Courses

!!! warning "This page is a stub"

    As of now, this page is incomplete, possibly incorrect and
    open for [contributions](CONTRIBUTING.md).

There are multiple types of [resources](resources.md) you may need.
Knowledge is a resource too.
This page shows the places to increase your knowledge in a learning
environment, as provided by courses and training:
it shows a flowchart how to determine the courses
you can take, followed by an overview of all resources.

```mermaid
flowchart TD
  what[What do you want to learn?]
  
  which_cluster[Which HPC cluster do you use?]
  where_local[Where do you work?]

  what --> |How to use your HPC cluster| which_cluster
  what --> |A generic HPC skill| ENCCS
  what --> |A generic HPC skill| NAISS
  what --> |Life sciences| sll
  
  aida[AIDA Data Hub]  
  naiss[NAISS]  
  UPPMAX
  HPC2N
  NSC
  sll[SciLifeLab]
  
  which_cluster --> |AIDA Data Hub| aida
  which_cluster --> |NAISS| naiss
  which_cluster --> |Local| where_local
  where_local --> |UU, Uppsala| UPPMAX
  where_local --> |UmU, Umeå| HPC2N
  where_local --> |KTH, Stockholm| PDC
  where_local --> |Chalmers, Gothenburg| C3SE
  where_local --> |LiU| NSC
  where_local --> |LU| LUNARC
```



For now, here is an overview of courses:

- [AIDA Data Hub training](https://datahub.aida.scilifelab.se/training/)
- [NAISS training](https://www.naiss.se/training/)
- [SciLifeLab training](https://training.scilifelab.se/events)
- [ENCCS training](https://enccs.se/events)
- Courses by your local HPC center


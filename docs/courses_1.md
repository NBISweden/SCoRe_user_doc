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

## List of courses

???- question "How is this list generated and updated?"

    On a daily basis,
    [the `update_courses.yaml` continuous integration script](https://github.com/NBISweden/SCoRe_user_doc/blob/main/.github/workflows/update_courses.yaml)
    checks the websites of the course providers and updates the list,
    using [the `scoreto` R package](https://github.com/richelbilderbeek/scoreto).

<!-- courses_2.md is machine-generated and pasted below this file, courses_1.md -->


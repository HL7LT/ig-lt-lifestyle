# Lithuanian Base Implementation Guide

## Introduction and Purpose

The **Lithuanian Base Implementation Guide (LTBase IG)** establishes the national foundation for using the **FHIR (Fast Healthcare Interoperability Resources)** standard within the Lithuanian digital health ecosystem.

Its primary purpose is to **simplify the adoption and implementation** of FHIR by providing a standardized, consensus-based framework. By doing so, this guide aims to **ensure consistency** in the representation of clinical and administrative data, **enhance system interoperability**, and accelerate the transition toward a modern, **scalable digital health ecosystem** in Lithuania.

This guide is adapted to the **specific realities, needs, and regulatory features of the Lithuanian national healthcare system.**

### Limitations

This FHIR R5 Implementation Guide (IG) is a work in progress and is not yet ready for production use. It is intended for testing and feedback purposes only. The content is subject to change as the IG is developed further.

## Scope and Components

The LTBase IG provides a comprehensive collection of artifacts intended for reuse by all health IT systems and implementation projects across the Republic of Lithuania. It serves as the official source of documentation for basic FHIR conformance in the country.

The scope encompasses:

- **LT Base Profiles:** A set of **loosely constrained profiles** on core FHIR resources (e.g., Patient, Practitioner, Organization, Location). These profiles specify the minimum conformance expectations, adapt resource elements to local needs, and establish a **common baseline of support** for digital healthcare in the Republic.
- **National Identifiers and Naming Systems:** Definition of national-specific identifiers (e.g., Personal Code, Medical License Numbers) and corresponding naming systems that **must be used** for unique identification of patients, practitioners, and organizations.
- **Local Terminology:** Ready-to-use **CodeSystems and ValueSets** developed specifically for Lithuanian healthcare data exchange. Where possible, this includes translations and extensions of international terminologies (such as SNOMED CT, LOINC, ICD-10) to support national codes and classifications.
- **Guiding Principles:** Instructional materials and policy guidance to support vendors and developers in authoring derived profiles, managing extensions, and ensuring data quality.

## Guiding Principles for Implementation

LTBase profiles are designed to be flexible and highly reusable across various use cases:

1. **Foundation, Not Final Product:** The Base Profiles are intended as a **starting point** for utilizing the possibilities offered by FHIR. They should not be considered suitable for a completely described deployable service in and of itself, but rather must be used as a **base profile to derive additional, use-case-specific profiles** from (e.g., for a specific clinical registry or a data sharing service).
2. **Minimal Constraints (Open World):** Following the example of the FHIR approach, most of the cardinalities and binding strengths are held to a **minimum** to support open-world modeling, allowing derived profiles to restrict them further as necessary.
3. **Must Support (MS) Flags:** Elements critical for national data exchange (e.g., patient identifiers, name, gender, birth date) are clearly marked with the **Must Support (MS)** flag, indicating that consuming systems must be able to process and utilize this information.

---

### IP Statements
<!-- { // not yet supported by i18n in IG publisher: % include ip-statements.xhtml %} -->

### Contributors

| Name                                             | Role                          | Organization                                    |
| ------------------------------------------------ | ----------------------------- | ----------------------------------------------- |
| [Igor Bossenko](https://www.linkedin.com/in/igor-bossenko/)     | Primary Author                | [HELEX](https://helex.org) |
| [Some Person](#) | Co-Author                 | [LMB](https://lmb.lt)               |

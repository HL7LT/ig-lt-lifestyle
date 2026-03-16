# Lithuanian Lifestyle Implementation Guide

## Introduction and Purpose

This IG specifies how to consistently represent and exchange critical non-clinical patient data related to **lifestyle and health behaviors** using the **Fast Healthcare Interoperability Resources (FHIR)** standard. The accurate capture and sharing of this information is vital for comprehensive patient care, risk stratification, chronic disease management, and public health initiatives.

## Scope and Core Observations

This guide provides structured FHIR profiles and guidance for a core set of lifestyle factors and related screening support, including:

* **Tobacco Use:** Smoking status, exposure, cessation history, type used, consumption level, and duration.
* **Alcohol Use:** Consumption patterns, screening results (e.g., AUDIT-C), and intervention history.
* **Physical Activity:** Exercise frequency, duration, intensity (e.g., using METs), step counts, and measurement devices.
* **Dietary Intake:** Specific nutrient consumption (e.g., sodium, sugar) and overall dietary patterns.
* **Family History:** Cardiovascular disease (CVD) and diabetes status; family member screening history for screening programmes.
* **Metabolic Syndrome:** NCEP ATP III assessment.
* **Screening Support:** AUDIT-C total score (and link to QuestionnaireResponse), medication use in screening context, and diabetes duration status.
* **Extensions:** Other activity description, other desired dietary changes, and medication timing for screening.

### Domains at a Glance

| Tobacco | Alcohol | Physical activity | Nutrition | Metabolic syndrome | Family history | Screening & questionnaires | Extensions |
|---------|---------|-------------------|-----------|--------------------|----------------|---------------------------|------------|
| Use, consumption, stopped, type, duration | Consumption, use history, AUDIT-C | Activity level, steps, device | Nutrition status | NCEP ATP III | CVD, diabetes, member screening | Medication statement, AUDIT-C, diabetes duration | Activity other, dietary changes, medication timing |

## Resource Overview

All conformance and example resources are listed on the **Artifacts** page. From there you can open:

* **Profiles** — StructureDefinitions for Observation, FamilyMemberHistory, MedicationStatement, Device, Questionnaire, and Extensions.
* **Terminology** — ValueSets (and CodeSystems) used for binding codes in the profiles.
* **Examples** — Instance examples for each profile.

For a narrative overview of profiles by domain, see [Profiles](profiles.html). For terminology by theme, see [Terminology](terminology.html). For example instances by domain, see [Examples](examples.html).

## Why Use This Guide?

By adopting these profiles, implementers can ensure a standardized approach to:

1. **Interoperability:** Facilitate seamless, semantic exchange of lifestyle data between Electronic Health Records (EHRs), patient portals, research systems, and public health registries.
2. **Data Quality:** Improve the consistency, completeness, and clinical utility of recorded observations through mandated value sets and data types.
3. **Clinical Utility:** Support clinical decision support, quality measure reporting, and population health management efforts that rely on accurate behavioral and biometric context.

Use the [Profiles](profiles.html), [Terminology](terminology.html), and [Examples](examples.html) pages for overviews, and the [Artifacts](artifacts.html) page for the full list of profiles, terminology bindings, and examples needed to implement the standard.

### IP Statements
<!-- { // not yet supported by i18n in IG publisher: % include ip-statements.xhtml %} -->

### Contributors

| Name                                             | Role                          | Organization                                    |
| ------------------------------------------------ | ----------------------------- | ----------------------------------------------- |
| [Igor Bossenko](https://about.askigor.eu)     | Primary Author                | [HELEX Solutions](https://helex.solutions) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Co-Author                 | [HELEX Solutions](https://helex.solutions)               |
| Martynas Bieliauskas                           | Co-Author                  | [LMB](https://lmb.lt)               |

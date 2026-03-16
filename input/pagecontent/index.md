# Lithuanian Lifestyle Implementation Guide

## Introduction and Purpose

This **Implementation Guide (IG)** specifies how to consistently represent and exchange **structured patient data** related to **lifestyle factors**, **health behaviours**, and **screening support** using the **Fast Healthcare Interoperability Resources (FHIR)** standard. Accurate capture and exchange of this information is important for **prevention**, **risk stratification**, **chronic disease management**, **screening workflows**, and **population health** use cases.

This guide supports the **standardized representation of lifestyle-related data** so that it can be consistently **recorded, exchanged, and interpreted** across **clinical systems**, **patient-facing applications**, **research environments**, and **public health infrastructures**.

## Audience

This guide is intended for **implementation guide authors, system vendors, integrators, healthcare solution developers, and other stakeholders** involved in exchanging **lifestyle and screening-related data using FHIR**. Readers are expected to have at least a **basic familiarity with FHIR** and to refer to the **core FHIR specification** where additional background is needed.

## Scope and Key Content

This guide provides **structured FHIR profiles and implementation guidance** for a core set of **lifestyle** and **screening-related domains**, including:

- **Tobacco Use:** Smoking status, exposure, cessation history, type used, consumption level, and duration.
- **Alcohol Use:** Consumption patterns, use history, and screening results such as **AUDIT-C**.
- **Physical Activity:** Activity level, duration, intensity, **step counts**, and **measurement devices**.
- **Nutrition:** Dietary intake and related **nutritional observations**.
- **Family History:** Family history of **cardiovascular disease**, **diabetes**, and **screening-related family history data**.
- **Metabolic Syndrome:** Assessment of **metabolic syndrome** based on **NCEP ATP III** criteria.
- **Screening Support:** **Questionnaire-based screening support**, **medication statements in screening context**, and **diabetes duration status**.

Supporting artifacts also include **extensions** for **other activity descriptions**, **dietary changes**, and **medication timing**.

## Why Use This Guide?

By adopting these profiles and guidance, implementers can support a standardized approach to:

- **Interoperability:** Facilitate **seamless, semantic exchange** of lifestyle and screening-related data between **Electronic Health Records (EHRs)**, **patient portals**, **screening systems**, **research platforms**, and **public health registries**.
- **Data Quality:** Improve the **consistency**, **completeness**, and **comparability** of recorded observations and **questionnaire-derived data** through **standardized structures**, **data types**, and **terminology bindings**.
- **Clinical Utility:** Support **prevention**, **risk assessment**, **screening workflows**, **clinical decision support**, and **population health analysis** by making lifestyle-related information available in a **structured and reusable form**.

## How to Navigate This Guide

This guide is organized into several sections that support implementation from overview to detailed conformance artifacts. All **conformance** and **example resources** are listed on the [**Artifacts**](artifacts.html) page. Key sections include:

- [**Artifacts**](artifacts.html) — Complete list of **profiles, extensions, terminology resources, and example instances** defined by this guide.
- [**Profiles**](profiles.html) — **StructureDefinitions** for observations, family history, medication statements, questionnaires, devices, and extensions.
- [**Terminology**](terminology.html) — **ValueSets** and terminology bindings used by the profiles.
- [**Examples**](examples.html) — Example instances across **lifestyle**, **screening**, and **supporting resource domains**.

## IP Statements
<!-- { // not yet supported by i18n in IG publisher: % include ip-statements.xhtml %} -->

## Contributors

| Name | Role | Organization |
|------|------|--------------|
| [Igor Bossenko](https://about.askigor.eu) | Primary Author | [HELEX Solutions](https://helex.solutions) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus-1512813b2/) | Co-Author | [HELEX Solutions](https://helex.solutions) |
| Martynas Bieliauskas | Co-Author | [LMB](https://lmb.lt) |
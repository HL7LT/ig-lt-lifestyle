# Lithuanian Lifestyle Implementation Guide (ig-lt-lifestyle)

FHIR Implementation Guide for lifestyle and health behaviors (tobacco, alcohol, physical activity, nutrition, family history, metabolic syndrome, screening support).

## Build

```bash
npm install
npm run build
```

## Project structure

FSH source follows the standard layout (see `.cursor/rules/fhir-project-structure.mdc`):

- **`input/fsh/profiles/`** — one StructureDefinition profile per file; file name = resource `Id` in kebab-case (e.g. `alcohol-consumption-lt-lifestyle.fsh`).
- **`input/fsh/examples/`** — example instances grouped by `InstanceOf` profile; file name matches profile id in kebab-case (e.g. `patient-lt.fsh`).
- **`input/fsh/terminology/`** — CodeSystem and ValueSet definitions; file name matches resource `Id` in kebab-case.
- **`input/fsh/alias-lt-lifestyle.fsh`** — canonical URL aliases for this IG (profiles: `https://hl7.lt/fhir/lifestyle/StructureDefinition/{id}`; terminology: `https://tx.hl7.lt/fhir/` without IG suffix in path).
- **`input/fsh/Aliases.fsh`** — external aliases (LOINC, SNOMED, etc.).

Naming follows the suffix convention: profile names like `AlcoholConsumptionLtLifestyle`, ids like `alcohol-consumption-lt-lifestyle`. See `.cursor/rules/fhir-migration-guide.mdc` for full conventions.

## Documentation

- **Profiles** and **Terminology** narrative pages are in `input/pagecontent/` (profiles.md, terminology.md).
- Business names (profile, ValueSet, CodeSystem, example) in pagecontent must link to the corresponding artifact (e.g. `StructureDefinition-<id>.html`).

# Lietuvos gyvensenos įgyvendinimo gidas

## Įvadas ir Tikslas

Šis Įgyvendinimo Gidas (IG) nurodo, kaip nuosekliai atvaizduoti ir keistis kritiniais ne klinikiniais paciento duomenimis, susijusiais su gyvensena ir sveikatos elgsena, naudojant Fast Healthcare Interoperability Resources (FHIR) standartą. Tikslus šios informacijos fiksavimas ir dalijimasis yra gyvybiškai svarbus visapusiškai pacientų priežiūrai, rizikos stratifikacijai, lėtinių ligų valdymui ir visuomenės sveikatos iniciatyvoms.

## Apimtis ir Pagrindiniai Stebėjimai

Šis gidas pateikia struktūrizuotus FHIR profilius ir gaires pagrindiniams gyvensenos veiksniams ir susijusiam patikros palaikymui, įskaitant:

- **Tabako vartojimas**: Rūkymo statusas, poveikis, metimo istorija, vartojamo tipas, suvartojimo lygis ir trukmė.
- **Alkoholio vartojimas**: Vartojimo įpročiai, patikros rezultatai (pvz., AUDIT-C) ir intervencijos istorija.
- **Fizinis aktyvumas**: Mankštos dažnumas, trukmė, intensyvumas (pvz., MET), žingsnių skaičius ir matavimo įrenginiai.
- **Mitybos įpročiai**: Specifinių maistinių medžiagų suvartojimas (pvz., natrio, cukraus) ir bendrieji mitybos modeliai.
- **Šeimos istorija**: Širdies ir kraujagyslių ligų bei diabeto statusas; šeimos nario patikros istorija patikros programose.
- **Metabolinio sindromo**: NCEP ATP III įvertinimas.
- **Patikros palaikymas**: AUDIT-C bendras balas (ir nuoroda į QuestionnaireResponse), vaistų vartojimas patikros kontekste ir diabeto trukmės statusas.
- **Plėtiniai**: Kitos veiklos aprašymas, kiti pageidaujami mitybos pakeitimai ir vaistų laiko plėtinys patikrai.

### Apimtys iš esmės

| Tabakas | Alkoholis | Fizinis aktyvumas | Mityba | Metabolinis sindromas | Šeimos istorija | Patikra ir klausimynai | Plėtiniai |
|---------|-----------|-------------------|--------|----------------------|----------------|------------------------|-----------|
| Vartojimas, suvartojimas, nutrauktas, tipas, trukmė | Suvartojimas, vartojimo istorija, AUDIT-C | Aktyvumo lygis, žingsniai, įrenginys | Mitybos statusas | NCEP ATP III | ŠKL, diabetas, nario patikra | Vaistų pareiškimas, AUDIT-C, diabeto trukmė | Kitos veiklos, mitybos pakeitimai, vaistų laikas |

## Ištekliai – apžvalga

Visi atitikties ir pavyzdžių ištekliai pateikti **Artefaktų** puslapyje. Iš ten galite atidaryti:

* **Profiliai** — Observation, FamilyMemberHistory, MedicationStatement, Device, Questionnaire ir plėtinių StructureDefinition.
* **Terminologija** — profiliuose naudojami ValueSets (ir CodeSystems).
* **Pavyzdžiai** — pavyzdiniai įvykiai kiekvienam profiliui.

Profilų apžvalgą pagal sritį rasite [Profiliai](profiles.html). Terminologiją pagal temą – [Terminologija](terminology.html). Pavyzdinius įvykius pagal sritį – [Pavyzdžiai](examples.html).

## Kodėl verta naudoti šį gidą?

Priimdami šiuos profilius, diegėjai gali užtikrinti standartizuotą požiūrį į:

Sąveika: Palengvinti vientisą, semantinį gyvensenos duomenų mainus tarp Elektroninių sveikatos įrašų (ESI) sistemų, pacientų portalų, tyrimų sistemų ir visuomenės sveikatos registrų.

Duomenų kokybė: Pagerinti užfiksuotų stebėjimų nuoseklumą, išsamumą ir klinikinę naudą per privalomus reikšmių rinkinius (ValueSets) ir duomenų tipus.

Klinikinė nauda: Palaikyti klinikinio sprendimo palaikymo, kokybės rodiklių ataskaitų teikimo ir gyventojų sveikatos valdymo pastangas, kurios remiasi tiksliu elgsenos ir biometriniu kontekstu.

Naudokite [Profiliai](profiles.html), [Terminologija](terminology.html) ir [Pavyzdžiai](examples.html) puslapius apžvalgoms bei [Artefaktai](artifacts.html) puslapį pilnam profilių, terminologijos susiejimų ir pavyzdžių sąrašui, reikalingam standartui įdiegti.
---

## IP teiginiai
<!-- { // dar nepalaiko i18n IG leidėjuje: % include ip-statements.xhtml %} -->

## Prisidėjusieji

| Vardas | Pareigos | Organizacija |
| ------------------------------------------------------------ | --------------------------------------------- | ---------------------------------------------------- |
| [Igor Bossenko](https://about.askigor.eu)     | Primary Author                | [HELEX Solutions](https://helex.solutions) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Co-Author                 | [HELEX Solutions](https://helex.solutions)               |
| Martynas Bieliauskas                           | Co-Author                  | [LMB](https://lmb.lt)               |

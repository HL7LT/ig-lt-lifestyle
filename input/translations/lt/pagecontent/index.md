# Lietuvos gyvensenos įgyvendinimo gidas

## Įvadas ir tikslas

Šis **Įgyvendinimo Gidas (IG)** nurodo, kaip nuosekliai atvaizduoti ir keistis **struktūrizuotais paciento duomenimis**, susijusiais su **gyvensenos veiksniais**, **sveikatos elgsena** ir **patikros palaikymu**, naudojant **Fast Healthcare Interoperability Resources (FHIR)** standartą. Tikslus šios informacijos fiksavimas ir dalijimasis yra svarbus **prevencijos**, **rizikos stratifikacijos**, **lėtinių ligų valdymo**, **patikros darbo eigų** ir **populiacijos sveikatos** tikslams.

Šis gidas palaiko **standartizuotą su gyvensena susijusių duomenų atvaizdavimą**, kad jais būtų galima nuosekliai **įrašyti, keistis ir interpretuoti** tarp **klinikinių sistemų**, **pacientui skirtų programų**, **mokslinių tyrimų aplinkų** ir **visuomenės sveikatos infrastruktūrų**.

## Auditorija

Šis gidas skirtas **įgyvendinimo gidų autoriams, sistemų tiekėjams, integratoriams, sveikatos sprendimų kūrėjams ir kitiems suinteresuotiesiems** asmenims, dalyvaujantiems keičiantis **su gyvensena ir patikra susijusiais duomenimis naudojant FHIR**. Tikimasi, kad skaitytojai turės bent **bazinių FHIR žinių** ir prireikus kreipsis į **pagrindinę FHIR specifikaciją**.

## Apimtis ir pagrindinis turinys

Šis gidas pateikia **struktūrizuotus FHIR profilius ir įgyvendinimo gaires** pagrindiniam **gyvensenos** ir **su patikra susijusių sričių** rinkiniui, įskaitant:

- **Tabako vartojimas:** Rūkymo statusas, poveikis, metimo istorija, vartojamo tipas, suvartojimo lygis ir trukmė.
- **Alkoholio vartojimas:** Vartojimo įpročiai, vartojimo istorija ir patikros rezultatai, tokie kaip **AUDIT-C**.
- **Fizinis aktyvumas:** Aktyvumo lygis, trukmė, intensyvumas, **žingsnių skaičius** ir **matavimo įrenginiai**.
- **Mityba:** Mitybos suvartojimas ir susijęs **mitybos stebėjimas**.
- **Šeimos istorija:** Šeimos **širdies ir kraujagyslių ligų**, **diabeto** istorija ir **su patikra susijusi šeimos istorija**.
- **Metabolinis sindromas:** **Metabolinio sindromo** įvertinimas pagal **NCEP ATP III** kriterijus.
- **Patikros palaikymas:** **Klausimynu pagrįstas patikros palaikymas**, **vaistų pareiškimai patikros kontekste** ir **diabeto trukmės statusas**.

Palaikantys artefaktai taip pat apima **plėtinius** **kitų veiklų aprašymams**, **mitybos pakeitimams** ir **vaistų laikui**.

## Kodėl verta naudoti šį gidą?

Priimdami šiuos profilius ir gaires, diegėjai gali palaikyti standartizuotą požiūrį į:

- **Sąveikumas:** Palengvinti **vientisą, semantinį** su gyvensena ir patikra susijusių duomenų mainus tarp **Elektroninių sveikatos įrašų (ESI)**, **pacientų portalų**, **patikros sistemų**, **mokslinių tyrimų platformų** ir **visuomenės sveikatos registrų**.
- **Duomenų kokybė:** Pagerinti užfiksuotų stebėjimų ir **iš klausimynų gautų duomenų** **nuoseklumą**, **išsamumą** ir **palyginamumą** naudojant **standartizuotas struktūras**, **duomenų tipus** ir **terminologijos susiejimus**.
- **Klinikinė nauda:** Palaikyti **prevenciją**, **rizikos įvertinimą**, **patikros darbo eigas**, **klinikinį sprendimų palaikymą** ir **populiacijos sveikatos analizę**, padarant su gyvensena susijusią informaciją prieinamą **struktūrizuota ir daugkartinio naudojimo forma**.

## Kaip naršyti šiame guide?

Šis gidas suskirstytas į kelis skyrius, palaikančius įgyvendinimą nuo apžvalgos iki išsamių atitikties artefaktų. Visi **atitikties** ir **pavyzdiniai ištekliai** išvardyti [**Artefaktų**](artifacts.html) puslapyje. Pagrindiniai skyriai:

- [**Artefaktai**](artifacts.html) — Pilnas **profilių, plėtinių, terminologijos išteklių ir pavyzdinių atvejų** sąrašas, apibrėžtas šiame guide.
- [**Profiliai**](profiles.html) — **StructureDefinition** stebėjimams, šeimos istorijai, vaistų pareiškimams, klausimynams, įrenginiams ir plėtiniams.
- [**Terminologija**](terminology.html) — **ValueSets** ir terminologijos susiejimai, naudojami profiliuose.
- [**Pavyzdžiai**](examples.html) — Pavyzdiniai atvejai **gyvensenos**, **patikros** ir **palaikančių išteklių srityse**.

## IP teiginiai
<!-- { // dar nepalaiko i18n IG leidėjuje: % include ip-statements.xhtml %} -->

## Prisidėjusieji

| Vardas | Pareigos | Organizacija |
|--------|----------|--------------|
| [Igor Bossenko](https://about.askigor.eu) | Pagrindinis autorius | [HELEX Solutions](https://helex.solutions) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus-1512813b2/) | Pagrindinis autorius | [HELEX Solutions](https://helex.solutions) |
| Martynas Bieliauskas | Bendraautoris | [LMB](https://lmb.lt) |
| Audra Stepanauskaite | Bendraautorė | [LMB](https://lmb.lt) |
| Albert Kuslevic | Bendraautoris | [LMB](https://lmb.lt) |

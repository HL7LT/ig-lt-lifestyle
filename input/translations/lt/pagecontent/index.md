# Lietuvos gyvensenos įgyvendinimo gidas

## Įvadas ir tikslas

Šis **Įgyvendinimo Gidas (IG)** nurodo, kaip nuosekliai atvaizduoti ir keistis **struktūrizuotais paciento duomenimis**, susijusiais su **gyvensenos veiksniais**, **sveikatos elgsena** ir **patikros palaikymu**, naudojant **Fast Healthcare Interoperability Resources (FHIR)** standartą. Tikslus šios informacijos fiksavimas ir dalijimasis yra svarbus **prevencijos**, **rizikos stratifikacijos**, **lėtinių ligų valdymo**, **patikros darbo eigos** ir **populiacijos sveikatos** tikslams.

Šis gidas palaiko **standartizuotą su gyvensenai susijusių duomenų atvaizdavimą**, kad jie galėtų būti nuosekliai **registruojami, keičiami ir interpretuojami** per **klinikinius sistemas**, **pacientų programėles**, **tyrimų aplinkas** ir **visuomenės sveikatos infrastruktūras**.

## Auditorija

Šis gidas skirtas **įgyvendinimo gidų autoriams, sistemų tiekėjams, integruotojams, sveikatos sprendimų kūrėjams ir kitiems suinteresuotiesiems**, dalyvaujantiems keičiantis **su gyvensenai ir patikrai susijusiais duomenimis naudojant FHIR**. Tikimasi, kad skaitytojai turi bent **bazinį FHIR supratimą** ir prireikus kreips į **pagrindinę FHIR specifikaciją**.

## Apimtis ir pagrindinis turinys

Šis gidas pateikia **struktūrizuotus FHIR profilius ir įgyvendinimo gaires** pagrindiniam **gyvensenos** ir **su patikra susijusių sričių** rinkiniui, įskaitant:

- **Tabako vartojimas:** Rūkymo statusas, poveikis, metimo istorija, vartojamo tipas, suvartojimo lygis ir trukmė.
- **Alkoholio vartojimas:** Vartojimo įpročiai, vartojimo istorija ir patikros rezultatai, pvz. **AUDIT-C**.
- **Fizinis aktyvumas:** Aktyvumo lygis, trukmė, intensyvumas, **žingsnių skaičius** ir **matavimo įrenginiai**.
- **Mityba:** Maisto suvartojimas ir susiję **mitybos stebėjimai**.
- **Šeimos istorija:** Širdies ir kraujagyslių ligų, **diabeto** šeimos istorija ir **su patikra susiję šeimos nario istorijos duomenys**.
- **Metabolinis sindromas:** **Metabolinio sindromo** įvertinimas pagal **NCEP ATP III** kriterijus.
- **Patikros palaikymas:** **Klausimyno patikros palaikymas**, **vaistų vartojimo pareiškimai patikros kontekste** ir **diabeto trukmės statusas**.

Palaikantys artefaktai taip pat apima **plėtinius** kitų veiklos aprašymams, mitybos pakeitimams ir vaistų laikui.

## Kodėl verta naudoti šį gidą?

Priimdami šiuos profilius ir gaires, diegėjai gali palaikyti standartizuotą požiūrį į:

- **Sąveikumą:** Palengvinti **vientisą, semantinį** gyvensenos ir patikros duomenų mainus tarp **Elektroninių sveikatos įrašų (ESI)**, **pacientų portalų**, **patikros sistemų**, **tyrimų platformų** ir **visuomenės sveikatos registrų**.
- **Duomenų kokybę:** Pagerinti užfiksuotų stebėjimų ir **klausimyno duomenų** **nuoseklumą**, **išsamumą** ir **palyginamumą** per **standartizuotas struktūras**, **duomenų tipus** ir **terminologijos susiejimus**.
- **Klinikinę naudą:** Palaikyti **prevenciją**, **rizikos vertinimą**, **patikros darbo eigą**, **klinikinių sprendimų palaikymą** ir **populiacijos sveikatos analizę**, pateikiant su gyvensenai susijusią informaciją **struktūrizuota ir daugkartinio naudojimo forma**.

## Kaip naršyti šiame gide?

Šis gidas suskirstytas į kelias dalis, kurios palaiko įgyvendinimą nuo apžvalgos iki išsamių atitikties artefaktų. Visi **atitikties** ir **pavyzdiniai ištekliai** išvardyti [**Artefaktų**](artifacts.html) puslapyje. Pagrindiniai skyriai:

- [**Artefaktai**](artifacts.html) — Pilnas **profilių, plėtinių, terminologijos išteklių ir pavyzdinių įvykių** sąrašas, apibrėžtas šiame gide.
- [**Profiliai**](profiles.html) — **StructureDefinition** stebėjimams, šeimos istorijai, vaistų vartojimo pareiškimams, klausimynams, įrenginiams ir plėtiniams.
- [**Terminologija**](terminology.html) — **ValueSets** ir terminologijos susiejimai, naudojami profiliuose.
- [**Pavyzdžiai**](examples.html) — Pavyzdiniai įvykiai **gyvensenos**, **patikros** ir **palaikančių išteklių** srityse.

## IP teiginiai
<!-- { // dar nepalaiko i18n IG leidėjuje: % include ip-statements.xhtml %} -->

## Prisidėjusieji

| Vardas | Pareigos | Organizacija |
|--------|----------|--------------|
| [Igor Bossenko](https://about.askigor.eu) | Pagrindinis autorius | [HELEX Solutions](https://helex.solutions) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus-1512813b2/) | Pagrindinis autorius | [HELEX Solutions](https://helex.solutions) |
| Martynas Bieliauskas | Bendraautoris | [LMB](https://lmb.lt) |
| Audra Stepanauskaite | Bendraautoris | [LMB](https://lmb.lt) |
| Albert Kuslevic | Bendraautoris | [LMB](https://lmb.lt) |

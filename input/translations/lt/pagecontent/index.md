# Lietuvos bazės diegimo vadovas

## Įvadas ir tikslas

**Lietuviškos bazės diegimo vadovas (LTBase IG)** nustato nacionalinį pagrindą **FHIR (Fast Healthcare Interoperability Resources)** standarto naudojimui Lietuvos skaitmeninės sveikatos ekosistemoje.

Pagrindinis jo tikslas – **supaprastinti FHIR diegimą ir diegimą**, pateikiant standartizuotą, bendru sutarimu pagrįstą sistemą. Tokiu būdu šiuo vadovu siekiama **užtikrinti nuoseklumą** klinikinių ir administracinių duomenų pateikime, **pagerinti sistemų sąveikumą** ir paspartinti perėjimą prie modernios, **keičiamo dydžio skaitmeninės sveikatos ekosistemos** Lietuvoje.

Šis vadovas pritaikytas prie **specifinių Lietuvos nacionalinės sveikatos priežiūros sistemos realijų, poreikių ir reguliavimo ypatybių**.

### Apribojimai

Šis FHIR R5 diegimo vadovas (IG) yra dar kuriamas ir dar nėra paruoštas naudoti gamyboje. Jis skirtas tik testavimo ir atsiliepimų teikimo tikslais. Turinys gali keistis, kai IG bus toliau tobulinamas.

## Taikymo sritis ir komponentai

LTBase IG teikia išsamią artefaktų kolekciją, skirtą pakartotinai naudoti visose sveikatos IT sistemose ir diegimo projektuose visoje Lietuvos Respublikoje. Ji yra oficialus pagrindinės FHIR atitikties šalyje dokumentacijos šaltinis.

Taikymo sritis apima:

- **LT bazinius profilius:** **laisvai apribotų profilių** rinkinį, susijusį su pagrindiniais FHIR ištekliais (pvz., pacientu, specialistu, organizacija, vieta). Šie profiliai nurodo minimalius atitikties lūkesčius, pritaiko išteklių elementus prie vietos poreikių ir nustato **bendrą skaitmeninės sveikatos priežiūros palaikymo bazę** Respublikoje.
- **Nacionaliniai identifikatoriai ir pavadinimų sistemos:** nacionaliniams identifikatoriams (pvz., asmens kodas, medicininių licencijų numeriai) ir atitinkamoms pavadinimų sistemoms, kurios **privalo būti naudojamos** unikaliam pacientų, specialistų ir organizacijų identifikavimui, apibrėžimas.
- **Vietinė terminologija:** paruoštos naudoti **kodų sistemos ir reikšmių rinkiniai**, specialiai sukurti Lietuvos sveikatos priežiūros duomenų mainams. Kai įmanoma, tai apima tarptautinių terminų (pvz., SNOMED CT, LOINC, TLK-10) vertimus ir išplėtimus, siekiant paremti nacionalinius kodus ir klasifikacijas.

- **Pagrindiniai principai:** Mokomoji medžiaga ir politikos gairės, skirtos padėti tiekėjams ir kūrėjams kurti išvestinius profilius, valdyti plėtinius ir užtikrinti duomenų kokybę.

## Įgyvendinimo pagrindiniai principai

LTBase profiliai sukurti taip, kad būtų lankstūs ir lengvai pakartotinai panaudojami įvairiais naudojimo atvejais:

1. **Pagrindas, o ne galutinis produktas:** Baziniai profiliai skirti kaip **atskaitos taškas** norint pasinaudoti FHIR siūlomomis galimybėmis. Jie neturėtų būti laikomi tinkamais visiškai aprašytai diegiamai paslaugai, o turi būti naudojami kaip **bazinis profilis, iš kurio galima gauti papildomus, konkrečiam naudojimo atvejui skirtus profilius** (pvz., konkrečiam klinikiniam registrui arba duomenų bendrinimo paslaugai).
2. **Minimalūs apribojimai (atviras pasaulis):** Remiantis FHIR metodo pavyzdžiu, dauguma kardinalumo ir susiejimo stiprumų yra **minimalūs**, kad būtų palaikomas atvirojo pasaulio modeliavimas, leidžiant išvestiniams profiliams juos dar labiau apriboti pagal poreikį.

3. **Privalomo palaikymo (MS) žymės:** Elementai, kurie yra svarbūs nacionaliniam duomenų mainams (pvz., paciento identifikatoriai, vardas, pavardė, lytis, gimimo data), yra aiškiai pažymėti žyme **Privalomo palaikymo (MS)**, nurodant, kad naudojančios sistemos turi gebėti apdoroti ir naudoti šią informaciją.

---

### IP teiginiai
<!-- { // dar nepalaiko i18n IG leidėjuje: % include ip-statements.xhtml %} -->

### Prisidėjusieji

| Vardas | Pareigos | Organizacija |
| ------------------------------------------------------------ | --------------------------------------------- | ---------------------------------------------------- |
| [Igor Bossenko](https://www.linkedin.com/in/igor-bossenko/) | Pagrindinis autorius | [HELEX](https://helex.org) | | [Asmuo](#) | Bendraautoris | [LMB](https://lmb.lt) |

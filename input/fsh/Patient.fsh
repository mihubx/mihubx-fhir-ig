Alias: $mhx-example-pid = http://mihubx.de/fhir/NamingSystem/ExamplePid
Alias: $mhx-patient-sd = http://mihubx.de/fhir/StructureDefinition/MHXPatientIn

Profile: MHXPatientIn
Parent: ProfilePatientPatientIn
Description: "Dieses Profil beschreibt eine Patient*in im MiHUBx-Projekt"
* ^url = $mhx-patient-sd
* ^status = #draft
* identifier[versichertenId_GKV] 0..
* identifier[versichertennummer_pkv] 0..
* identifier[pid] 1..* MS
* name[geburtsname] ..0
* name[name] 1..1 MS
* name[name].family 1..1 MS
* name[name].given 1..* MS
* gender 1..1 MS
* birthDate 1..1 MS
* deceasedBoolean 0..0
* deceasedDateTime 0..1 MS
* address[Strassenanschrift] 1..1 MS
* address[Strassenanschrift].city 1..1 MS
* address[Strassenanschrift].state 1..1 MS
* address[Strassenanschrift].postalCode 1..1 MS
* address[Strassenanschrift].country 1..1 MS
* address[Postfach] ..0
* generalPractitioner 0..* MS

Instance: BeispielPatientIn
InstanceOf: MHXPatientIn
Description: "Beispiel eines MiHUBx Patienten"
* identifier[pid].system = $mhx-example-pid
* identifier[pid].value = "12345"
* name[name].given = "Jane"
* name[name].family = "Doe"
* gender = #other
* birthDate = "1971-01-01"
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line = "Musterstraße 1"
* address[Strassenanschrift].city = #03254021
* address[Strassenanschrift].state = #DE-SN
* address[Strassenanschrift].postalCode = "12345"
* address[Strassenanschrift].country = #DE
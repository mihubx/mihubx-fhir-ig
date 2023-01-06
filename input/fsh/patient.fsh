Alias: $mhx-patient-identifiers = http://mihubx.de/fhir/identifiers/patient

Profile: SD_MHX_Patient
Parent: ProfilePatientPatientIn
Id: sd-mhx-patient
Description: "MiHUBx Profile Patient"
* identifier 1..* MS
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
* generalPractitioner 0..* MS

Instance: BeispielPatient
InstanceOf: SD_MHX_Patient
Description: "Beispiel eines MiHUBx Patienten"
* identifier[pid]
  * system = $mhx-patient-identifiers
  * value = "12345"
* name[name]
  * given[0] = "Jane"
  * family = "Doe"
* gender = #female
* birthDate = "1971-01-01"
* address[Strassenanschrift]
  * type = #both
  * line = "Musterstraße 1"
  * city = #03254021
  * state = #DE-SN
  * postalCode = "12345"
  * country = #DE
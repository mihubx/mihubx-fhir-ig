Alias: $ext-cps-expectation = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation

RuleSet: SearchParameter(name, definition, type, expectation)
* rest.resource[=].searchParam[+].extension[$ext-cps-expectation].valueCode = #{expectation}
* rest.resource[=].searchParam[=].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{definition}"
* rest.resource[=].searchParam[=].type = #{type}

Instance: MHXCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* insert RuleSetInstanceResourceElements($mhx-cps, MHXCapabilityStatement, MiHUBx CapabilityStatement)
* description = "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss um den MiHUBx FHIR IG zu implementieren."
* kind = #requirements
* format[0] = #xml
* format[+] = #json
* implementationGuide = $mhx-ig
* rest.mode = #server
* rest.resource[0].extension[$ext-cps-expectation].valueCode = #SHALL
* rest.resource[=].type = #Patient
* rest.resource[=].supportedProfile = $mhx-patient-sd
* rest.resource[=].interaction[0].extension[$ext-cps-expectation].valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension[$ext-cps-expectation].valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* insert SearchParameter(_id, http://hl7.org/fhir/SearchParameter/Resource-id, token, SHALL)
* insert SearchParameter(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, uri, SHALL)
* insert SearchParameter(identifier, http://hl7.org/fhir/SearchParameter/Patient-identifier, token, SHALL)
* insert SearchParameter(assigner-pid, https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-AssignerPID, token, SHALL)
* insert SearchParameter(given, http://hl7.org/fhir/SearchParameter/individual-given, string, SHALL)
* insert SearchParameter(family, http://hl7.org/fhir/SearchParameter/individual-family, string, SHALL)
* insert SearchParameter(name, http://hl7.org/fhir/SearchParameter/Patient-name, string, SHALL)
* insert SearchParameter(prefix, https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-Prefix, token, SHALL)
* insert SearchParameter(prefix-qualifier, https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-PrefixQualifier, token, SHALL)
* insert SearchParameter(gender, http://hl7.org/fhir/SearchParameter/individual-gender, token, SHALL)
* insert SearchParameter(other-amtlich, https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-OtherAmtlich, token, SHALL)
* insert SearchParameter(birthdate, http://hl7.org/fhir/SearchParameter/individual-birthdate, date, SHALL)
* insert SearchParameter(death-date, http://hl7.org/fhir/SearchParameter/Patient-death-date, date, SHALL)
* insert SearchParameter(deceased, http://hl7.org/fhir/SearchParameter/Patient-deceased, token, SHALL)
* insert SearchParameter(address, http://hl7.org/fhir/SearchParameter/individual-address, string, SHALL)
* insert SearchParameter(address-city, http://hl7.org/fhir/SearchParameter/individual-address-city, string, SHALL)
* insert SearchParameter(address-postalcode, http://hl7.org/fhir/SearchParameter/individual-address-postalcode, string, SHALL)
* insert SearchParameter(address-country, http://hl7.org/fhir/SearchParameter/individual-address-country, token, SHALL)
* insert SearchParameter(gemeindeschluessel, https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-Gemeindeschluessel, string, SHALL)
* insert SearchParameter(strasse, https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-Strasse, string, SHALL)
* insert SearchParameter(hausnummer, https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-Adresszusatz, string, SHALL)
* insert SearchParameter(adresszusatz, https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-Postfach, string, SHALL)
* insert SearchParameter(postfach, https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-Postfach, string, SHALL)
* insert SearchParameter(stadtteil, https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/, token, SHALL)
* insert SearchParameter(link, http://hl7.org/fhir/SearchParameter/Patient-link, reference, SHALL)

//* rest.resource[=].searchParam[0].extension[$ext-cps-expectation].valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "_id"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
//* rest.resource[=].searchParam[=].type = #token
//* rest.resource[=].searchParam[+].extension[$ext-cps-expectation].valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "_profile"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-profile"
//* rest.resource[=].searchParam[=].type = #uri
//* rest.resource[=].searchParam[+].extension[$ext-cps-expectation].valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "identifier"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
//* rest.resource[=].searchParam[=].type = #token
//* rest.resource[=].searchParam[+].extension[$ext-cps-expectation].valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "assigner-pid"
//* rest.resource[=].searchParam[=].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-AssignerPID"
//* rest.resource[=].searchParam[=].type = #token
//* rest.resource[=].searchParam[+].extension[$ext-cps-expectation].valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "given"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-given"
//* rest.resource[=].searchParam[=].type = #string
//* rest.resource[=].searchParam[+].extension[$ext-cps-expectation].valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "family"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-family"
//* rest.resource[=].searchParam[=].type = #string
//* rest.resource[=].searchParam[+].extension[$ext-cps-expectation].valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "name"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-name"
//* rest.resource[=].searchParam[=].type = #string
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "prefix"
//* rest.resource[=].searchParam[=].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-Prefix"
//* rest.resource[=].searchParam[=].type = #token
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "prefix-qualifier"
//* rest.resource[=].searchParam[=].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-PrefixQualifier"
//* rest.resource[=].searchParam[=].type = #token
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "gender"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-gender"
//* rest.resource[=].searchParam[=].type = #token
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "other-amtlich"
//* rest.resource[=].searchParam[=].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-OtherAmtlich"
//* rest.resource[=].searchParam[=].type = #token
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "birthdate"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-birthdate"
//* rest.resource[=].searchParam[=].type = #date
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "death-date"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-death-date"
//* rest.resource[=].searchParam[=].type = #date
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "deceased"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-deceased"
//* rest.resource[=].searchParam[=].type = #token
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "address"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address"
//* rest.resource[=].searchParam[=].type = #string
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "address-city"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-city"
//* rest.resource[=].searchParam[=].type = #string
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "address-postalcode"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-postalcode"
//* rest.resource[=].searchParam[=].type = #string
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "address-country"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-country"
//* rest.resource[=].searchParam[=].type = #string
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "gemeindeschluessel"
//* rest.resource[=].searchParam[=].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-Gemeindeschluessel"
//* rest.resource[=].searchParam[=].type = #token
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "strasse"
//* rest.resource[=].searchParam[=].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-Strasse"
//* rest.resource[=].searchParam[=].type = #string
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "hausnummer"
//* rest.resource[=].searchParam[=].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-Hausnummer"
//* rest.resource[=].searchParam[=].type = #string
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "adresszusatz"
//* rest.resource[=].searchParam[=].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-Adresszusatz"
//* rest.resource[=].searchParam[=].type = #string
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "postfach"
//* rest.resource[=].searchParam[=].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-Postfach"
//* rest.resource[=].searchParam[=].type = #string
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "stadtteil"
//* rest.resource[=].searchParam[=].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-Stadtteil"
//* rest.resource[=].searchParam[=].type = #string
//* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
//* rest.resource[=].searchParam[=].name = "link"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-link"
//* rest.resource[=].searchParam[=].type = #reference
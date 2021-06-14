class Address {

List<String> buildingNumber = [
  "#",
  "##"
];

List<String> city = [
  "#{city_root}#{city_suffix}"
];

List<String> cityRoot = [
  "Fet",
  "Gjes",
  "Høy",
  "Inn",
  "Fager",
  "Lille",
  "Lo",
  "Mal",
  "Nord",
  "Nær",
  "Sand",
  "Sme",
  "Stav",
  "Stor",
  "Tand",
  "Ut",
  "Vest"
];

List<String> citySuffix = [
  "berg",
  "borg",
  "by",
  "bø",
  "dal",
  "eid",
  "fjell",
  "fjord",
  "foss",
  "grunn",
  "hamn",
  "havn",
  "helle",
  "mark",
  "nes",
  "odden",
  "sand",
  "sjøen",
  "stad",
  "strand",
  "strøm",
  "sund",
  "vik",
  "vær",
  "våg",
  "ø",
  "øy",
  "ås"
];

List<String> commonStreetSuffix = [
  "sgate",
  "svei",
  "s Gate",
  "s Vei",
  "gata",
  "veien"
];

List<String> defaultCountry = [
  "Norge"
];

List<String> postcode = [
  "####",
  "####",
  "####",
  "0###"
];

List<String> secondaryAddress = [
  "Leil. ###",
  "Oppgang A",
  "Oppgang B"
];

List<String> state = [
  ""
];

List<String> streetAddress = [
  "#{street_name} #{building_number}"
];

List<String> streetName = [
  "#{street_root}#{street_suffix}",
  "#{street_prefix} #{street_root}#{street_suffix}",
  "#{Name.first_name}#{common_street_suffix}",
  "#{Name.last_name}#{common_street_suffix}"
];

List<String> streetPrefix = [
  "Øvre",
  "Nedre",
  "Søndre",
  "Gamle",
  "Østre",
  "Vestre"
];

List<String> streetRoot = [
  "Eike",
  "Bjørke",
  "Gran",
  "Vass",
  "Furu",
  "Litj",
  "Lille",
  "Høy",
  "Fosse",
  "Elve",
  "Ku",
  "Konvall",
  "Soldugg",
  "Hestemyr",
  "Granitt",
  "Hegge",
  "Rogne",
  "Fiol",
  "Sol",
  "Ting",
  "Malm",
  "Klokker",
  "Preste",
  "Dam",
  "Geiterygg",
  "Bekke",
  "Berg",
  "Kirke",
  "Kors",
  "Bru",
  "Blåveis",
  "Torg",
  "Sjø"
];

List<String> streetSuffix = [
  "alléen",
  "bakken",
  "berget",
  "bråten",
  "eggen",
  "engen",
  "ekra",
  "faret",
  "flata",
  "gata",
  "gjerdet",
  "grenda",
  "gropa",
  "hagen",
  "haugen",
  "havna",
  "holtet",
  "høgda",
  "jordet",
  "kollen",
  "kroken",
  "lia",
  "lunden",
  "lyngen",
  "løkka",
  "marka",
  "moen",
  "myra",
  "plassen",
  "ringen",
  "roa",
  "røa",
  "skogen",
  "skrenten",
  "spranget",
  "stien",
  "stranda",
  "stubben",
  "stykket",
  "svingen",
  "tjernet",
  "toppen",
  "tunet",
  "vollen",
  "vika",
  "åsen"
];

}
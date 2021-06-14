class Company {

List<String> name = [
  "#{prefix} #{Name.last_name}",
  "#{Name.last_name} #{suffix}",
  "#{prefix} #{Name.last_name} #{suffix}"
];

List<String> prefix = [
  "PT",
  "CV",
  "UD",
  "PD",
  "Perum"
];
List<String> suffix = [
  "(Persero) Tbk",
  "Tbk"
];
}
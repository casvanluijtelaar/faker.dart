class Company {

List<String> name = [
  "#{prefix} #{Name.male_last_name}",
  "#{prefix} #{Name.male_last_name} #{suffix}",
  "#{prefix} #{Name.female_last_name} #{suffix}",
  "#{Name.male_last_name} un #{Name.male_last_name}",
  "#{Name.male_last_name}, #{Name.male_last_name} un #{Name.male_last_name}"
];

List<String> prefix = [
  "SIA",
  "AS",
  "IU",
  "Bezp.Org.",
  "Firma",
  "Biedrība"
];

List<String> suffix = [
  "un partneri",
  "holdings",
  "grupa",
  "aģentūra"
];

}
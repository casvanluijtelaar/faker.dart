class Company {

List<String> name = [
  "#{Name.last_name} #{suffix}",
  "#{Name.last_name}-#{Name.last_name}",
  "#{Name.last_name}, #{Name.last_name} #{suffix}"
];

List<String> suffix = [
  "Gruppen",
  "AB",
  "HB",
  "Group",
  "Investment",
  "Kommanditbolag",
  "Aktiebolag"
];

}
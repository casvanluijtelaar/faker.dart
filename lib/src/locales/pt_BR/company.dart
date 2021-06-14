class Company {

List<String> name = [
  "#{Name.last_name} #{suffix}",
  "#{Name.last_name}-#{Name.last_name}",
  "#{Name.last_name}, #{Name.last_name} e #{Name.last_name}"
];

List<String> suffix = [
  "S.A.",
  "LTDA",
  "EIRELI",
  "e Associados",
  "Comércio"
];

}
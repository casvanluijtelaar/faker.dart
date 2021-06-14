class Company {

List<String> name = [
  "#{Name.last_name} #{suffix}",
  "#{Address.city_name} #{suffix}",
  "#{Name.last_name}, #{Name.last_name} и #{Name.last_name}"
];

List<String> suffix = [
  "ДОО",
  "ДООЕЛ",
  "АД",
  "ТП"
];

}
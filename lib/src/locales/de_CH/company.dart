class Company {

List<String> name = [
  "#{Name.last_name} #{suffix}",
  "#{Name.last_name}-#{Name.last_name}",
  "#{Name.last_name}, #{Name.last_name} und #{Name.last_name}"
];

List<String> suffix = [
  "AG",
  "GmbH",
  "und Söhne",
  "und Partner",
  "& Co.",
  "Gruppe",
  "LLC",
  "Inc."
];

}
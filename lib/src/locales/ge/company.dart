class Company {

List<String> name = [
  "#{prefix} #{Name.first_name}",
  "#{prefix} #{Name.last_name}",
  "#{prefix} #{Name.last_name} #{suffix}",
  "#{prefix} #{Name.first_name} #{suffix}",
  "#{prefix} #{Name.last_name}-#{Name.last_name}"
];

List<String> prefix = [
  "შპს",
  "სს",
  "ააიპ",
  "სსიპ"
];

List<String> suffix = [
  "ჯგუფი",
  "და კომპანია",
  "სტუდია",
  "გრუპი"
];

}
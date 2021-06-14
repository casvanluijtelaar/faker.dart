class Company {

List<String> name = [
  "#{prefix} #{Name.female_first_name}",
  "#{prefix} #{Name.male_first_name}",
  "#{prefix} #{Name.male_last_name}",
  "#{prefix} #{suffix}#{suffix}",
  "#{prefix} #{suffix}#{suffix}#{suffix}",
  "#{prefix} #{Address.city_name}#{suffix}",
  "#{prefix} #{Address.city_name}#{suffix}#{suffix}",
  "#{prefix} #{Address.city_name}#{suffix}#{suffix}#{suffix}"
];

List<String> prefix = [
  "ТОВ",
  "ПАТ",
  "ПрАТ",
  "ТДВ",
  "КТ",
  "ПТ",
  "ДП",
  "ФОП"
];

List<String> suffix = [
  "Постач",
  "Торг",
  "Пром",
  "Трейд",
  "Збут"
];

}
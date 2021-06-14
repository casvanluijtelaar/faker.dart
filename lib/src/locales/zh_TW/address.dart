class Address {

List<String> buildingNumber = [
  "####",
  "###",
  "##",
  "#"
];

List<String> city = [
  "#{city_prefix}#{city_suffix}"
];

List<String> cityPrefix = [
  "臺北",
  "新北",
  "桃園",
  "臺中",
  "臺南",
  "高雄",
  "基隆",
  "新竹",
  "嘉義",
  "苗栗",
  "彰化",
  "南投",
  "雲林",
  "屏東",
  "宜蘭",
  "花蓮",
  "臺東",
  "澎湖",
  "金門",
  "連江"
];

List<String> citySuffix = [
  "縣",
  "市"
];

List<String> defaultCountry = [
  "Taiwan (R.O.C.)"
];

List<String> postcode = [
  "######"
];

List<String> state = [
  "福建省",
  "台灣省"
];

List<String> stateAbbr = [
  "北",
  "新北",
  "桃",
  "中",
  "南",
  "高",
  "基",
  "竹市",
  "嘉市",
  "竹縣",
  "苗",
  "彰",
  "投",
  "雲",
  "嘉縣",
  "宜",
  "花",
  "東",
  "澎",
  "金",
  "馬"
];

List<String> streetAddress = [
  "#{street_name}#{building_number}號"
];

List<String> streetName = [
  "#{Name.last_name}#{street_suffix}"
];

List<String> streetSuffix = [
  "街",
  "路",
  "北路",
  "南路",
  "東路",
  "西路"
];

}
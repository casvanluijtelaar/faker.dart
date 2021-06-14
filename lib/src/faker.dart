class Faker {

  static const Map<String, dynamic> definitions = {
    "name": ["first_name", "last_name", "prefix", "suffix", "binary_gender", "gender", "title", "male_prefix", "female_prefix", "male_first_name", "female_first_name", "male_middle_name", "female_middle_name", "male_last_name", "female_last_name"],
    "address": ["city_name", "city_prefix", "city_suffix", "street_suffix", "county", "country", "country_code", "country_code_alpha_3", "state", "state_abbr", "street_prefix", "postcode", "postcode_by_state", "direction", "direction_abbr", "time_zone"],
    "animal": ["dog", "cat", "snake", "bear", "lion", "cetacean", "insect", "crocodilia", "cow", "bird", "fish", "rabbit", "horse", "type"],
    "company": ["adjective", "noun", "descriptor", "bs_adjective", "bs_noun", "bs_verb", "suffix"],
    "lorem": ["words"],
    "hacker": ["abbreviation", "adjective", "noun", "verb", "ingverb", "phrase"],
    "phone_number": ["formats"],
    "finance": ["account_type", "transaction_type", "currency", "iban", "credit_card"],
    "internet": ["avatar_uri", "domain_suffix", "free_email", "example_email", "password"],
    "commerce": ["color", "department", "product_name", "price", "categories", "product_description"],
    "database": ["collation", "column", "engine", "type"],
    "system": ["mimeTypes", "directoryPaths"],
    "date": ["month", "weekday"],
    "vehicle": ["vehicle", "manufacturer", "model", "type", "fuel", "vin", "color"],
    "music": ["genre"],
    "word": ["adjective", "adverb", "conjunction", "interjection", "noun", "preposition", "verb"],
    "title": "",
    "separator": ""
  };
}
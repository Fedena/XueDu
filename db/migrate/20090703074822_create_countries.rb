#国家
class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
      t.string :name, :comment => "名称"
    end
    create_default
  end

  def self.down
    drop_table :countries
  end

  def self.create_default
    clist = [ "Afghanistan",
         "Albania",
         "Algeria",
         "Andorra",
         "Angola",
         "Antigua & Deps",
         "Argentina",
         "Armenia",
         "Australia",
         "Austria",
         "Azerbaijan",
         "Bahamas",
         "Bahrain",
         "Bangladesh",
         "Barbados",
         "Belarus",
         "Belgium",
         "Belize",
         "Benin",
         "Bhutan",
         "Bolivia",
         "Bosnia Herzegovina",
         "Botswana",
         "Brazil",
         "Brunei",
         "Bulgaria",
         "Burkina",
         "Burundi",
         "Cambodia",
         "Cameroon",
         "Canada",
         "Cape Verde",
         "Central African Rep",
         "Chad",
         "Chile",
         "China",
         "Colombia",
         "Comoros",
         "Congo",
         "Congo {Democratic Rep}",
         "Costa Rica",
         "Croatia",
         "Cuba",
         "Cyprus",
         "Czech Republic",
         "Denmark",
         "Djibouti",
         "Dominica",
         "Dominican Republic",
         "East Timor",
         "Ecuador",
         "Egypt",
         "El Salvador",
         "Equatorial Guinea",
         "Eritrea",
         "Estonia",
         "Ethiopia",
         "Fiji",
         "Finland",
         "France",
         "Gabon",
         "Gambia",
         "Georgia",
         "Germany",
         "Ghana",
         "Greece",
         "Grenada",
         "Guatemala",
         "Guinea",
         "Guinea-Bissau",
         "Guyana",
         "Haiti",
         "Honduras",
         "Hungary",
         "Iceland",
         "India",
         "Indonesia",
         "Iran",
         "Iraq",
         "Ireland {Republic}",
         "Israel",
         "Italy",
         "Ivory Coast",
         "Jamaica",
         "Japan",
         "Jordan",
         "Kazakhstan",
         "Kenya",
         "Kiribati",
         "Korea North",
         "Korea South",
         "Kosovo",
         "Kuwait",
         "Kyrgyzstan",
         "Laos",
         "Latvia",
         "Lebanon",
         "Lesotho",
         "Liberia",
         "Libya",
         "Liechtenstein",
         "Lithuania",
         "Luxembourg",
         "Macedonia",
         "Madagascar",
         "Malawi",
         "Malaysia",
         "Maldives",
         "Mali",
         "Malta",
         "Montenegro",
         "Marshall Islands",
         "Mauritania",
         "Mauritius",
         "Mexico",
         "Micronesia",
         "Moldova",
         "Monaco",
         "Mongolia",
         "Morocco",
         "Mozambique",
         "Myanmar, {Burma}",
         "Namibia",
         "Nauru",
         "Nepal",
         "Netherlands",
         "New Zealand",
         "Nicaragua",
         "Niger",
         "Nigeria",
         "Norway",
         "Oman",
         "Pakistan",
         "Palau",
         "Panama",
         "Papua New Guinea",
         "Paraguay",
         "Peru",
         "Philippines",
         "Poland",
         "Portugal",
         "Qatar",
         "Romania",
         "Russian Federation",
         "Rwanda",
         "St Kitts & Nevis",
         "St Lucia",
         "Saint Vincent & the Grenadines",
         "Samoa",
         "San Marino",
         "Sao Tome & Principe",
         "Saudi Arabia",
         "Senegal",
         "Serbia",
         "Seychelles",
         "Sierra Leone",
         "Singapore",
         "Slovakia",
         "Slovenia",
         "Solomon Islands",
         "Somalia",
         "South Africa",
         "Spain",
         "Sri Lanka",
         "Sudan",
         "Suriname",
         "Swaziland",
         "Sweden",
         "Switzerland",
         "Syria",
         "Taiwan",
         "Tajikistan",
         "Tanzania",
         "Thailand",
         "Togo",
         "Tonga",
         "Trinidad & Tobago",
         "Tunisia",
         "Turkey",
         "Turkmenistan",
         "Tuvalu",
         "Uganda",
         "Ukraine",
         "United Arab Emirates",
         "United Kingdom",
         "United States",
         "Uruguay",
         "Uzbekistan",
         "Vanuatu",
         "Vatican City",
         "Venezuea",
         "Vietnam",
         "Yemen",
         "Zambia",
         "Zimbabwe"]
       
    clist.each do |c|
      @c1 = Country.new
      @c1.name = c
      @c1.save
    end
  end
end

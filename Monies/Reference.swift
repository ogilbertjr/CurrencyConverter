//
//  Reference.swift
//  Monies
//
//  Created by Osie G on 5/9/17.
//  Copyright © 2017 Osie G. All rights reserved.
//

import Foundation


/// available three-lettered ISO codes for use to build URL string to access foreign exchange rates
var isoCodesAvailable = ["AED", "AFN", "ALL","AMD","ANG","AOA","ARS","AUD","AWG","AZN",
                         "BAM","BBD","BDT","BGN","BHD","BIF","BMD","BND","BOB","BRL","BSD",
                         "BTC","BTN","BWP","BYN","BYR","BZD","CAD","CDF","CHF","CLF","CLP",
                         "CNY","COP","CRC","CUP","CVE","CZK","DJF","DKK","DOP","DZD","EEK",
                         "EGP","ERN","ETB","EUR","FJD","FKP","GBP","GEL","GGP","GHS","GIP",
                         "GMD","GNF","GTQ","GYD","HKD","HNL","HRK","HTG","HUF","IDR","ILS",
                         "IMP","INR","IQD","IRR","ISK","JEP","JMD","JOD","JPY","KES","KGS",
                         "KHR","KMF","KPW","KRW","KWD","KYD","KZT","LAK","LBP","LKR","LRD",
                         "LSL","LTL","LVL","LYD","MAD","MDL","MGA","MKD","MMK","MNT","MOP",
                         "MRO","MUR","MVR","MWK","MXN","MYR","MZN","NAD","NGN","NIO","NOK",
                         "NPR","NZD","OMR","PAB","PEN","PGK","PHP","PKR","PLN","PYG","QAR",
                         "RON","RSD","RUB","RWF","SAR","SBD","SCR","SDG","SEK","SGD","SHP",
                         "SLL","SOS","SRD","STD","SVC","SYP","SZL","THB","TJS","TMT","TND",
                         "TOP","TRY","TTD","TWD","TZS","UAH","UGX","UYU","UZS","VEF","VND",
                         "VUV","WST","XAF","XAG","XAU","XCD","XDR","XOF","XPF","YER","ZAR",
                         "ZMK","ZMW","ZWL"]

/// available currencies in English
var availableCurrencies = ["AED":"United Arab Emirates Dirham","AFN":"Afghan Afghani","ALL":"Albanian Lek","AMD":"Armenian Dram","ANG":"Netherlands Antillean Guilder","AOA":"Angolan Kwanza","ARS":"Argentine Peso","AUD":"Australian Dollar","AWG":"Aruban Florin","AZN":"Azerbaijani Manat","BAM":"Bosnia-Herzegovina Convertible Mark","BBD":"Barbadian Dollar","BDT":"Bangladeshi Taka","BGN":"Bulgarian Lev","BHD":"Bahraini Dinar","BIF":"Burundian Franc","BMD":"Bermudan Dollar","BND":"Brunei Dollar","BOB":"Bolivian Boliviano","BRL":"Brazilian Real","BSD":"Bahamian Dollar","BTC":"Bitcoin","BTN":"Bhutanese Ngultrum","BWP":"Botswanan Pula","BYN":"New Belarusian Ruble","BYR":"Belarusian Ruble","BZD":"Belize Dollar","CAD":"Canadian Dollar","CDF":"Congolese Franc","CHF":"Swiss Franc","CLF":"Chilean Unit of Account (UF)","CLP":"Chilean Peso","CNY":"Chinese Yuan","COP":"Colombian Peso","CRC":"Costa Rican Colón","CUC":"Cuban Convertible Peso","CUP":"Cuban Peso","CVE":"Cape Verdean Escudo","CZK":"Czech Republic Koruna","DJF":"Djiboutian Franc","DKK":"Danish Krone","DOP":"Dominican Peso","DZD":"Algerian Dinar","EEK":"Estonian Kroon","EGP":"Egyptian Pound","ERN":"Eritrean Nakfa","ETB":"Ethiopian Birr","EUR":"Euro","FJD":"Fijian Dollar","FKP":"Falkland Islands Pound","GBP":"British Pound Sterling","GEL":"Georgian Lari","GGP":"Guernsey Pound","GHS":"Ghanaian Cedi","GIP":"Gibraltar Pound","GMD":"Gambian Dalasi","GNF":"Guinean Franc","GTQ":"Guatemalan Quetzal","GYD":"Guyanaese Dollar","HKD":"Hong Kong Dollar","HNL":"Honduran Lempira","HRK":"Croatian Kuna","HTG":"Haitian Gourde","HUF":"Hungarian Forint","IDR":"Indonesian Rupiah","ILS":"Israeli New Sheqel","IMP":"Manx pound","INR":"Indian Rupee","IQD":"Iraqi Dinar","IRR":"Iranian Rial","ISK":"Icelandic Króna","JEP":"Jersey Pound","JMD":"Jamaican Dollar","JOD":"Jordanian Dinar","JPY":"Japanese Yen","KES":"Kenyan Shilling","KGS":"Kyrgystani Som","KHR":"Cambodian Riel","KMF":"Comorian Franc","KPW":"North Korean Won","KRW":"South Korean Won","KWD":"Kuwaiti Dinar","KYD":"Cayman Islands Dollar","KZT":"Kazakhstani Tenge","LAK":"Laotian Kip","LBP":"Lebanese Pound","LKR":"Sri Lankan Rupee","LRD":"Liberian Dollar","LSL":"Lesotho Loti","LTL":"Lithuanian Litas","LVL":"Latvian Lats","LYD":"Libyan Dinar","MAD":"Moroccan Dirham","MDL":"Moldovan Leu","MGA":"Malagasy Ariary","MKD":"Macedonian Denar","MMK":"Myanma Kyat","MNT":"Mongolian Tugrik","MOP":"Macanese Pataca","MRO":"Mauritanian Ouguiya","MUR":"Mauritian Rupee","MVR":"Maldivian Rufiyaa","MWK":"Malawian Kwacha","MXN":"Mexican Peso","MYR":"Malaysian Ringgit","MZN":"Mozambican Metical","NAD":"Namibian Dollar","NGN":"Nigerian Naira","NIO":"Nicaraguan Córdoba","NOK":"Norwegian Krone","NPR":"Nepalese Rupee","NZD":"New Zealand Dollar","OMR":"Omani Rial","PAB":"Panamanian Balboa","PEN":"Peruvian Nuevo Sol","PGK":"Papua New Guinean Kina","PHP":"Philippine Peso","PKR":"Pakistani Rupee","PLN":"Polish Zloty","PYG":"Paraguayan Guarani","QAR":"Qatari Rial","RON":"Romanian Leu","RSD":"Serbian Dinar","RUB":"Russian Ruble","RWF":"Rwandan Franc","SAR":"Saudi Riyal","SBD":"Solomon Islands Dollar","SCR":"Seychellois Rupee","SDG":"Sudanese Pound","SEK":"Swedish Krona","SGD":"Singapore Dollar","SHP":"Saint Helena Pound","SLL":"Sierra Leonean Leone","SOS":"Somali Shilling","SRD":"Surinamese Dollar","STD":"São Tomé and Príncipe Dobra","SVC":"Salvadoran Colón","SYP":"Syrian Pound","SZL":"Swazi Lilangeni","THB":"Thai Baht","TJS":"Tajikistani Somoni","TMT":"Turkmenistani Manat","TND":"Tunisian Dinar","TOP":"Tongan Pa'anga","TRY":"Turkish Lira","TTD":"Trinidad and Tobago Dollar","TWD":"New Taiwan Dollar","TZS":"Tanzanian Shilling","UAH":"Ukrainian Hryvnia","UGX":"Ugandan Shilling","USD":"United States Dollar","UYU":"Uruguayan Peso","UZS":"Uzbekistan Som","VEF":"Venezuelan Bolívar Fuerte","VND":"Vietnamese Dong","VUV":"Vanuatu Vatu","WST":"Samoan Tala","XAF":"CFA Franc BEAC","XAG":"Silver (troy ounce)","XAU":"Gold (troy ounce)","XCD":"East Caribbean Dollar","XDR":"Special Drawing Rights","XOF":"CFA Franc BCEAO","XPF":"CFP Franc","YER":"Yemeni Rial","ZAR":"South African Rand","ZMW":"Zambian Kwacha"]

/// Names of countries to be used to access flag files
let countryNames = ["AED":"UnitedArabEmirates","AFN":"Afghanistan","ALL":"Albania","AMD":"Armenia",
                    "ANG":"NetherlandsAntilles","AOA":"Angola","ARS":"Argentina","AUD":"Australia",
                    "AWG":"Aruba","AZN":"Azerbaijan","BAM":"Bosnia","BBD":"Barbados",
                    "BDT":"Bangladesh","BGN":"Bulgaria","BHD":"Bahrain","BIF":"Burundi","BMD":"Bermuda",
                    "BND":"Brunei","BOB":"Bolivia","BRL":"Brazil","BSD":"Bahamas","BTN":"Bhutan",
                    "BWP":"Botswana","BYR":"Belarus","BZD":"Belize","CAD":"Canada","CDF":"Congo",
                    "CHF":"Switzerland","CLP":"Chile","CNY":"China","COP":"Colombia","CRC":"CostaRica",
                    "CUP":"Cuba","CVE":"CapeVerde","CZK":"CzechRepublic","DJF":"Djibouti","DKK":"Denmark",
                    "DOP":"DominicanRepublic","DZD":"Algeria","EGP":"Egypt","ERN":"Eritrea","ETB":"Ethiopia",
                    "EUR":"Euro","FJD":"Fiji","GBP":"UnitedKingdom","GEL":"Georgia","GHS":"Ghana",
                    "GMD":"Gambia","GNF":"Guinea","GTQ":"Guatemala","GYD":"Guyana","HKD":"HongKong",
                    "HNL":"Honduras","HRK":"Croatia","HTG":"Haiti","HUF":"Hungary","IDR":"Indonesia",
                    "ILS":"Israel","INR":"India","IQD":"Iraq","IRR":"Iran","ISK":"Iceland","JMD":"Jamaica",
                    "JOD":"Jordan","JPY":"Japan","KES":"Kenya","KGS":"Kyrgystan","KHR":"Cambodia",
                    "KMF":"Comoros","KPW":"NorthKorea","KRW":"SouthKorea","KWD":"Kuwait","KYD":"CaymanIslands",
                    "KZT":"Kazakhstan","LAK":"Laos","LBP":"Lebanon","LKR":"SriLankan","LRD":"Liberia",
                    "LSL":"Lesotho","LYD":"Libya","MAD":"Morocco","MDL":"Moldova","MGA":"Madagascar",
                    "MKD":"Macedonia","MMK":"Myanmar","MNT":"Mongolia","MOP":"Macau","MRO":"Mauritania",
                    "MUR":"Mauritius","MVR":"Maldives","MWK":"Malawi","MXN":"Mexico","MYR":"Malaysia",
                    "MZN":"Mozambique","NAD":"Namibia","NGN":"Nigeria","NIO":"Nicaragua","NOK":"Norway",
                    "NPR":"Nepal","NZD":"NewZealand","OMR":"Oman","PAB":"Panama","PEN":"Peru",
                    "PGK":"PapuaNewGuinea","PHP":"Philippines","PKR":"Pakistan","PLN":"Poland","PYG":"Paraguay",
                    "QAR":"Qatar","RON":"Romania","RSD":"Serbia","RUB":"Russia","RWF":"Rwanda",
                    "SAR":"SaudiArabia","SBD":"SolomonIslands","SCR":"Seychelles","SDG":"Sudan",
                    "SEK":"Sweden","SGD":"Singapore","SLL":"SierraLeone","SOS":"Somalia","SRD":"Suriname",
                    "STD":"SaoTomeAndPríncipe","SVC":"ElSalvador","SYP":"Syria","SZL":"Swaziland",
                    "THB":"Thailand","TJS":"Tajikistan","TMT":"Turkmenistan","TND":"Tunisia",
                    "TOP":"Tonga","TRY":"Turkey","TTD":"TrinidadAndTobago","TWD":"Taiwan",
                    "TZS":"Tanzania","UAH":"Ukraine","UGX":"Uganda","UYU":"Uruguay",
                    "UZS":"Uzbekistan","VEF":"Venezuela","VND":"Vietnam","VUV":"Vanuatu",
                    "WST":"Samoa","XAF":"CentralAfrica","XCD":"Grenada","XOF":"IvoryCoast","YER":"Yemen",
                    "ZAR":"SouthAfrica","ZMW":"Zambia"]






/// Monedas disponibles en espanol
var monedasDisponibles = ["AED":"Dirham emiratí","AFN":"Afgani afgano",
                          "ALL":"Lek albanés","AMD":"Dram armenio","ANG":"Florín antillano",
                          "AOA":"Kwanza angoleño","ARS":"Peso argentino","AUD":"Dólar australiano","AWG":"Florín arubano","AZN":"Manat azerí","BAM":"Marco bosnioherzegovino",
                          "BBD":"Dólar barbandense","BDT":"Taka bengalí","BGN":"Lev búlgaro","BHD":"Dinar bareiní","BIF":"Franco burundiano","BMD":"Dólar bermudeño",
                          "BND":"Dólar brneano","BOB":"Boliviano","BRL":"Real brasileño","BSD":"Dólar bahameño","BTN":"Ngultrum butanés","BWP":"Pula botsuanésa",
                          "BYR":"Rublo bielorruso","BZD":"Dólar beliceño","CAD":"Dólar canadiense",
                          "CDF":"Franco congoleño","CHF":"Franco suizo","CLP":"Peso chileno",
                          "CNY":"Yuan chino","COP":"Peso colombiano","CRC":"Colón costarricense",
                          "CUP":"Peso cubano","CVE":"Escudo caboverdiano","CZK":"Corona checa",
                          "DJF":"Franco yibutiano","DKK":"Corona danesa","DOP":"Peso dominicano",
                          "DZD":"Dinar argelino","EGP":"Libra egipcia","ERN":"Nakfa eritreo","ETB":"Birr etíope","EUR":"Euro","FJD":"Dólar fiyiano","GBP":"Libra esterlina británica",
                          "GEL":"Lari georgiano","GHS":"Cedi ghanés","GMD":"Dalasi gambiano","GNF":"Franco guineano","GTQ":"Quetzal guatemalteca","GYD":"Dólar guyanés",
                          "HKD":"Dólar hongkonés","HNL":"Lempira hondureño","HRK":"Kuna croata","HTG":"Gourde haitiana",
                          "HUF":"Forinto húngaro","IDR":"Rupia indonesia","ILS":"Nuevo shequel israelí",
                          "INR":"Rupia india","IQD":"Dinar iraquí","IRR":"Rial iraní",
                          "ISK":"Corona islandesa","JMD":"Dólar jamaicano","JOD":"Dinar jordano",
                          "JPY":"Yen japonés","KES":"Chelín keniata","KGS":"Som kirguiz",
                          "KHR":"Riel camboyano","KMF":"Franco comorense","KPW":"Won norcoreano",
                          "KRW":"Won surcoreano","KWD":"Dinar kuwaití","KYD":"Dólar caimanés",
                          "KZT":"Tenge kazajo","LAK":"Kip laosiano","LBP":"Libra libanesa",
                          "LKR":"Rupia srilanquesa","LRD":"Dólar liberiano","LSL":"Loti lesotense",
                          "LYD":"Dinar libio","MAD":"Dirham marroquí","MDL":"Leu moldavo",
                          "MGA":"Ariary malgache","MKD":"Denar macedonio","MMK":"Kyat birmano",
                          "MNT":"Tugrik mongol","MRO":"Uguiya mauritana","MUR":"Rupia mauriciana",
                          "MVR":"Rufiyaa maldiva","MWK":"Kwacha malauí","MXN":"Peso mexicano",
                          "MYR":"Ringgit malasio","MZN":"Metical mozambiqueño","NAD":"Dólar namibiano",
                          "NGN":"Naira nigeriano","NIO":"Córdoba nicaragüense","NOK":"Corona noruega",
                          "NPR":"Rupia nepalesa","NZD":"Dólar neozelandés","OMR":"Rial omaní",
                          "PAB":"Balboa panameño","PEN":"Nuevo sol peruano","PGK":"Kina papú",
                          "PHP":"Peso filipino","PKR":"Rupia pakistaní","PLN":"Eslotí polaco",
                          "PYG":"Guarani paraguayo","QAR":"Rial catarí","RON":"Leu rumano",
                          "RSD":"Dinar serbio","RUB":"Rublo ruso","RWF":"Franco ruandés",
                          "SAR":"Riyal saudita","SBD":"Dólar salomonense","SCR":"Rupia seychelense",
                          "SDG":"Libra sudanesa","SEK":"Corona sueca","SGD":"Dólar singapurense",
                          "SLL":"Leone sierraleonés","SOS":"Chelín somalí","SRD":"Dólar surinamés",
                          "STD":"Dobra santotomense","SVC":"Colón salvadoreño",
                          "SYP":"Libra siria","SZL":"Lilangeni suazi","THB":"Baht tailandés",
                          "TJS":"Somoni tayiko","TMT":"Manat turcomano","TND":"Dinar tunecino",
                          "TOP":"Pa'anga tongano","TRY":"Lira turca","TTD":"Dólar trinitario",
                          "TWD":"Nuevo dólar taiwanés","TZS":"Chelín tanzano","UAH":"Grivna ucraniana",
                          "UGX":"Chelín ugandés","UYU":"Peso uruguayo","UZS":"Som uzbeko",
                          "VEF":"Bolívar fuerte venezolano","VND":"Dong vietnamita",
                          "VUV":"Vatu vanuatuense","WST":"Tala samoano","XAF":"Franco CFA de África Central",
                          "XCD":"Dólar del Caribe Oriental","XOF":"Franco CFA de África Occidental",
                          "XPF":"CFP Franco","YER":"Rial yemení","ZAR":"Rand sudafricano","ZMW":"Kwacha zambiano"]

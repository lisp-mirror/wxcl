;;;wxLocale.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxLocale
    (:use :common-lisp :ffi :wxCL)
  (:export
   :wxLocale_Create
   :wxLocale_Delete
   :wxLocale_IsOk
   :wxLocale_GetLocale
   :wxLocale_AddCatalogLookupPathPrefix
   :wxLocale_AddCatalog
   :wxLocale_IsLoaded
   :wxLocale_GetString
   :wxLocale_GetName
   :wxGetELJLocale
   :wxGetELJTranslation
   :wxLANGUAGE_DEFAULT 
   :wxLANGUAGE_UNKNOWN 
   :wxLANGUAGE_ABKHAZIAN 
   :wxLANGUAGE_AFAR 
   :wxLANGUAGE_AFRIKAANS 
   :wxLANGUAGE_ALBANIAN 
   :wxLANGUAGE_AMHARIC 
   :wxLANGUAGE_ARABIC 
   :wxLANGUAGE_ARABIC_ALGERIA 
   :wxLANGUAGE_ARABIC_BAHRAIN 
   :wxLANGUAGE_ARABIC_EGYPT 
   :wxLANGUAGE_ARABIC_IRAQ 
   :wxLANGUAGE_ARABIC_JORDAN 
   :wxLANGUAGE_ARABIC_KUWAIT 
   :wxLANGUAGE_ARABIC_LEBANON 
   :wxLANGUAGE_ARABIC_LIBYA 
   :wxLANGUAGE_ARABIC_MOROCCO 
   :wxLANGUAGE_ARABIC_OMAN 
   :wxLANGUAGE_ARABIC_QATAR 
   :wxLANGUAGE_ARABIC_SAUDI_ARABIA 
   :wxLANGUAGE_ARABIC_SUDAN 
   :wxLANGUAGE_ARABIC_SYRIA 
   :wxLANGUAGE_ARABIC_TUNISIA 
   :wxLANGUAGE_ARABIC_UAE 
   :wxLANGUAGE_ARABIC_YEMEN 
   :wxLANGUAGE_ARMENIAN 
   :wxLANGUAGE_ASSAMESE 
   :wxLANGUAGE_AYMARA 
   :wxLANGUAGE_AZERI 
   :wxLANGUAGE_AZERI_CYRILLIC 
   :wxLANGUAGE_AZERI_LATIN 
   :wxLANGUAGE_BASHKIR 
   :wxLANGUAGE_BASQUE 
   :wxLANGUAGE_BELARUSIAN 
   :wxLANGUAGE_BENGALI 
   :wxLANGUAGE_BHUTANI 
   :wxLANGUAGE_BIHARI 
   :wxLANGUAGE_BISLAMA 
   :wxLANGUAGE_BRETON 
   :wxLANGUAGE_BULGARIAN 
   :wxLANGUAGE_BURMESE 
   :wxLANGUAGE_CAMBODIAN 
   :wxLANGUAGE_CATALAN 
   :wxLANGUAGE_CHINESE 
   :wxLANGUAGE_CHINESE_SIMPLIFIED 
   :wxLANGUAGE_CHINESE_TRADITIONAL 
   :wxLANGUAGE_CHINESE_HONGKONG 
   :wxLANGUAGE_CHINESE_MACAU 
   :wxLANGUAGE_CHINESE_SINGAPORE 
   :wxLANGUAGE_CHINESE_TAIWAN 
   :wxLANGUAGE_CORSICAN 
   :wxLANGUAGE_CROATIAN 
   :wxLANGUAGE_CZECH 
   :wxLANGUAGE_DANISH 
   :wxLANGUAGE_DUTCH 
   :wxLANGUAGE_DUTCH_BELGIAN 
   :wxLANGUAGE_ENGLISH 
   :wxLANGUAGE_ENGLISH_UK 
   :wxLANGUAGE_ENGLISH_US 
   :wxLANGUAGE_ENGLISH_AUSTRALIA 
   :wxLANGUAGE_ENGLISH_BELIZE 
   :wxLANGUAGE_ENGLISH_BOTSWANA 
   :wxLANGUAGE_ENGLISH_CANADA 
   :wxLANGUAGE_ENGLISH_CARIBBEAN 
   :wxLANGUAGE_ENGLISH_DENMARK 
   :wxLANGUAGE_ENGLISH_EIRE 
   :wxLANGUAGE_ENGLISH_JAMAICA 
   :wxLANGUAGE_ENGLISH_NEW_ZEALAND 
   :wxLANGUAGE_ENGLISH_PHILIPPINES 
   :wxLANGUAGE_ENGLISH_SOUTH_AFRICA 
   :wxLANGUAGE_ENGLISH_TRINIDAD 
   :wxLANGUAGE_ENGLISH_ZIMBABWE 
   :wxLANGUAGE_ESPERANTO 
   :wxLANGUAGE_ESTONIAN 
   :wxLANGUAGE_FAEROESE 
   :wxLANGUAGE_FARSI 
   :wxLANGUAGE_FIJI 
   :wxLANGUAGE_FINNISH 
   :wxLANGUAGE_FRENCH 
   :wxLANGUAGE_FRENCH_BELGIAN 
   :wxLANGUAGE_FRENCH_CANADIAN 
   :wxLANGUAGE_FRENCH_LUXEMBOURG 
   :wxLANGUAGE_FRENCH_MONACO 
   :wxLANGUAGE_FRENCH_SWISS 
   :wxLANGUAGE_FRISIAN 
   :wxLANGUAGE_GALICIAN 
   :wxLANGUAGE_GEORGIAN 
   :wxLANGUAGE_GERMAN 
   :wxLANGUAGE_GERMAN_AUSTRIAN 
   :wxLANGUAGE_GERMAN_BELGIUM 
   :wxLANGUAGE_GERMAN_LIECHTENSTEIN 
   :wxLANGUAGE_GERMAN_LUXEMBOURG 
   :wxLANGUAGE_GERMAN_SWISS 
   :wxLANGUAGE_GREEK 
   :wxLANGUAGE_GREENLANDIC 
   :wxLANGUAGE_GUARANI 
   :wxLANGUAGE_GUJARATI 
   :wxLANGUAGE_HAUSA 
   :wxLANGUAGE_HEBREW 
   :wxLANGUAGE_HINDI 
   :wxLANGUAGE_HUNGARIAN 
   :wxLANGUAGE_ICELANDIC 
   :wxLANGUAGE_INDONESIAN 
   :wxLANGUAGE_INTERLINGUA 
   :wxLANGUAGE_INTERLINGUE 
   :wxLANGUAGE_INUKTITUT 
   :wxLANGUAGE_INUPIAK 
   :wxLANGUAGE_IRISH 
   :wxLANGUAGE_ITALIAN 
   :wxLANGUAGE_ITALIAN_SWISS 
   :wxLANGUAGE_JAPANESE 
   :wxLANGUAGE_JAVANESE 
   :wxLANGUAGE_KANNADA 
   :wxLANGUAGE_KASHMIRI 
   :wxLANGUAGE_KASHMIRI_INDIA 
   :wxLANGUAGE_KAZAKH 
   :wxLANGUAGE_KERNEWEK 
   :wxLANGUAGE_KINYARWANDA 
   :wxLANGUAGE_KIRGHIZ 
   :wxLANGUAGE_KIRUNDI 
   :wxLANGUAGE_KONKANI 
   :wxLANGUAGE_KOREAN 
   :wxLANGUAGE_KURDISH 
   :wxLANGUAGE_LAOTHIAN 
   :wxLANGUAGE_LATIN 
   :wxLANGUAGE_LATVIAN 
   :wxLANGUAGE_LINGALA 
   :wxLANGUAGE_LITHUANIAN 
   :wxLANGUAGE_MACEDONIAN 
   :wxLANGUAGE_MALAGASY 
   :wxLANGUAGE_MALAY 
   :wxLANGUAGE_MALAYALAM 
   :wxLANGUAGE_MALAY_BRUNEI_DARUSSALAM 
   :wxLANGUAGE_MALAY_MALAYSIA 
   :wxLANGUAGE_MALTESE 
   :wxLANGUAGE_MANIPURI 
   :wxLANGUAGE_MAORI 
   :wxLANGUAGE_MARATHI 
   :wxLANGUAGE_MOLDAVIAN 
   :wxLANGUAGE_MONGOLIAN 
   :wxLANGUAGE_NAURU 
   :wxLANGUAGE_NEPALI 
   :wxLANGUAGE_NEPALI_INDIA 
   :wxLANGUAGE_NORWEGIAN_BOKMAL 
   :wxLANGUAGE_NORWEGIAN_NYNORSK 
   :wxLANGUAGE_OCCITAN 
   :wxLANGUAGE_ORIYA 
   :wxLANGUAGE_OROMO 
   :wxLANGUAGE_PASHTO 
   :wxLANGUAGE_POLISH 
   :wxLANGUAGE_PORTUGUESE 
   :wxLANGUAGE_PORTUGUESE_BRAZILIAN 
   :wxLANGUAGE_PUNJABI 
   :wxLANGUAGE_QUECHUA 
   :wxLANGUAGE_RHAETO_ROMANCE 
   :wxLANGUAGE_ROMANIAN 
   :wxLANGUAGE_RUSSIAN 
   :wxLANGUAGE_RUSSIAN_UKRAINE 
   :wxLANGUAGE_SAMOAN 
   :wxLANGUAGE_SANGHO 
   :wxLANGUAGE_SANSKRIT 
   :wxLANGUAGE_SCOTS_GAELIC 
   :wxLANGUAGE_SERBIAN 
   :wxLANGUAGE_SERBIAN_CYRILLIC 
   :wxLANGUAGE_SERBIAN_LATIN 
   :wxLANGUAGE_SERBO_CROATIAN 
   :wxLANGUAGE_SESOTHO 
   :wxLANGUAGE_SETSWANA 
   :wxLANGUAGE_SHONA 
   :wxLANGUAGE_SINDHI 
   :wxLANGUAGE_SINHALESE 
   :wxLANGUAGE_SISWATI 
   :wxLANGUAGE_SLOVAK 
   :wxLANGUAGE_SLOVENIAN 
   :wxLANGUAGE_SOMALI 
   :wxLANGUAGE_SPANISH 
   :wxLANGUAGE_SPANISH_ARGENTINA 
   :wxLANGUAGE_SPANISH_BOLIVIA 
   :wxLANGUAGE_SPANISH_CHILE 
   :wxLANGUAGE_SPANISH_COLOMBIA 
   :wxLANGUAGE_SPANISH_COSTA_RICA 
   :wxLANGUAGE_SPANISH_DOMINICAN_REPUBLIC 
   :wxLANGUAGE_SPANISH_ECUADOR 
   :wxLANGUAGE_SPANISH_EL_SALVADOR 
   :wxLANGUAGE_SPANISH_GUATEMALA 
   :wxLANGUAGE_SPANISH_HONDURAS 
   :wxLANGUAGE_SPANISH_MEXICAN 
   :wxLANGUAGE_SPANISH_MODERN 
   :wxLANGUAGE_SPANISH_NICARAGUA 
   :wxLANGUAGE_SPANISH_PANAMA 
   :wxLANGUAGE_SPANISH_PARAGUAY 
   :wxLANGUAGE_SPANISH_PERU 
   :wxLANGUAGE_SPANISH_PUERTO_RICO 
   :wxLANGUAGE_SPANISH_URUGUAY 
   :wxLANGUAGE_SPANISH_US 
   :wxLANGUAGE_SPANISH_VENEZUELA 
   :wxLANGUAGE_SUNDANESE 
   :wxLANGUAGE_SWAHILI 
   :wxLANGUAGE_SWEDISH 
   :wxLANGUAGE_SWEDISH_FINLAND 
   :wxLANGUAGE_TAGALOG 
   :wxLANGUAGE_TAJIK 
   :wxLANGUAGE_TAMIL 
   :wxLANGUAGE_TATAR 
   :wxLANGUAGE_TELUGU 
   :wxLANGUAGE_THAI 
   :wxLANGUAGE_TIBETAN 
   :wxLANGUAGE_TIGRINYA 
   :wxLANGUAGE_TONGA 
   :wxLANGUAGE_TSONGA 
   :wxLANGUAGE_TURKISH 
   :wxLANGUAGE_TURKMEN 
   :wxLANGUAGE_TWI 
   :wxLANGUAGE_UIGHUR 
   :wxLANGUAGE_UKRAINIAN 
   :wxLANGUAGE_URDU 
   :wxLANGUAGE_URDU_INDIA 
   :wxLANGUAGE_URDU_PAKISTAN 
   :wxLANGUAGE_UZBEK 
   :wxLANGUAGE_UZBEK_CYRILLIC 
   :wxLANGUAGE_UZBEK_LATIN 
   :wxLANGUAGE_VIETNAMESE 
   :wxLANGUAGE_VOLAPUK 
   :wxLANGUAGE_WELSH 
   :wxLANGUAGE_WOLOF 
   :wxLANGUAGE_XHOSA 
   :wxLANGUAGE_YIDDISH 
   :wxLANGUAGE_YORUBA 
   :wxLANGUAGE_ZHUANG 
   :wxLANGUAGE_ZULU 
   :wxLANGUAGE_USER_DEFINE))

(in-package :wxLocale)

(ffi:default-foreign-language :stdc)

(defconstant wxLANGUAGE_DEFAULT 0)
(defconstant wxLANGUAGE_UNKNOWN 1)
(defconstant wxLANGUAGE_ABKHAZIAN 2)
(defconstant wxLANGUAGE_AFAR 3)
(defconstant wxLANGUAGE_AFRIKAANS 4)
(defconstant wxLANGUAGE_ALBANIAN 5)
(defconstant wxLANGUAGE_AMHARIC 6)
(defconstant wxLANGUAGE_ARABIC 7)
(defconstant wxLANGUAGE_ARABIC_ALGERIA 8)
(defconstant wxLANGUAGE_ARABIC_BAHRAIN 9)
(defconstant wxLANGUAGE_ARABIC_EGYPT 10)
(defconstant wxLANGUAGE_ARABIC_IRAQ 11)
(defconstant wxLANGUAGE_ARABIC_JORDAN 12)
(defconstant wxLANGUAGE_ARABIC_KUWAIT 13)
(defconstant wxLANGUAGE_ARABIC_LEBANON 14)
(defconstant wxLANGUAGE_ARABIC_LIBYA 15)
(defconstant wxLANGUAGE_ARABIC_MOROCCO 16)
(defconstant wxLANGUAGE_ARABIC_OMAN 17)
(defconstant wxLANGUAGE_ARABIC_QATAR 18)
(defconstant wxLANGUAGE_ARABIC_SAUDI_ARABIA 19)
(defconstant wxLANGUAGE_ARABIC_SUDAN 20)
(defconstant wxLANGUAGE_ARABIC_SYRIA 21)
(defconstant wxLANGUAGE_ARABIC_TUNISIA 22)
(defconstant wxLANGUAGE_ARABIC_UAE 23)
(defconstant wxLANGUAGE_ARABIC_YEMEN 24)
(defconstant wxLANGUAGE_ARMENIAN 25)
(defconstant wxLANGUAGE_ASSAMESE 26)
(defconstant wxLANGUAGE_AYMARA 27)
(defconstant wxLANGUAGE_AZERI 28)
(defconstant wxLANGUAGE_AZERI_CYRILLIC 29)
(defconstant wxLANGUAGE_AZERI_LATIN 30)
(defconstant wxLANGUAGE_BASHKIR 31)
(defconstant wxLANGUAGE_BASQUE 32)
(defconstant wxLANGUAGE_BELARUSIAN 33)
(defconstant wxLANGUAGE_BENGALI 34)
(defconstant wxLANGUAGE_BHUTANI 35)
(defconstant wxLANGUAGE_BIHARI 36)
(defconstant wxLANGUAGE_BISLAMA 37)
(defconstant wxLANGUAGE_BRETON 38)
(defconstant wxLANGUAGE_BULGARIAN 39)
(defconstant wxLANGUAGE_BURMESE 40)
(defconstant wxLANGUAGE_CAMBODIAN 41)
(defconstant wxLANGUAGE_CATALAN 42)
(defconstant wxLANGUAGE_CHINESE 43)
(defconstant wxLANGUAGE_CHINESE_SIMPLIFIED 44)
(defconstant wxLANGUAGE_CHINESE_TRADITIONAL 45)
(defconstant wxLANGUAGE_CHINESE_HONGKONG 46)
(defconstant wxLANGUAGE_CHINESE_MACAU 47)
(defconstant wxLANGUAGE_CHINESE_SINGAPORE 48)
(defconstant wxLANGUAGE_CHINESE_TAIWAN 49)
(defconstant wxLANGUAGE_CORSICAN 50)
(defconstant wxLANGUAGE_CROATIAN 51)
(defconstant wxLANGUAGE_CZECH 52)
(defconstant wxLANGUAGE_DANISH 53)
(defconstant wxLANGUAGE_DUTCH 54)
(defconstant wxLANGUAGE_DUTCH_BELGIAN 55)
(defconstant wxLANGUAGE_ENGLISH 56)
(defconstant wxLANGUAGE_ENGLISH_UK 57)
(defconstant wxLANGUAGE_ENGLISH_US 58)
(defconstant wxLANGUAGE_ENGLISH_AUSTRALIA 59)
(defconstant wxLANGUAGE_ENGLISH_BELIZE 60)
(defconstant wxLANGUAGE_ENGLISH_BOTSWANA 61)
(defconstant wxLANGUAGE_ENGLISH_CANADA 62)
(defconstant wxLANGUAGE_ENGLISH_CARIBBEAN 63)
(defconstant wxLANGUAGE_ENGLISH_DENMARK 64)
(defconstant wxLANGUAGE_ENGLISH_EIRE 65)
(defconstant wxLANGUAGE_ENGLISH_JAMAICA 66)
(defconstant wxLANGUAGE_ENGLISH_NEW_ZEALAND 67)
(defconstant wxLANGUAGE_ENGLISH_PHILIPPINES 68)
(defconstant wxLANGUAGE_ENGLISH_SOUTH_AFRICA 69)
(defconstant wxLANGUAGE_ENGLISH_TRINIDAD 70)
(defconstant wxLANGUAGE_ENGLISH_ZIMBABWE 71)
(defconstant wxLANGUAGE_ESPERANTO 72)
(defconstant wxLANGUAGE_ESTONIAN 73)
(defconstant wxLANGUAGE_FAEROESE 74)
(defconstant wxLANGUAGE_FARSI 75)
(defconstant wxLANGUAGE_FIJI 76)
(defconstant wxLANGUAGE_FINNISH 77)
(defconstant wxLANGUAGE_FRENCH 78)
(defconstant wxLANGUAGE_FRENCH_BELGIAN 79)
(defconstant wxLANGUAGE_FRENCH_CANADIAN 80)
(defconstant wxLANGUAGE_FRENCH_LUXEMBOURG 81)
(defconstant wxLANGUAGE_FRENCH_MONACO 82)
(defconstant wxLANGUAGE_FRENCH_SWISS 83)
(defconstant wxLANGUAGE_FRISIAN 84)
(defconstant wxLANGUAGE_GALICIAN 85)
(defconstant wxLANGUAGE_GEORGIAN 86)
(defconstant wxLANGUAGE_GERMAN 87)
(defconstant wxLANGUAGE_GERMAN_AUSTRIAN 88)
(defconstant wxLANGUAGE_GERMAN_BELGIUM 89)
(defconstant wxLANGUAGE_GERMAN_LIECHTENSTEIN 90)
(defconstant wxLANGUAGE_GERMAN_LUXEMBOURG 91)
(defconstant wxLANGUAGE_GERMAN_SWISS 92)
(defconstant wxLANGUAGE_GREEK 93)
(defconstant wxLANGUAGE_GREENLANDIC 94)
(defconstant wxLANGUAGE_GUARANI 95)
(defconstant wxLANGUAGE_GUJARATI 96)
(defconstant wxLANGUAGE_HAUSA 97)
(defconstant wxLANGUAGE_HEBREW 98)
(defconstant wxLANGUAGE_HINDI 99)
(defconstant wxLANGUAGE_HUNGARIAN 100)
(defconstant wxLANGUAGE_ICELANDIC 101)
(defconstant wxLANGUAGE_INDONESIAN 102)
(defconstant wxLANGUAGE_INTERLINGUA 103)
(defconstant wxLANGUAGE_INTERLINGUE 104)
(defconstant wxLANGUAGE_INUKTITUT 105)
(defconstant wxLANGUAGE_INUPIAK 106)
(defconstant wxLANGUAGE_IRISH 107)
(defconstant wxLANGUAGE_ITALIAN 108)
(defconstant wxLANGUAGE_ITALIAN_SWISS 109)
(defconstant wxLANGUAGE_JAPANESE 110)
(defconstant wxLANGUAGE_JAVANESE 111)
(defconstant wxLANGUAGE_KANNADA 112)
(defconstant wxLANGUAGE_KASHMIRI 113)
(defconstant wxLANGUAGE_KASHMIRI_INDIA 114)
(defconstant wxLANGUAGE_KAZAKH 115)
(defconstant wxLANGUAGE_KERNEWEK 116)
(defconstant wxLANGUAGE_KINYARWANDA 117)
(defconstant wxLANGUAGE_KIRGHIZ 118)
(defconstant wxLANGUAGE_KIRUNDI 119)
(defconstant wxLANGUAGE_KONKANI 120)
(defconstant wxLANGUAGE_KOREAN 121)
(defconstant wxLANGUAGE_KURDISH 122)
(defconstant wxLANGUAGE_LAOTHIAN 123)
(defconstant wxLANGUAGE_LATIN 124)
(defconstant wxLANGUAGE_LATVIAN 125)
(defconstant wxLANGUAGE_LINGALA 126)
(defconstant wxLANGUAGE_LITHUANIAN 127)
(defconstant wxLANGUAGE_MACEDONIAN 128)
(defconstant wxLANGUAGE_MALAGASY 129)
(defconstant wxLANGUAGE_MALAY 130)
(defconstant wxLANGUAGE_MALAYALAM 131)
(defconstant wxLANGUAGE_MALAY_BRUNEI_DARUSSALAM 132)
(defconstant wxLANGUAGE_MALAY_MALAYSIA 133)
(defconstant wxLANGUAGE_MALTESE 134)
(defconstant wxLANGUAGE_MANIPURI 135)
(defconstant wxLANGUAGE_MAORI 136)
(defconstant wxLANGUAGE_MARATHI 137)
(defconstant wxLANGUAGE_MOLDAVIAN 138)
(defconstant wxLANGUAGE_MONGOLIAN 139)
(defconstant wxLANGUAGE_NAURU 140)
(defconstant wxLANGUAGE_NEPALI 141)
(defconstant wxLANGUAGE_NEPALI_INDIA 142)
(defconstant wxLANGUAGE_NORWEGIAN_BOKMAL 143)
(defconstant wxLANGUAGE_NORWEGIAN_NYNORSK 144)
(defconstant wxLANGUAGE_OCCITAN 145)
(defconstant wxLANGUAGE_ORIYA 146)
(defconstant wxLANGUAGE_OROMO 147)
(defconstant wxLANGUAGE_PASHTO 148)
(defconstant wxLANGUAGE_POLISH 149)
(defconstant wxLANGUAGE_PORTUGUESE 150)
(defconstant wxLANGUAGE_PORTUGUESE_BRAZILIAN 151)
(defconstant wxLANGUAGE_PUNJABI 152)
(defconstant wxLANGUAGE_QUECHUA 153)
(defconstant wxLANGUAGE_RHAETO_ROMANCE 154)
(defconstant wxLANGUAGE_ROMANIAN 155)
(defconstant wxLANGUAGE_RUSSIAN 156)
(defconstant wxLANGUAGE_RUSSIAN_UKRAINE 157)
(defconstant wxLANGUAGE_SAMOAN 158)
(defconstant wxLANGUAGE_SANGHO 159)
(defconstant wxLANGUAGE_SANSKRIT 160)
(defconstant wxLANGUAGE_SCOTS_GAELIC 161)
(defconstant wxLANGUAGE_SERBIAN 162)
(defconstant wxLANGUAGE_SERBIAN_CYRILLIC 163)
(defconstant wxLANGUAGE_SERBIAN_LATIN 164)
(defconstant wxLANGUAGE_SERBO_CROATIAN 165)
(defconstant wxLANGUAGE_SESOTHO 166)
(defconstant wxLANGUAGE_SETSWANA 167)
(defconstant wxLANGUAGE_SHONA 168)
(defconstant wxLANGUAGE_SINDHI 169)
(defconstant wxLANGUAGE_SINHALESE 170)
(defconstant wxLANGUAGE_SISWATI 171)
(defconstant wxLANGUAGE_SLOVAK 172)
(defconstant wxLANGUAGE_SLOVENIAN 173)
(defconstant wxLANGUAGE_SOMALI 174)
(defconstant wxLANGUAGE_SPANISH 175)
(defconstant wxLANGUAGE_SPANISH_ARGENTINA 176)
(defconstant wxLANGUAGE_SPANISH_BOLIVIA 177)
(defconstant wxLANGUAGE_SPANISH_CHILE 178)
(defconstant wxLANGUAGE_SPANISH_COLOMBIA 179)
(defconstant wxLANGUAGE_SPANISH_COSTA_RICA 180)
(defconstant wxLANGUAGE_SPANISH_DOMINICAN_REPUBLIC 181)
(defconstant wxLANGUAGE_SPANISH_ECUADOR 182)
(defconstant wxLANGUAGE_SPANISH_EL_SALVADOR 183)
(defconstant wxLANGUAGE_SPANISH_GUATEMALA 184)
(defconstant wxLANGUAGE_SPANISH_HONDURAS 185)
(defconstant wxLANGUAGE_SPANISH_MEXICAN 186)
(defconstant wxLANGUAGE_SPANISH_MODERN 187)
(defconstant wxLANGUAGE_SPANISH_NICARAGUA 188)
(defconstant wxLANGUAGE_SPANISH_PANAMA 189)
(defconstant wxLANGUAGE_SPANISH_PARAGUAY 190)
(defconstant wxLANGUAGE_SPANISH_PERU 191)
(defconstant wxLANGUAGE_SPANISH_PUERTO_RICO 192)
(defconstant wxLANGUAGE_SPANISH_URUGUAY 193)
(defconstant wxLANGUAGE_SPANISH_US 194)
(defconstant wxLANGUAGE_SPANISH_VENEZUELA 195)
(defconstant wxLANGUAGE_SUNDANESE 196)
(defconstant wxLANGUAGE_SWAHILI 197)
(defconstant wxLANGUAGE_SWEDISH 198)
(defconstant wxLANGUAGE_SWEDISH_FINLAND 199)
(defconstant wxLANGUAGE_TAGALOG 200)
(defconstant wxLANGUAGE_TAJIK 201)
(defconstant wxLANGUAGE_TAMIL 202)
(defconstant wxLANGUAGE_TATAR 203)
(defconstant wxLANGUAGE_TELUGU 204)
(defconstant wxLANGUAGE_THAI 205)
(defconstant wxLANGUAGE_TIBETAN 206)
(defconstant wxLANGUAGE_TIGRINYA 207)
(defconstant wxLANGUAGE_TONGA 208)
(defconstant wxLANGUAGE_TSONGA 209)
(defconstant wxLANGUAGE_TURKISH 210)
(defconstant wxLANGUAGE_TURKMEN 211)
(defconstant wxLANGUAGE_TWI 212)
(defconstant wxLANGUAGE_UIGHUR 213)
(defconstant wxLANGUAGE_UKRAINIAN 214)
(defconstant wxLANGUAGE_URDU 215)
(defconstant wxLANGUAGE_URDU_INDIA 216)
(defconstant wxLANGUAGE_URDU_PAKISTAN 217)
(defconstant wxLANGUAGE_UZBEK 218)
(defconstant wxLANGUAGE_UZBEK_CYRILLIC 219)
(defconstant wxLANGUAGE_UZBEK_LATIN 220)
(defconstant wxLANGUAGE_VIETNAMESE 221)
(defconstant wxLANGUAGE_VOLAPUK 222)
(defconstant wxLANGUAGE_WELSH 223)
(defconstant wxLANGUAGE_WOLOF 224)
(defconstant wxLANGUAGE_XHOSA 225)
(defconstant wxLANGUAGE_YIDDISH 226)
(defconstant wxLANGUAGE_YORUBA 227)
(defconstant wxLANGUAGE_ZHUANG 228)
(defconstant wxLANGUAGE_ZULU 229)
(defconstant wxLANGUAGE_USER_DEFINE 230)

(ffi:def-call-out wxLocale_Create
    (:name "wxLocale_Create")
  (:arguments (_lang ffi:int)
	      (_flags ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxLocale_Delete
    (:name "wxLocale_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxLocale_IsOk
    (:name "wxLocale_IsOk")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxLocale_GetLocale
    (:name "wxLocale_GetLocale")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxLocale_AddCatalogLookupPathPrefix
    (:name "wxLocale_AddCatalogLookupPathPrefix")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (prefix (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxLocale_AddCatalog
    (:name "wxLocale_AddCatalog")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (szDomain (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxLocale_IsLoaded
    (:name "wxLocale_IsLoaded")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (szDomain (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxLocale_GetString
    (:name "wxLocale_GetString")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (szOrigString (ffi:c-pointer NIL))
	      (szDomain (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxLocale_GetName
    (:name "wxLocale_GetName")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_ref (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxGetELJLocale
    (:name "wxGetELJLocale")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxGetELJTranslation
    (:name "wxGetELJTranslation")
  (:arguments (sz (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

Config = {}

Config.NotifySystem = "ox_lib" -- "ax" is my own one so dont use that one, "ox_lib", "okok"
Config.Locale = "en" -- "cs" or "en"

Config.Texts_cs = {
    error_no_permission = "Nemáš oprávnění použít tento příkaz.",
    error_no_code = "Zadej číslo kódu.",
    error_unknown_code = "Tento kód není v databázi.",
    ten_code_prefix = "10-",
    code_prefix = "Code-"
}

Config.Texts_en = {
    error_no_permission = "You do not have permission to use this command.",
    error_no_code = "Please enter a code number.",
    error_unknown_code = "This code is not in the database.",
    ten_code_prefix = "10-",
    code_prefix = "Code-"
}

Config.TenCodes_cs = {
    ["10-1"] = "Změnte frekvenci.",
    ["10-3"] = "Ticho na vysílačce.",
    ["10-4"] = "Ok, rozumím",
    ["10-5"] = "Přestávka",
    ["10-6"] = "Zaneprázdněný, mimo službu.",
    ["10-7"] = "Mimo službu.",
    ["10-8"] = "Ve službě.",
    ["10-9"] = "Opakujte hlášení",
    ["10-10"] = "Napadení",
    ["10-11"] = "Traffic stop",
    ["10-12"] = "Samostatná jízda",
    ["10-13"] = "Střelba",
    ["10-14"] = "Prodej drog",
    ["10-15"] = "Převážení vězně směr Policejní stanice",
    ["10-16"] = "Krádež vozidla",
    ["10-17"] = "Podezřelá osoba",
    ["10-20"] = "Lokace",
    ["10-22"] = "Ignorujte příkaz",
    ["10-23"] = "Dorazil na místo, ke scéně",
    ["10-27"] = "Kontrola řidičského průkazu",
    ["10-28"] = "Kontrola registrační značky.",
    ["10-29"] = "Zkontrolujte, zda je osoba hledaná",
    ["10-30"] = "Hledaná osoba.",
    ["10-32"] = "Je potřeba asistence.",
    ["10-41"] = "Zahájení patroly",
    ["10-42"] = "Ukončení patroly",
    ["10-43"] = "Podejte informace",
    ["10-44"] = "Osoba zemřela",
    ["10-50"] = "Dopravní nehoda",
    ["10-52"] = "Potřebuji záchranku",
    ["10-60"] = "Ozbrojen střelnou zbraní",
    ["10-62"] = "Únos.",
    ["10-66"] = "Bezohledný řidič.",
    ["10-68"] = "Ozbrojená loupež.",
    ["10-70"] = "Pěší nahánění – Suspect uniká.",
    ["10-71"] = "Dozor na scénu.",
    ["10-80"] = "Ujíždění hlídce.",
    ["10-90"] = "Napomenutí policisty/záchranáře.",
    ["10-95"] = "Podezřelý zadržen.",
    ["10-97"] = "Na cestě ___.",
    ["10-98"] = "Pokračuji v hlídce.",
    ["10-99"] = "Officer v nouzi - Panic."
}

Config.TenCodes_en = {
    ["10-1"] = "Change frequency.",
    ["10-3"] = "Silence on radio.",
    ["10-4"] = "Ok, understood",
    ["10-5"] = "Break",
    ["10-6"] = "Busy, off duty.",
    ["10-7"] = "Off duty.",
    ["10-8"] = "On duty.",
    ["10-9"] = "Repeat message",
    ["10-10"] = "Assault",
    ["10-11"] = "Traffic stop",
    ["10-12"] = "Solo patrol",
    ["10-13"] = "Shooting",
    ["10-14"] = "Drug deal",
    ["10-15"] = "Transporting prisoner to Police station",
    ["10-16"] = "Vehicle theft",
    ["10-17"] = "Suspicious person",
    ["10-20"] = "Location",
    ["10-22"] = "Ignore order",
    ["10-23"] = "Arrived at scene",
    ["10-27"] = "Driver license check",
    ["10-28"] = "Registration plate check",
    ["10-29"] = "Check if person is wanted",
    ["10-30"] = "Wanted person",
    ["10-32"] = "Assistance needed",
    ["10-41"] = "Starting patrol",
    ["10-42"] = "Ending patrol",
    ["10-43"] = "Provide information",
    ["10-44"] = "Person deceased",
    ["10-50"] = "Traffic accident",
    ["10-52"] = "Need ambulance",
    ["10-60"] = "Armed with firearm",
    ["10-62"] = "Kidnapping",
    ["10-66"] = "Reckless driver",
    ["10-68"] = "Armed robbery",
    ["10-70"] = "Foot pursuit – suspect fleeing",
    ["10-71"] = "Scene supervision",
    ["10-80"] = "Evading police",
    ["10-90"] = "Warning to officer/medic",
    ["10-95"] = "Suspect detained",
    ["10-97"] = "En route to ___.",
    ["10-98"] = "Continuing patrol",
    ["10-99"] = "Officer in distress - Panic."
}

Config.CodeList_cs = {
    ["0"] = "Omdlení / Hráč padl (Game Crash / AFK)",
    ["1"] = "Bez majáků a sirén (Tichý příjezd)",
    ["2"] = "Jen majáky – bez sirény, troubení na křižovatkách",
    ["3"] = "Majáky + siréna – nejvyšší priorita",
    ["4"] = "Situace pod kontrolou / Vyřešeno",
    ["5"] = "Utajené sledování / Tajná operace",
    ["6"] = "Oblastní pátrání / Kontrola okolí",
    ["7"] = "Přestávka na jídlo",
    ["8"] = "Převoz / Zajištění osob",
    ["9"] = "Krizová situace / Aktivní střelec / Bankovní přepadení",
    ["10"] = "Všichni dostupní na místo (Full Response)"
}

Config.CodeList_en = {
    ["0"] = "Fainting / Player down (Game Crash / AFK)",
    ["1"] = "No sirens or lights (Silent arrival)",
    ["2"] = "Lights only – no siren, no honking at intersections",
    ["3"] = "Lights + siren – highest priority",
    ["4"] = "Situation under control / Resolved",
    ["5"] = "Covert surveillance / Undercover operation",
    ["6"] = "Area search / Area check",
    ["7"] = "Meal break",
    ["8"] = "Transport / Secure persons",
    ["9"] = "Critical situation / Active shooter / Bank robbery",
    ["10"] = "All units respond (Full Response)"
}

function Config.GetText(key)
    if Config.Locale == "cs" then
        return Config.Texts_cs[key] or "UNKNOWN TEXT"
    else
        return Config.Texts_en[key] or "UNKNOWN TEXT"
    end
end

function Config.GetTenCode(code)
    if Config.Locale == "cs" then
        return Config.TenCodes_cs[code]
    else
        return Config.TenCodes_en[code]
    end
end

function Config.GetCodeList(code)
    if Config.Locale == "cs" then
        return Config.CodeList_cs[code]
    else
        return Config.CodeList_en[code]
    end
end
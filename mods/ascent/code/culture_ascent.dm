GLOBAL_LIST_INIT(gyne_names, list())

/singleton/cultural_info/culture/ascent/proc/get_gyne_name()
	return LAZYLEN(GLOB.gyne_names) ? pick(GLOB.gyne_names) : create_gyne_name()

/singleton/cultural_info/culture/ascent/proc/create_gyne_name()
	var/gynename = "[capitalize(pick(GLOB.gyne_architecture))] [capitalize(pick(GLOB.gyne_geoforms))]"
	GLOB.gyne_names += gynename
	return gynename

/singleton/cultural_info/culture/ascent/proc/create_queen_name()
	return capitalize(pick(GLOB.queen_names))

/singleton/cultural_info/culture/ascent/proc/create_worker_name()
	return capitalize(pick(GLOB.worker_names))
//Thanks to:
// - https://en.wikipedia.org/wiki/List_of_landforms
// - https://en.wikipedia.org/wiki/Outline_of_classical_architecture

GLOBAL_LIST_INIT(gyne_geoforms, list(
	"abime",         "abyss",         "ait",         "anabranch",    "arc",           "arch",          "archipelago",  "arete",
	"arroyo",        "atoll",         "ayre",        "badlands",     "bar",           "barchan",       "barrier",      "basin",
	"bay",           "bayou",         "beach",       "bight",        "blowhole",      "blowout",       "bluff",        "bornhardt",
	"braid",         "nest",          "calanque",    "caldera",      "canyon"	,     "cape",          "cave",         "cenote",
	"channel",       "cirque",        "cliff",       "coast",        "col",           "colony",        "cone",         "confluence",
	"corrie",        "cove",          "crater",      "crevasse",     "cryovolcano",   "cuesta",        "cusps",        "yardang",
	"dale",          "dam",           "defile",      "dell",         "delta",         "diatreme",      "dike",         "divide",
	"doab",          "doline",        "dome",        "draw",         "dreikanter",    "drumlin",       "dune",         "ejecta",
	"erg",           "escarpment",    "esker",       "estuary",      "fan",           "fault",         "field",        "firth",
	"fissure",       "fjard",         "fjord",       "flat",         "flatiron",      "floodplain",    "foibe",        "foreland",
	"geyser",        "glacier",       "glen",        "gorge",        "graben",        "gulf",          "gully",        "guyot",
	"headland",      "hill",          "hogback",     "hoodoo",       "horn",          "horst",         "inlet",        "interfluve",
	"island",        "islet",         "isthmus",     "kame",         "karst",         "karst",         "kettle",       "kipuka",
	"knoll",         "lagoon",        "lake",        "lavaka",       "levee",         "loess",         "maar",         "machair",
	"malpas",        "mamelon",       "marsh",       "meander",      "mesa",          "mogote",        "monadnock",    "moraine",
	"moulin",        "nunatak",       "oasis",       "outwash",      "pediment",      "pediplain",     "peneplain",    "peninsula",
	"pingo",         "pit"	,         "plain",       "plateau",      "plug",          "polje",         "pond",         "potrero",
	"pseudocrater",  "quarry",        "rapid",       "ravine",       "reef",          "ria",           "ridge",        "riffle",
	"river",         "sandhill",      "sandur",      "scarp",        "scowle",        "scree",         "seamount",     "shelf",
	"shelter",       "shield",        "shoal",       "shore",        "sinkhole",      "sound",         "spine",        "spit",
	"spring",        "spur",          "strait",      "strandflat",   "strath",        "stratovolcano", "stream",       "subglacier",
	"summit",        "supervolcano",  "surge",       "swamp",        "table",         "tepui",         "terrace",      "terracette",
	"thalweg",       "tidepool",      "tombolo",     "tor",          "towhead",       "tube",          "tunnel",       "turlough",
	"tuya",          "uvala",         "vale",        "valley",       "vent",          "ventifact",     "volcano",      "wadi",
	"waterfall",     "watershed"
))

GLOBAL_LIST_INIT(gyne_architecture, list(
	"barrel",        "annular",       "aynali",      "baroque",      "catalan",       "cavetto",       "catenary",     "cloister",
	"corbel",        "cross",         "cycloidal",   "cylindrical",  "diamond",       "domical",       "fan",          "lierne",
	"muqarnas",      "net",           "nubian",      "ogee",         "ogival",        "parabolic",     "hyperbolic",   "volute",
	"quadripartite", "rampant",       "rear",        "rib",          "sail",          "sexpartite",    "shell",        "stalactite",
	"stellar",       "stilted",       "surbased",    "surmounted",   "timbrel",       "tierceron",     "tripartite",   "tunnel",
	"grid",          "acroterion ",   "aedicule",    "apollarium",   "aegis",         "apse",          "arch",         "architrave",
	"archivolt",     "amphiprostyle", "atlas",       "bracket",      "capital",       "caryatid",      "cella",        "colonnade",
	"column",        "cornice",       "crepidoma",   "crocket",      "cupola",        "decastyle",     "dome",         "eisodos",
	"entablature",   "epistyle ",     "euthynteria", "exedra",       "finial",        "frieze",        "gutta",        "imbrex",
	"tegula",        "keystone",      "metope",      "naos",         "nave",          "opisthodomos",  "orthostates",  "pediment",
	"peristyle",     "pilaster",      "plinth",      "portico",      "pronaos",       "prostyle",      "quoin",        "stoa",
	"suspensura",    "term ",         "tracery",     "triglyph",     "sima",          "stylobate",     "unitary",      "sovereign",
	"grand",         "supreme",       "rampant",     "isolated",     "standalone",    "seminal",       "pedagogical",  "locus",
	"figurative",    "abstract",      "aesthetic",   "grandiose",    "kantian",       "pure",          "conserved",    "brutalist",
	"extemporary",   "theological",   "theoretical", "centurion",    "militant",      "eusocial",      "prominent",    "empirical",
	"key",           "civic",         "analytic",    "formal",       "atonal",        "tonal",         "synchronized", "asynchronous",
	"harmonic",      "discordant",    "upraised",    "sunken",       "life",          "order",         "chaos",        "systemic",
	"system",        "machine",       "mechanical",  "digital",      "electrical",    "electronic",    "somatic",      "cognitive",
	"mobile",        "immobile",      "motile",      "immotile",     "environmental", "contextual",    "stratified",   "integrated",
	"ethical",       "micro",         "macro",       "genetic",      "intrinsic",     "extrinsic",     "academic",     "literary",
	"artisan",       "absolute",      "absolutist",  "autonomous",   "collectivist",  "bicameral",     "colonialist",  "federal",
	"imperial",      "independant",   "managed",     "multilateral", "neutral",       "nonaligned",    "parastatal"
))

GLOBAL_LIST_INIT(queen_names, list(
	"ascension", 		"conquest", 	"majesty", 			"triumph",  		"glory",  		"highness", 		"victory", 		"sovereignty",
	"regality", 		"supremacy",	"transcendence", 	"vengeance", 		"might", 		"purity", 			"prosperity",	"maximaility",
	"benevolence", 		"generosity",	"magnanimity", 		"gracefulness", 	"eternity", 	"expansiveness",	"absoluteness",	"absolution",
	"abundance",		"extravagance", "profusion",		"philanthropy",		"hospitality",	"largesse",			"benefaction",	"affluence",
	"opulence",			"omnipresence",	"existence",		"substance",		"luxuriance",	"plenitude",		"fervor",		"transitivity",
	"vigor",			"vibrancy",		"transiency",		"elation",			"energy",		"collaboration"
))

GLOBAL_LIST_INIT(worker_names, list(
	"climber",		"leaper",		"leaf",		"tree",		"hider",	 "striker",		"breaker",		"river",	"waterfall",	"breaker",		"stone",
	"dark",			"bright",		"hunter",	"killer",	"grass",	 "flame",		"fire",			"fighter",	"thinker",		"flier",		"rock",
	"speaker",		"lake",			"devourer",	"mountain",	"soarer",	 "sleeper",		"bush",			"strong",	"clever",		"wasteful",		"cavern",
	"ocean",		"swimmer",		"fixer"
))

/singleton/cultural_info/culture/ascent
	name =             CULTURE_ASCENT
	language =         LANGUAGE_MANTID_NONVOCAL
	default_language = LANGUAGE_MANTID_VOCAL
	additional_langs = list(LANGUAGE_MANTID_BROADCAST, LANGUAGE_MANTID_VOCAL, LANGUAGE_NABBER, LANGUAGE_SKRELLIAN)
	hidden = TRUE
	description = "Восхождение -  это древняя, изоляционистская  звёздная империя, состоящая из цефалоподобых \
	богомолообразных Кхармаани, Серпентидов-Монархов, и множества их синтетических слуг. Повседневная жизнь в \
	Восхождении - это по большей части вопрос навигации в запутанном лабиринте социальных обязательств, игр Гиин \
	со властью, фракционных десятин, рэкета за защиту, налогов на промышленность и старых добрых ударов друг-другу \
	в спину. Обе расы-участники этой звёздной державы до определенной степени эусоциальны, и их общество \
	основывается на бесчисленных массах рабочих, солдат, техников и \"низших\" граждан, поддерживающих множество \
	непреклонных и всемогущих королев."

/singleton/cultural_info/culture/ascent/get_random_name(gender)
	if(gender == MALE)
		return "[random_id(/datum/species/mantid, 10000, 99999)] [get_gyne_name()]"
	else
		return "[random_id(/datum/species/mantid, 1, 99)] [get_gyne_name()]"

/singleton/cultural_info/faction/ascent_serpentid
	name =        FACTION_ASCENT_SERPENTID
	nickname =    "Серпентид-монарх"
	language =    LANGUAGE_MANTID_NONVOCAL
	description = "Представители Восхождения, как правило, организованы по родословной материнской гиины их \
	соответствующих видов. Для Кхармаани это ориентировано на индивидуальных гиин и их властные структуры. У \
	Серпентидов-монархов же есть немного менее манипулятивный подход, а также более многочисленные и менее \
	самозабвенные королевы. Они имеют тенденцию группироваться в широкие социальные группы, обычно в пределах \
	определенных «мезонинов», богатых кислородом, которые им с радостью выделяет каждое гнездо-крепость. Как бы \
	они ни были мягки по сравнению со своими собратьями, политическая и социальная культура Серпентидов-монархов \
	по-прежнему фракционна и часто порочна."
	hidden = TRUE

/singleton/cultural_info/faction/ascent_alate
	name =        FACTION_ASCENT_ALATE
	nickname =    "Кхармании-алат"
	language =    LANGUAGE_MANTID_NONVOCAL
	description = "Жизнь алата трудна и часто коротка. Те, кто дожил до зрелости, живут насильственной и \
	бескомпромиссной культурой Восхождения, пользуясь своими передними конечностями с лезвиями. Среди Кхармании \
	нет формального школьного образования, поскольку алаты настолько многочисленны и недолговечны, что это пустая \
	трата ресурсов. Тем не менее, по мере взросления, умный и способный специалист получит образование по \
	практическим и теоретическим дисциплинам, таким как пилотирование, машиностроение, сельское хозяйство или \
	любое другое количество областей. Особенно удачливый (или нелетально кастрированный) алат может стремиться к \
	положению в свите своей гиины, где он получит направленную подготовку специалиста и важную роль под тщательным \
	наблюдением контролирующего разума гиины."
	hidden = TRUE

/singleton/cultural_info/faction/ascent_gyne
	name =        FACTION_ASCENT_GYNE
	nickname =    "Кхармании-гиина"
	language =    LANGUAGE_MANTID_NONVOCAL
	description = "К тому времени, когда гиина пережила свое «детство» и избавилась от экзоскелета алата во \
	время безумного размножения, она получилает образование мастер-класс по убийствам и поеданию своих соперников \
	при первой возможности, а также побочные эффекты в техническом или практическом плане. Быстрый рост ее тела и \
	мозга и обязанности ее положения требуют от каждой гиины дополнения к этому интенсивное обучение в области \
	управления, логистики, военного командования, социологии, политики и любых других областей, связанных с \
	управлением гнездом-крепостью из десятков тысяч отдельных граждан."
	hidden = TRUE

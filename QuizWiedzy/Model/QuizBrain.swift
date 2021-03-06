

import Foundation

struct QuizBrain {
    
    var questionAsked = 0
    var questionNumber = Int.random(in: 0...530)
    var score = 0
    var mistakes = 0
    
    
    let quiz = [
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Alabama?", a: ["Montgomery", "Birmingham", "Hoover"], correctAnswer: "Montgomery"),
        Question(q: "Jak nazywa się największe kanadyjskie miasto?", a: ["Montreal", "Ottawa", "Toronto"], correctAnswer: "Toronto"),
        Question(q: "Jaki jest największy organ ludzkiego ciała?", a: ["Serce", "Płuca", "Skóra"], correctAnswer: "Skóra"),
        Question(q: "W którym europejskim kraju spożyjemy zupę nazywaną 'Kiuria'?", a: ["W Estonii", "W Rosji", "Na Ukrainie"], correctAnswer: "W Rosji"),
        Question(q: "Co w języku angielskim oznacza skrót GMT?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "Jak w języku francuskim nazywana jest 'czapka'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "W którym roku miała miejsce lokacja Krakowa?", a: ["1257", "1313", "1405"], correctAnswer: "1257"),
        Question(q: "Jak powiemy 'do widzenia' po hiszpańsku?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Którego z tych kolorów nie znajdziemy w oficjalnym logo Google?", a: ["Zielonego", "Pomarańczowego", "Niebieskiego"], correctAnswer: "Pomarańczowego"),
        Question(q: "Który alkohol robiony jest z owoców jałowca?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Gin"),
        Question(q: "Na którym kontynencie w naturalnym środowisku żyją Wombaty?", a: ["W Azji", "W Afryce", "W Australii"], correctAnswer: "W Australii"),
        Question(q: "Do jakiego państwa należy wyspa Jawa?", a: ["Indonezja", "Australia", "Japonia"], correctAnswer: "Indonezja"),
        Question(q: "Gdzie znajduje się Grobowiec Tutanchamona?", a: ["W Dolinie Cesarzy", "W Dolinie Faraonów", "W Dolinie Królów"], correctAnswer: "W Dolinie Królów"),
        Question(q: "Jak nazywa się najdłuższa rzeka płynąca w granicach Czech?", a: ["Wełtawa", "Łaba", "Otava"], correctAnswer: "Wełtawa"),
        Question(q: "Jaka temperatura określana jest mianem 'zera bezwzględnego'?", a: ["225 K", "-273 C", "-377 F"], correctAnswer: "-273 C"),
        Question(q: "Który z nowojorskich okręgów jest najludniejszy?", a: ["Queens", "Manhattan", "Brooklyn"], correctAnswer: "Brooklyn"),
        Question(q: "Jak nazywa się najdłuższa rzeka płynąca w granicach Hiszpanii?", a: ["Ebro", "Tag", "Duero"], correctAnswer: "Ebro"),
        Question(q: "Jak na imię miał MacGyver?", a: ["Thomas", "Angus", "Jack"], correctAnswer: "Angus"),
        Question(q: "Który stan USA jest największy pod względem powierzchni?", a: ["Teksas", "Kalifornia", "Alaska"], correctAnswer: "Alaska"),
        Question(q: "Ile lat (w przybliżeniu) wynosi wiek Ziemi?", a: ["4,6 biliona", "7,3 biliona", "12,5 miliarda"], correctAnswer: "4,6 biliona"),
        Question(q: "Który aktor wcielił się w postać Jamesa Bonda w filmie 'Doktor No'?", a: ["Roger Moore", "Daniel Craig", "Sean Connery"], correctAnswer: "Sean Connery"),
        Question(q: "Jakiej narodowości jest kierowca formuły 1 Daniel Ricciardo?", a: ["Australijskiej", "Brytyjskiej", "Amerykańskiej"], correctAnswer: "Australijskiej"),
        Question(q: "Z którego kraju pochodzi firma 'Amica', producent sprzętu AGD?", a: ["Z Litwy", "Z Polski", "Z Czech"], correctAnswer: "Z Polski"),
        Question(q: "Kto jest autorem wierszy w których występuje postać Pana Cogito?", a: ["Czesław Miłosz", "Wisława Szymborska", "Zbigniew Herbert"], correctAnswer: "Zbigniew Herbert"),
        Question(q: "Kto jest autorem powieści 'Bracia Karamazow'?", a: ["Fiodor Dostojewski", "Aleksander Puszkin", "Mikołaj Gogol"], correctAnswer: "Fiodor Dostojewski"),
        Question(q: "Samochody której marki tuninguje firma Brabus?", a: ["Audi", "Mercedes", "BMW"], correctAnswer: "Mercedes"),
        Question(q: "Ile szczytów należy do Korony Gór Polski?", a: ["23", "28", "31"], correctAnswer: "28"),
        Question(q: "Jak nazywa się najwyższy szczyt Bieszczad Zachodnich?", a: ["Tarnica", "Ciecień", "Krzemieniec"], correctAnswer: "Tarnica"),
        Question(q: "Żoną którego austriackiego cesarza była Sisi?", a: ["Ferdynanda I", "Franciszka Józefa I", "Leopolda II",], correctAnswer: "Franciszka Józefa I"),
        Question(q: "Kto jako pierwszy zdobył Biegun Południowy?", a: ["Roald Amundsen", "Frederick Cook", "Ranulph Fiennes"], correctAnswer: "Roald Amundsen"),
        Question(q: "W którym kraju Order Złotego Runa jest najwyższym państwowym odznaczeniem?", a: ["We Francji", "W Hiszpanii", "W Urugwaju"], correctAnswer: "W Hiszpanii"),
        Question(q: "Kto grał postać Pana Fasoli w znanym brytyjskim serialu komediowym?", a: ["Rowan Atkinson", "Stephen Fry", "Pierce Morgan"], correctAnswer: "Rowan Atkinson"),
        Question(q: "Który aktor wcielił się w postać pułkownika Franka Slade'a w filmie 'Zapach kobiety'?", a: ["Robert de Niro", "Al Pacino", "Robert Downey Junior"], correctAnswer: "Al Pacino"),
        Question(q: "Jak nazywa się najwyższe odznaczenie państwowe Federacyjnej Republiki Brazylii?", a: ["Krzyż Orderu Chrystusa", "Krzyż Wielki Orderu Korony", "Order Krzyża Południa"], correctAnswer: "Order Krzyża Południa"),
        Question(q: "W którym kraju przyznawany jest 'Order Słonia'?", a: ["Indiach", "Grecji", "Danii"], correctAnswer: "Danii"),
        Question(q: "Z ilu znaków składa się alfabet hebrajski?", a: ["19", "22", "27"], correctAnswer: "22"),
        Question(q: "W którym roku został założony 'Zespół Reprezentacyjny'?", a: ["1977", "1980", "1983"], correctAnswer: "1983"),
        Question(q: "Z której płyty zespołu Kult pochodzi utwór 'Baranek'?", a: ["'Tata Kazika'", "'12 Groszy'", "'Tata 2'"], correctAnswer: "'Tata Kazika'"),
        Question(q: "W którym roku pojawiła się na rynku pierwsza generacja Iphone'a?", a: ["2005", "2007", "2009"], correctAnswer: "2007"),
        Question(q: "W zatoce jakiego amerykańskiego miasta znajduje się więzienie Alcatraz?", a: ["San Francisco", "New Jersey", "Miami"], correctAnswer: "San Francisco"),
        Question(q: "Jak nazywa się rdzennych mieszkańców terenów arktycznych i subarktycznych?", a: ["Eunuchowie", "Jorubowie", "Inuici"], correctAnswer: "Inuici"),
        Question(q: "Na którym kontynencie żyją Janomamowie?", a: ["Azja", "Ameryka Południowa", "Afryka"], correctAnswer: "Ameryka Południowa"),
        Question(q: "Przez który kraj przebiega równocześnie równik i zwrotnik Koziorożca?", a: ["Australię", "Kongo", "Brazylię"], correctAnswer: "Brazylię"),
        Question(q: "Na ile prowincji podzielona jest Chińska Republika Ludowa?", a: ["17", "22", "28"], correctAnswer: "22"),
        Question(q: "W którym roku Wielka Brytania zwróciła Chinom zwierzchnictwo nad Hongkongiem?", a: ["1977", "1987", "1997"], correctAnswer: "1997"),
        Question(q: "Prezydentem którego kraju był Georges Pompidou?", a: ["Rumunii", "Francji", "Grecji"], correctAnswer: "Francji"),
        Question(q: "Kogo zastąpił Nicolae Ceausescu na stanowisku Sekretarza Generalnego Rumuńskiej Partii Robotniczej?", a: ["Gheorghea Gheorghiu-Deja", "Chivu Stoicę", "Iona Maurera"], correctAnswer: "Gheorghea Gheorghiu-Deja"),
        Question(q: "Jaką długość ma kanał Dunaj-Morze Czarne?", a: ["Około 62km", "Około 75km", "Około 88km"], correctAnswer: "Około 62km"),
        Question(q: "W którym kraju znajduje się źródło Dunaju?", a: ["W Niemczech", "W Szwajcarii", "W Austrii"], correctAnswer: "W Niemczech"),
        Question(q: "Tradycyjnym wyrobem mleczarskim którego kraju jest 'skyr'?", a: ["Norwegii", "Danii", "Islandii"], correctAnswer: "Islandii"),
        Question(q: "Kim był Hugo Kapet?", a: ["Niderlandzkim poetą", "Królem Franków", "Rzymskim Senatorem"], correctAnswer: "Królem Franków"),
        Question(q: "Jaki jest wzór sumaryczny mocznika?", a: ["CH₄N₂O", "C₃H₈O₃", "C₆H₅CH₃"], correctAnswer: "CH₄N₂O"),
        Question(q: "Które węglowodory alifatyczne posiadają co najmniej jedno wiązanie potrójne?", a: ["Alkiny", "Alkany", "Alkeny"], correctAnswer: "Alkiny"),
        Question(q: "Na ile kantonów podzielone jest terytorium Szwajcarii?", a: ["17", "22", "26"], correctAnswer: "26"),
        Question(q: "Jaka była przyczyna śmierci kierowcy rajdowego Colina McRae?", a: ["Wypadek podczas rajdu", "Katastrofa śmigłowca", "Zawał serca"], correctAnswer: "Katastrofa śmigłowca"),
        Question(q: "Kto jest autorem powieści 'Ulisses'?", a: ["Thomas Mann", "Samuel Beckett", "James Joyce"], correctAnswer: "James Joyce"),
        Question(q: "W którym polskim mieście urodził się Jan Matejko?", a: ["W Sandomierzu", "W Jędrzejowie", "W Krakowie"], correctAnswer: "W Krakowie"),
        Question(q: "Kto stworzył pierwszy kwantowy model atomu?", a: ["Niels Bohr", "Max Planck", "Werner Heisenberg"], correctAnswer: "Niels Bohr"),
        Question(q: "Co w układzie SI jest jednostką częstotliwości?", a: ["Kandela", "Herc", "Farad"], correctAnswer: "Herc"),
        Question(q: "Jaką długość (w przybliżeniu) ma 1 furlong?", a: ["148m", "173m", "201m"], correctAnswer: "201m"),
        Question(q: "Ile gram (w przybliżeniu) to 1 funt?", a: ["453", "528", "619"], correctAnswer: "453"),
        Question(q: "Z ilu pint składa się jedna kwarta?", a: ["12", "8", "2" ], correctAnswer: "2"),
        Question(q: "W którym włoskim mieście pochowany jest Galileusz?", a: ["W Rzymie", "We Florencji", "W Weronie"], correctAnswer: "We Florencji"),
        Question(q: "Czym jest 'pagoda'?", a: ["Buddyjską świątynią", "Gruzińską potrawą", "Rodzajem kapelusza"], correctAnswer: "Buddyjską świątynią"),
        Question(q: "W którym polskim mieście znajduje się ochel cadyka Elimelecha?", a: ["W Rymanowie", "W Leżajsku", "W Lublinie"], correctAnswer: "W Leżajsku"),
        Question(q: "Jak miała na imię żona cesarza bizantyńskiego Justyniana I?", a: ["Łucja", "Eufemia", "Teodora"], correctAnswer: "Teodora"),
        Question(q: "Które miasto jest stolicą włoskiego regionu Umbria?", a: ["Perugia", "Genoa", "Bari"], correctAnswer: "Perugia"),
        Question(q: "Który z włoskich regionów jest najmniejszy pod względem powierzchni?", a: ["Piemont", "Dolina Aosty", "Abruzja"], correctAnswer: "Dolina Aosty"),
        Question(q: "Jaka nazywa się największa wyspa Morza Śródziemnego?", a: ["Korsyka", "Sardynia", "Sycylia"], correctAnswer: "Sycylia"),
        Question(q: "Kto jest autorem powieści 'Hrabia Monte Christo'?", a: ["Aleksander Dumas", "Mark Twain", "Charles Dickens"], correctAnswer: "Aleksander Dumas"),
        Question(q: "Kto jest autorem opowiadania 'Opowieść wigilijna'?", a: ["John Leech", "Charles Dickens", "Adam Terrence"], correctAnswer: "Charles Dickens"),
        Question(q: "Z której londyńskiej stacji kolejowej odjeżdża pociąg do Hogwartu?", a: ["Fenchurch Street", "Kensington", "Kings Cross"], correctAnswer: "Kings Cross"),
        Question(q: "Czym jest laktoza?", a: ["Cukrem prostym", "Dwucukrem", "Białkiem"], correctAnswer: "Dwucukrem"),
        Question(q: "Ile kart potrzeba do gry w skata?", a: ["24", "32", "40"], correctAnswer: "32"),
        Question(q: "Jak nazywa się panujacy od 2019 roku cesarz Japonii?", a: ["Naruhito", "Akahito", "Hirohito"], correctAnswer: "Naruhito"),
        Question(q: "Kto zaprojektował strój krakowskiego Lajkonika?", a: ["Walery Eliasz Radzikowski", "Ambroży Grabowski", "Stanisław Wyspiański"], correctAnswer: "Stanisław Wyspiański"),
        Question(q: "Jak nazywa się willa Karola Szymanowskiego w Zakopanem?", a: ["Etiuda", "Atma", "Vera"], correctAnswer: "Atma"),
        Question(q: "Czyje imię nosi warszawska Akademia Teartalna?", a: ["Aleksandra Zelwerowicza", "Stafana Jaracza", "Michała Wołowskiego"], correctAnswer: "Aleksandra Zelwerowicza"),
        Question(q: "Który ser jest składnikiem sałatki 'Caprese'?", a: ["Camembert", "Mozarella", "Feta"], correctAnswer: "Mozarella"),
        Question(q: "W którym roku królowa Wiktoria została Cesarzową Indii?", a: ["1824", "1848", "1876"], correctAnswer: "1876"),
        Question(q: "Jakiego koloru jest kawior z łososia?", a: ["Czerwonego", "Czarnego", "Zielonego"], correctAnswer: "Czerwonego"),
        Question(q: "Jaka roślina połączyła groby Tristana i Izoldy?", a: ["Jawor", "Głóg", "Róża"], correctAnswer: "Głóg"),
        Question(q: "Kogo poślubił Adam Mickiewcz?", a: ["Barbarę Majewską", "Marylę Wereszczakównę", "Celinę Szymanowską"], correctAnswer: "Celinę Szymanowską"),
        Question(q: "Z czego wytwarzana jest substancja żelująca o nazwie agar-agar?", a: ["Z krasnorostów", "Z kości", "Z żywicy"], correctAnswer: "Z krasnorostów"),
        Question(q: "Z ilu wersów składa się sonet?", a: ["12", "14", "16"], correctAnswer: "14"),
        Question(q: "Która twierdza jako ostatnia skapitulowała podczas Powstania Listopadowego?", a: ["Twierdza Wola", "Twierdza Modlin", "Twierdza Zamość"], correctAnswer: "Twierdza Zamość"),
        Question(q: "Kto jest odkrywcą Przylądka Dobrej Nadziei?", a: ["Bartolomeu Dias", "Marco Polo", "Vasco da Gama"], correctAnswer: "Bartolomeu Dias"),
        Question(q: "Jak nazywała się waluta Włoch przed wprowadzeniem euro?", a: ["Runa", "Lir", "Drachma"], correctAnswer: "Lir"),
        Question(q: "W którym państwie znajduje się tor wyścigowy o nazwie 'Spa'?", a: ["W Japonii", "W Singapurze", "W Belgii"], correctAnswer: "W Belgii"),
        Question(q: "Jak nazywała się wieś spalona przez Andrzeja Kmicica w odwecie za śmierć kompanów?", a: ["Wołomontowicze", "Tyszowce", "Latyczowice"], correctAnswer: "Wołomontowicze"),
        Question(q: "Z jakiego kraju pochodził odkrywca Abel Tasman?", a: ["Z Portugalii", "Z Holandii", "Z Wielkiej Brytanii"], correctAnswer: "Z Holandii"),
        Question(q: "Która witamina została odkryta jako pierwsza?", a: ["A", "B", "C"], correctAnswer: "B"),
        Question(q: "Z jakiego państwa pochodził powieściopisarz Balzac?", a: ["Z Holandii", "Z Włoch", "Z Francji"], correctAnswer: "Z Francji"),
        Question(q: "Jaki zakon zwany jest inaczej Oratorianami?", a: ["Filipini", "Augustianie", "Paulini"], correctAnswer: "Filipini"),
        Question(q: "Który święty Kościoła Katolickiego jest patronem Hiszpanii oraz internetu?", a: ["Bazyli", "Izydor", "Klemens"], correctAnswer: "Izydor"),
        Question(q: "Jak miała na imię żona Hektora w 'Iliadzie' Homera?", a: ["Helena", "Aeurope", "Andromacha"], correctAnswer: "Andromacha"),
        Question(q: "Jaką literą oznaczana jest podstawa logarytmu naturalnego?", a: ["e", "n", "x"], correctAnswer: "e"),
        Question(q: "W jakim stanie skupienia występuje w normalnych warunkach kobalt?", a: ["Ciekłym", "Stałym", "Gazowym"], correctAnswer: "Stałym"),
        Question(q: "Bohaterem czyich utworów jest profesor Tarantoga?", a: ["Stanisława Witkiewicza", "Tadeusza Boya-Żeleńskiego", "Stanisława Lema"], correctAnswer: "Stanisława Lema"),
        Question(q: "Który konflikt zbrojny zakończył tzw. pokój westfalski?", a: ["Wojnę trzydziestoletnią", "Wojnę stuletnią", "Wojnę o Falklandy"], correctAnswer: "Wojnę trzydziestoletnią"),
        Question(q: "Co oznacza termin 'defenestracja'?", a: ["Otrucie kogoś", "Wyrzucenie przez okno", "Odcięcie dłoni"], correctAnswer: "Wyrzucenie przez okno"),
        Question(q: "Jaki pierwiastek jest głównym składnikiem masy Słońca?", a: ["Hel", "Krzem", "Wodór"], correctAnswer: "Wodór"),
        Question(q: "Jak nazywa się największy gwiazdozbiór możliwy do zaobserwowania na polskim niebie?", a: ["Panna", "Hydra", "Wielka Niedźwiedzica"], correctAnswer: "Hydra"),
        Question(q: "Zatrucie jaką substancją powoduje botulizm?", a: ["Jadem kiełbasianym", "Arszenikiem", "Ołowiem"], correctAnswer: "Jadem kiełbasianym"),
        Question(q: "Kto wyreżyserował film 'Rejs'?", a: ["Stanisław Bareja", "Juliusz Machulski", "Marek Piwowski"], correctAnswer: "Marek Piwowski"),
        Question(q: "Kto był założycielem GOPR?", a: ["Mariusz Zaruski", "Klimek Bachleda", "Stanisław Żeleński"], correctAnswer: "Mariusz Zaruski"),
        Question(q: "Które miasto jest stolicą hiszpańskiego regionu autonomicznego Baleary?", a: ["Zaragozza", "Palma de Mallorca", "Kadyks"], correctAnswer: "Palma de Mallorca"),
        Question(q: "Jaki jest polski odpowiednik wschodniosłowiańskiego imienia Wasyl?", a: ["Witold", "Igor", "Bazyli"], correctAnswer: "Bazyli"),
        Question(q: "Do jakiego miasta, ze Szczebrzeszyna, przenósł się chrząszcz - bohater wiersza Jana Brzechwy?", a: ["Do Pszczyny", "Do Przemyśla", "Do Pacanowa"], correctAnswer: "Do Pszczyny"),
        Question(q: "Który minerał według skali Mohsa jest wzorcowym przykładem minerału najbardziej miękkiego?", a: ["Gips", "Talk", "Topaz"], correctAnswer: "Talk"),
        Question(q: "Kto wymyślił postać Jamesa Bonda?", a: ["Arthur Conan Doyle", "Oscar Wilde", "Ian Fleming"], correctAnswer: "Ian Fleming"),
        Question(q: "Jaki jest wzór sumaryczny tzw. 'ciężkiej wody'?", a: ["D₂O", "H₂O₂", "H₂O₄"], correctAnswer: "D₂O"),
        Question(q: "Do jakiego państwa należą Wyspy Admiralicji?", a: ["Rosji", "Singapuru", "Papui-Nowej Gwinei"], correctAnswer: "Papui-Nowej Gwinei"),
        Question(q: "Jaki jest synonim słowa 'przewidywać'?", a: ["Antycypować", "Partycypować", "Emancypować"], correctAnswer: "Antycypować"),
        Question(q: "Który malarz jest autorem obrazu 'Pejzaż z upadkiem Ikara'?", a: ["Diego Velazquez", "Peter Bruegel", "Herbert James Draper"], correctAnswer: "Peter Bruegel"),
        Question(q: "Jak nazywa się trawiasty step Wielkiej Niziny Węgierskiej?", a: ["Preria", "Pampa","Puszta"], correctAnswer: "Puszta"),
        Question(q: "Jaka postać NIE występuje w pierwszym sezonie serialu 'Dom z papieru'?", a: ["Dublin", "Oslo", "Moskwa"], correctAnswer: "Dublin"),
        Question(q: "Na którym oceanie leżą Wyspy Galapagos?", a: ["Oceanie Atlantyckim", "Oceanie Indyjskim", "Oceanie Spokojnym"], correctAnswer: "Oceanie Spokojnym"),
        Question(q: "Który rów oceaniczny jest najdłuższy na świecie?", a: ["Rów Sundajski", "Rów Atakamski", "Rów Mariański"], correctAnswer: "Rów Atakamski"),
        Question(q: "Kto obok Dona Walsha jako pierwszy osiągnął dno rowu Mariańskiego?", a: ["Jacques Piccard", "Phileas Fogg", "James Cameron"], correctAnswer: "Jacques Piccard"),
        Question(q: "Jak nazywa się najgłębsza strefa występująca w oceanach?", a: ["Abisal", "Hadal", "Litoral"], correctAnswer: "Hadal"),
        Question(q: "Jaki procent powierzchni Ziemii zajmuje Ocean Spokojny?", a: ["22%", "27%", "30%"], correctAnswer: "30%"),
        Question(q: "Stolicą którego amerykańskiego stanu jest miasto Santa Fe?", a: ["Nowy Meksyk", "Arizona", "Utah"], correctAnswer: "Nowy Meksyk"),
        Question(q: "Czym zajmuje się rumpolog?", a: ["Wróżeniem z fusów", "Wróżeniem z pośladków", "Wróżeniem z języka"], correctAnswer: "Wróżeniem z pośladków"),
        Question(q: "Które państwo UE ma największe terytorium?", a: ["Niemcy", "Hiszpania", "Francja"], correctAnswer: "Francja"),
        Question(q: "W którym roku nastąpił rozpad monarchii austro-węgierskiej?", a: ["1918", "1925", "1938"], correctAnswer: "1918"),
        Question(q: "Który podróżnik odkrył w 1521 roku Filipiny?", a: ["Marco Polo", "Ferdynand Magellan", "Krzystof Kolumb"], correctAnswer: "Ferdynand Magellan"),
        Question(q: "Na terenie których europejskich krajów leży region zwany Baranja?", a: ["Serbii i Rumunii", "Macedonii i Bułgarii", "Węgier i Chorwacji"], correctAnswer: "Węgier i Chorwacji"),
        Question(q: "W którym państwie znajduje się kraj związkowy o nazwie Turyngia?", a: ["W Niemczech", "W Austrii", "W Szwajcarii"], correctAnswer: "W Niemczech"),
        Question(q: "Czyje imię nosi najsłynniejszy praski most?", a: ["Wacława", "Karola", "Przemysła"], correctAnswer: "Karola"),
        Question(q: "Czego jednostką w układzie SI jest tesla?", a: ["Ładunku elektrycznego", "Siły", "Indukcji magnetycznej"], correctAnswer: "Indukcji magnetycznej"),
        Question(q: "Jakie jest oznaczenie prądu przemiennego?", a: ["AC", "DC", "AD"], correctAnswer: "AC"),
        Question(q: "W którym województwie znajduje się Zamek Krasiczyn?", a: ["Dolnośląskim", "Podkarpackim", "Zachodniopomorskim"], correctAnswer: "Podkarpackim"),
        Question(q: "Kto zastąpił kardynała Adama Sapiehę na stanowisku biskupa diecezji krakowskiej?", a: ["Karol Wojtyła", "Albin Dunajweski", "Eugeniusz Baziak"], correctAnswer: "Eugeniusz Baziak"),
        Question(q: "Na fladze którego kraju widnieje smok?", a: ["Bhutan", "Nepal", "Pakistan"], correctAnswer: "Bhutan"),
        Question(q: "Z którego kontynentu pochodzą frezje?", a: ["Z Azji", "Z Afryki", "Z Ameryki Południowej"], correctAnswer: "Z Afryki"),
        Question(q: "Czym odżywiają się koprofagi?", a: ["Padliną", "Bylinami", "Odchodami"], correctAnswer: "Odchodami"),
        Question(q: "Jak miał na imię Bohun, bohater powieści Henryka Sienkiewicza?", a: ["Jurko", "Iwan", "Timofiej"], correctAnswer: "Jurko"),
        Question(q: "Która bitwa z czasów Powstania Chmielnickiego jest nazywana sarmackim Katyniem?", a: ["Bitwa pod Zborowem", "Bitwa pod Korsuniem", "Bitwa pod Batohem"], correctAnswer: "Bitwa pod Batohem"),
        Question(q: "Legendarny potwór Kraken był potworem...", a: ["morskim", "powietrznym", "lądowym"], correctAnswer: "morskim"),
        Question(q: "Czym jest 'nowiczok'?", a: ["Bronią palną", "Materiałem wybuchowym", "Trucizną"], correctAnswer: "Trucizną"),
        Question(q: "Jak nazywa się reżyser filmów 'Pulp Fiction' i 'Kill Bill'?", a: ["Christopher Nolan", "Quentin Tarantino", "Ron Howard"], correctAnswer: "Quentin Tarantino"),
        Question(q: "W którym zakonie dwa lata swojego życia spędził późniejszy król Polski Jan Kazimierz?", a: ["Zakonie Jezuitów", "Zakonie Dominikanów", "Zakonie Joannitów"], correctAnswer: "Zakonie Jezuitów"),
        Question(q: "W którym wieku został wzniesiony Zamek w Wiśniczu?", a: ["XIII", "XIV", "XV"], correctAnswer: "XIV"),
        Question(q: "Do którego państwa należą Wyspy Galapagos?", a: ["Do Argentyny", "Do Peru", "Do Ekwadoru"], correctAnswer: "Do Ekwadoru"),
        Question(q: "Jak nazywa się gatunek pingwina gnieżdżący najbardziej na północ?", a: ["Pingwin równikowy", "Pingwin zwrotnikowy", "Pingwin artktyczny"], correctAnswer: "Pingwin równikowy"),
        Question(q: "W którym mieście znajduje się siedziba UNESCO?", a: ["W Londynie", "W Paryżu", "W Wiedniu"], correctAnswer: "W Paryżu"),
        Question(q: "Jak nazywa się gatunek rośliny lub zwierzęcia unikatowy dla danego miejsca lub regionu?", a: ["Alochtonit", "Kenofit", "Endemit"], correctAnswer: "Endemit"),
        Question(q: "Kaukaz leży pomiędzy Morzem Czarnym oraz Morzem...", a: ["Kaspijskim", "Martwym", "Arabskim"], correctAnswer: "Kaspijskim"),
        Question(q: "W którym roku po raz pierwszy Władimir Putin został prezydentem Rosji?", a: ["1996", "1999", "2001"], correctAnswer: "1999"),
        Question(q: "W czasie kadencji którego prezydenta USA miała miejsce afera Watergate?", a: ["Geralda Forda", "Ronalda Reagana", "Richarda Nixona"], correctAnswer: "Richarda Nixona"),
        Question(q: "Jak inaczej nazywane jest Rosz ha-Szana, żydowskie święto Nowego Roku?", a: ["Święto Trąbek", "Święto Lutni", "Święto Fletów"], correctAnswer: "Święto Trąbek"),
        Question(q: "Który kraj zdobył mistrzostwo świata w piłce nożnej w roku 1998?", a: ["Niemcy", "Francja", "Brazylia"], correctAnswer: "Francja"),
        Question(q: "Który zawodnik odniósł najwięcej w historii triumfów w Turnieju Czterech Skoczni?", a: ["Adam Małysz", "Simon Amman", "Janne Ahonen"], correctAnswer: "Janne Ahonen"),
        Question(q: "Co oznacza symbol 'AWD' zapisywany przy nazwach wielu samochodów?", a: ["Napęd na 4 koła", "Luksusowe wyposażenie", "Sportowe zawieszenie"], correctAnswer: "Napęd na 4 koła"),
        Question(q: "Kiedy obchodzimy Noc Świętojańską?", a: ["Z 18 na 19 czerwca", "Z 23 na 24 czerwca", "Z 21 na 22 lipca"], correctAnswer: "Z 23 na 24 czerwca"),
        Question(q: "Co kryje się za skótem 'HP' odnoszącym się do amerykańskiego przedsiębiorstwa informatycznego?", a: ["Houston-Production", "Howard-Pence", "Hewlett-Packard"], correctAnswer: "Hewlett-Packard"),
        Question(q: "W którym amerykańskim mieście ma swoją główną siedzibę koncern 'Apple'?", a: ["Cupertino", "San Jose", "Sunnyvale"], correctAnswer: "Cupertino"),
        Question(q: "Który dzień jest czterdziestym dniem Wielkiego Postu?", a: ["Niedziela Palmowa", "Wielki Piątek", "Wielkanoc"], correctAnswer: "Niedziela Palmowa"),
        Question(q: "Kto obok J. Clarksona i R. Hammonda prowadził program motoryzacyjny 'Top Gear'?", a: ["Jimmy Carr", "Steve Coogan", "James May"], correctAnswer: "James May"),
        Question(q: "Jak nazywa się nauka o motylach?", a: ["Apidologia", "Lepidopterologia", "Dipterologia"], correctAnswer: "Lepidopterologia"),
        Question(q: "Kim jest filatelista?", a: ["Kolekcjonerem zegarków", "Kolekcjonerem monet", "Kolekcjonerem znaczków"], correctAnswer: "Kolekcjonerem znaczków"),
        Question(q: "W którym kraju ukazał się pierwszy znaczek pocztowy?", a: ["Wielkiej Brytanii", "Szwajcarii", "Francji"], correctAnswer: "Wielkiej Brytanii"),
        Question(q: "Kto wyreżyserował film 'Ojciec chrzestny'?", a: ["Martin Scorsese", "Francis Ford Coppola", "Michael Bay"], correctAnswer: "Francis Ford Coppola"),
        Question(q: "Kto jest autorem powieści 'Ojciec chrzestny'?", a: ["Vincent Pizzi", "Jordan Summers", "Mario Puzo"], correctAnswer: "Mario Puzo"),
        Question(q: "Z którego kraju pochodzi producent zegraków Omega?", a: ["Szwajcarii", "Japonii", "USA"], correctAnswer: "Szwajcarii"),
        Question(q: "Jak nazywa się amerykański przylądek z którego odbywa się większość startów statków kosmicznych?", a: ["Hammaguir", "Canaveral", "Vandenberg"], correctAnswer: "Canaveral"),
        Question(q: "Jak inaczej nazywany jest język prowansalski?", a: ["Baskijski", "Langwedocki", "Oksytański"], correctAnswer: "Oksytański"),
        Question(q: "Które z podanym miast nie leży na Lazurowym Wybrzeżu?", a: ["Nicea", "Cannes", "Grenoble"], correctAnswer: "Grenoble"),
        Question(q: "Jak inaczej nazywany jest mały lub średni port przystosowany do przybijania, cumowania i postoju jachtów?", a: ["Marina", "Dokker", "Slip"], correctAnswer: "Marina"),
        Question(q: "W którym mieście gen. Józef Haller dokonał aktu zaślubin Polski z morzem?", a: ["W Gdyni", "W Pucku", "W Koszalinie"], correctAnswer: "W Pucku"),
        Question(q: "Z jakiego mleka wytwarzany jest ser parmezan?", a: ["Owczego", "Koziego", "Krowiego"], correctAnswer: "Krowiego"),
        Question(q: "Z jakiego kraju pochodzi ser Mazdamer?", a: ["Z Francji", "Z Holandii", "Z Włoch"], correctAnswer: "Z Holandii"),
        Question(q: "Z jakiego kraju pochodzi ser Ementaler?", a: ["Ze Szwajcarii", "Z Holandii", "Z Francji"], correctAnswer: "Ze Szwajcarii"),
        Question(q: "Który wokalista wykonuje utwór pt. 'Jolka, Jolka pamiętasz'?", a: ["Krzysztof Cugowski", "Zbigniew Hołdys", "Felicjan Andrzejczak"], correctAnswer: "Felicjan Andrzejczak"),
        Question(q: "Co znaczy 'Nessun dorma' - tytuł tenorowej arii z trzeciego aktu opery 'Turandot' Giacomo Puccinego?", a: ["'Niech nikt nie śpi'", "'Będziesz moja'", "'Pamiętaj o mnie'"], correctAnswer: "'Niech nikt nie śpi'"),
        Question(q: "Co to jest 'motet'?", a: ["Styl malarski", "Gatunek muzyczny", "Nakrycie głowy"], correctAnswer: "Gatunek muzyczny"),
        Question(q: "Kto zagrał tytułową postać w serialu 'Magnum' z 1980r.?", a: ["Hulk Hogan", "Michael Dudikoff", "Tom Selleck"], correctAnswer: "Tom Selleck"),
        Question(q: "Jaka jest oficjalna nazwa broni znanej również jako '44 Magnum'?", a: ["Smith & Wesson 29", "Walther PPK", "Beretta M9"], correctAnswer: "Smith & Wesson No 29"),
        Question(q: "Jakim rodzajem broni jest Browning BDA?", a: ["Granat hukowy", "Pistolet samopowtarzalny", "Karabin automatyczny"], correctAnswer: "Pistolet samopowtarzalny"),
        Question(q: "Kto jest autorem poematu 'Monachomachia, czyli Wojna mnichów'?", a: ["Juliusz Słowacki", "Aleksander Fredro", "Ignacy Krasicki"], correctAnswer: "Ignacy Krasicki"),
        Question(q: "Z kim toczą wojnę Dominikanie w poemacie heroikomicznym 'Monachomachia, czy Wojna mnichów'?", a: ["Z Karmelitami", "Z Franciszkanami", "Z Jezuitami"], correctAnswer: "Z Karmelitami"),
        Question(q: "Jak nazywa się zdolność niektórych substancji do wchłaniania wilgoci lub wiązania się z wodą?", a: ["Impregnowalność", "Higroskopijność", "Sublimacyjność"], correctAnswer: "Higroskopijność"),
        Question(q: "Kto jest twórcą psychoanalizy?", a: ["Friedrich Nietzsche", "Carl Gustav Jung", "Sigmund Freud"], correctAnswer: "Sigmund Freud"),
        Question(q: "Kto na łożu śmierci wypowiedział słowa 'więcej światła'?", a: ["Johann Wolfgang Goethe", "William Szekspir", "Artur Schopenhauer"], correctAnswer: "Johann Wolfgang Goethe"),
        Question(q: "Kto jest autorem poematu 'Oda do radości'?", a: ["Adam Mickiewicz", "Friedrich Schiller", "Rudolf Steiner"], correctAnswer: "Friedrich Schiller"),
        Question(q: "Z którym diabłem Bóg założył się o duszę doktora Fausta - bohatera dramatu Goethego?", a: ["Z Lucyferem", "Z Belzebubem", "Z Mefistofelesem"], correctAnswer: "Z Mefistofelesem"),
        Question(q: "W której księdze Starego Testamentu poraz pierwszy pojawia się termin 'Szatan'?", a: ["Księdze Liczb", "Księdze Wyjścia", "Księdze Malachiasza"], correctAnswer: "Księdze Liczb"),
        Question(q: "Jak nazywa się dzieło literackie przypisywane określonej osobie, choć napisane przez kogoś zupełnie innego?", a: ["Plagiat", "Pseudoepigraf", "Apokryf"], correctAnswer: "Pseudoepigraf"),
        Question(q: "Które afrykańskie państwo nazywane było dawniej Abisynią?", a: ["Sudan", "Angola", "Etiopia"], correctAnswer: "Etiopia"),
        Question(q: "W którym państwie znajduje się Tokaj -  słynny region winiarski?", a: ["Na Węgrzech", "W Austrii", "We Francji"], correctAnswer: "Na Węgrzech"),
        Question(q: "W którym niemieckim mieście swoją główną siedzibę ma koncern samochodowy Mercedes?", a: ["Monachium", "Stuttgart", "Kolonia"], correctAnswer: "Stuttgart"),
        Question(q: "W którym niemieckim mieście swoją główną siedzibę ma koncern samochodowy Audi?", a: ["Hamburg", "Dortmund", "Ingolstadt"], correctAnswer: "Ingolstadt"),
        Question(q: "Od którego państwa w 1941 roku Etiopia uzyskała niepodległość?", a: ["Włoch", "Francji", "Belgii"], correctAnswer: "Włoch"),
        Question(q: "W którym afrykańskim państwie toczyła się wojna domowa pomiędzy plemionami Hutu i Tutsi?", a: ["Ugandzie", "Rwandzie", "Zimbabwe"], correctAnswer: "Rwandzie"),
        Question(q: "Krwawym dyktatorem którego kraju był Pol Pot?", a: ["Wietnamu", "Birmy", "Kambodży"], correctAnswer: "Kambodży"),
        Question(q: "Kto jest uważany za protoplastę naukowej klasyfikacji biologicznej organizmów?", a: ["Karol Linneusz", "Anders Celsjusz", "Olof Rudbeck"], correctAnswer: "Karol Linneusz"),
        Question(q: "Kto wraz z Francisem Crickiem zaproponował model struktury DNA w postaci podwójnej helisy?", a: ["Rosalinda Franklin", "James Watson", "George Church"], correctAnswer: "James Watson"),
        Question(q: "Jak nazywa się zdolność utrzymywania względnie stałych parametrów wewnętrznych w systemie? (Zwykle odnosi się do samoregulacji procesów biologicznych)", a: ["Apostazja", "Osmotyka", "Homeostaza"], correctAnswer: "Homeostaza"),
        Question(q: "Czym jest deuter?", a: ["Izotopem wodoru", "Gazem szlachetnym", "Pierwiastkiem promieniotwórczym"], correctAnswer: "Izotopem wodoru"),
        Question(q: "Ile izotopów wodoru występuje naturalnie na Ziemi?", a: ["1", "2", "3"], correctAnswer: "3"),
        Question(q: "Co jest jednostką radioaktywności w układzie SI?", a: ["Farad", "Bekerel", "Ruther"], correctAnswer: "Bekerel"),
        Question(q: "Która z barw podstawowych ma najmniejszą długość fali w świetle widzialnym?", a: ["Zieleń", "Czerwień", "Fiolet"], correctAnswer: "Fiolet"),
        Question(q: "W którym roku na orbitę okołoziemską został wyniesiony teleskop Hubbla'a?", a: ["1990", "1993", "1997"], correctAnswer: "1990"),
        Question(q: "Jak nazywa się  planeta znajdująca się w układzie planetarnym, krążąca wokół gwiazdy innej niż Słońce?", a: ["Endoplaneta", "Egzoplaneta", "Kryptoplaneta"], correctAnswer: "Egzoplaneta"),
        Question(q: "Jak miał na imię lokaj inspektora Jacquesa Clouseau znanego z cyklu filmów 'Różowa Pantera'?", a: ["Samu", "Clive", "Cato"], correctAnswer: "Cato"),
        Question(q: "W którym roku po raz pierwszy został zdobyty Mount Everest?", a: ["1953", "1959", "1964"], correctAnswer: "1953"),
        Question(q: "Z jakiego kraju pochodził sir Edmund Hilary - pierwszy zdobywca Mount Everest?", a: ["Wielkiej Brytanii", "Nowej Zelandii", "USA"], correctAnswer: "Nowej Zelandii"),
        Question(q: "Jak nazywa się tybetański lud zamieszkujący Himalaje, którego męscy przedstawiciele są często zatrudniani jako tragarze w czasie wysokogórskich wypraw?", a: ["Gurkhowie", "Magarowie", "Szerpowie"], correctAnswer: "Szerpowie"),
        Question(q: "W którym kraju znajduje się miasto Fatima?", a: ["Portugalii", "Hiszpanii", "Francji"], correctAnswer: "Portugalii"),
        Question(q: "Jak brzmi nepalska nazwa szczytu Mount Everest?", a: ["Czomolungma", "Sagarmatha", "Peak XV"], correctAnswer: "Sagarmatha"),
        Question(q: "Ile jest na Ziemi szczytów o wysokości większej niż 8000 metrów n.p.m.?", a: ["10", "12", "14"], correctAnswer: "14"),
        Question(q: "Jak nazywa się drugi najwyższy na świecie łańcuch górski?", a: ["Karakorum", "Pamir", "Dżugdżur"], correctAnswer: "Karakorum"),
        Question(q: "Wodorotlenkiem jakiego metalu jest ług?", a: ["Litu", "Sodu", "Rubidu"], correctAnswer: "Sodu"),
        Question(q: "Jak nazywa się rodzaj rumowiska skalnego złożony zazwyczaj z ostrokrawędzistych okruchów skalnych, które odpadły od stromego zbocza górskiego?", a: ["Żleb", "Turnia", "Piarg"], correctAnswer: "Piarg"),
        Question(q: "Jak nazywa się najwyższy szczyt Australii i Oceanii?", a: ["Piramida Carstensza", "Góra Kościuszki", "Dome Argus"], correctAnswer: "Piramida Carstensza"),
        Question(q: "Jak nazywa się niedobór tlenu w tkankach w stosunku do zapotrzebowania, wiodący do niedotlenienia organizmu?", a: ["Antyoksydacja", "Hipoksja", "Dychawica"], correctAnswer: "Hipoksja"),
        Question(q: "Gdzie znajdują się Alpy Południowe?", a: ["W RPA", "We Włoszech", "W Nowej Zelandii"], correctAnswer: "W Nowej Zelandii"),
        Question(q: "Kto jako pierwszy zdobył Koronę Himalajów i Karakorum?", a: ["Reinhold Messner", "Jerzy Kukuczka", "Simone Moro"], correctAnswer: "Reinhold Messner"),
        Question(q: "Kto jako pierwszy zdobył Koronę Ziemi?", a: ["Pat Morrow", "Richard Bass", "Rob Hall"], correctAnswer: "Richard Bass"),
        Question(q: "Jak nazywa się najwyższy szczyt Antarktydy?", a: ["Lodowiec Byrda", "Mount Tyree", "Masyw Vinsona"], correctAnswer: "Masyw Vinsona"),
        Question(q: "Który ośmiotysięcznik jako jedyny nadal pozostaje niezdobyty zimą?", a: ["K2", "Nanga Parbat", "Lhotse"], correctAnswer: "K2"),
        Question(q: "Następcą którego papieża został Jan Paweł II?", a: ["Pawła VI", "Jana Pawła I", "Jana XXIII"], correctAnswer: "Jana Pawła I"),
        Question(q: "Jaka waluta obowiązuje na terenie Nowej Zelandii?", a: ["Funt nowozelandzki", "Tala", "Dolar nowozelandzki"], correctAnswer: "Dolar nowozelandzki"),
        Question(q: "Jak nazywa sie główna bohaterka powieści 'Przeminęło z wiatrem'?", a: ["Scarlett O'Hara", "Jane Dowson", "Margaret Mitchell"], correctAnswer: "Scarlett O'Hara"),
        Question(q: "Kto jest autorem i wykonawcą piosenki 'Piłem w Spale, spałem w Pile'?", a: ["Łukasz Rybarski", "Artur Andrus", "Piotr Bałtroczyk"], correctAnswer: "Artur Andrus"),
        Question(q: "Jak nazwywa się stan lub zdolność, w której doświadczenia jednego zmysłu wywołują również doświadczenia charakterystyczne dla innych zmysłów?", a: ["Onomatopeja", "Hiperleksja", "Synestezja"], correctAnswer: "Synestezja"),
        Question(q: "Który kucharz i celebryta jest określany mianem 'Midasa polskiego restauratorstwa'?", a: ["Adam Gessler", "Karol Okrasa", "Robert Makłowicz"], correctAnswer: "Adam Gessler"),
        Question(q: "Jak nazywają się sezonowe układy wiatrów między oceanem a lądem, które zmieniają swój kierunek na przeciwny w zależności od pory roku?", a: ["Golfsztromy", "Monsuny", "Bryzy"], correctAnswer: "Monsuny"),
        Question(q: "Jaką barwę ma szlachetny minerał znany pod nazwą 'biksbit'?", a: ["Żółtozieloną", "Bladoniebieską", "Różowoczerwoną"], correctAnswer: "Różowoczerwoną"),
        Question(q: "Co to jest 'pawęż'?", a: ["Rodzaj tarczy", "Rodzaj wozu zaprzęgowego", "Rodzaj glinianego naczynia"], correctAnswer: "Rodzaj tarczy"),
        Question(q: "Jak inaczej nazywany jest gatunek winorośli 'primitivo'?", a: ["Vranac", "Zinfandel", "Girgentina"], correctAnswer: "Zinfandel"),
        Question(q: "Jakie owoce używane są do produkcji koniaku?", a: ["Śliwki", "Jabłka", "Winogrona"], correctAnswer: "Winogrona"),
        Question(q: "Jakie owoce używane są do produkcji alkoholu nazywanego 'calvados'?", a: ["Jabłka", "Gruszki", "Śliwki"], correctAnswer: "Jabłka"),
        Question(q: "Pod jaką inną nazwą znany jest klon?", a: ["Limba", "Jawor", "Grab"], correctAnswer: "Jawor"),
        Question(q: "'Jump' jest największym przebojem której amerykańskiej grupy rockowej?", a: ["Metallica", "Dire Straits", "Van Halen"], correctAnswer: "Van Halen"),
        Question(q: "Kto jako pierwszy odbył zakończony sukcesem, samotny przelot pomiędzy Ameryką Północną a Europą?", a: ["Charles Lindbergh", "Charles Nungesser", "René Paul Fonck"], correctAnswer: "Charles Lindbergh"),
        Question(q: "W którym polskim mieście znajduje się Pałac Branickich?", a: ["W Lublinie", "W Białymstoku", "W Toruniu"], correctAnswer: "W Białymstoku"),
        Question(q: "Jak nazywa się najmniejsza pod względem powierzchni republika na świecie?", a: ["Watykan", "Wyspy Marshalla", "Nauru"], correctAnswer: "Nauru"),
        Question(q: "Jak nazywa się francuski aplinista oraz wspinacz po wieżowcach znany pod pseudonimem 'Spider-Man'? ", a: ["Alain Robert", "Eugene Vidocq", "Pierre Capete"], correctAnswer: "Alain Robert"),
        Question(q: "W którym państwie znajduje się Pustynia Mojave?", a: ["W Meksyku", "W USA", "W Argentynie"], correctAnswer: "W USA"),
        Question(q: "Który członek rodziny Waglewskich występuje pod pseudonimem 'Emade'?", a: ["Wojciech", "Bartosz", "Piotr"], correctAnswer: "Piotr"),
        Question(q: "Kto obok Stanisława Wyspiańskiego jest twórcą witraży w prezbiterium Kościoła Mariackiego w Krakowie?", a: ["Józef Mehoffer", "Teodor Talowski", "Jan Talaga"], correctAnswer: "Józef Mehoffer"),
        Question(q: "Czyje imię nosi Teatr Stary w Krakowie?", a: ["Aleksandra Fredry", "Tadeusza Boya-Żeleńskiego", "Heleny Modrzejewskiej"], correctAnswer: "Heleny Modrzejewskiej"),
        Question(q: "Z którego państwa pochodził bohater powieści Agathy Christie, Herkules Poirot?", a: ["Z Belgii", "Z Francji", "Z Wielkiej Brytanii"], correctAnswer: "Z Belgii"),
        Question(q: "W którym roku miała mijesce katastrofa elektrowni jądrowej w Czarnobylu?", a: ["1983", "1986", "1988"], correctAnswer: "1986"),
        Question(q: "Kto jest autorem 'Sagi lodu i ognia'?", a: ["John R.R. Tolkien", "Andrzej Sapkowski", "George R.R. Martin"], correctAnswer: "George R.R. Martin"),
        Question(q: "W której dyscyplinie olimpijskiej złoty medal zdobył Władysław Komar?", a: ["Pchnięcie kulą", "Rzut oszczepem", "Skok o tyczce"], correctAnswer: "Pchnięcie kulą"),
        Question(q: "Jak popularnie nazywany jest mecz finałowy o mistrzostwo ligi NFL?", a: ["Super Cup", "Super Bowl", "Super Slam"], correctAnswer: "Super Bowl"),
        Question(q: "Wirtuozem którego instrumentu muzycznego był Henryk Wieniawski?", a: ["Wiolonczeli", "Trąbki", "Skrzypiec"], correctAnswer: "Skrzypiec"),
        Question(q: "Kto wcieł się w rolę Mirandy Priestly w filmie 'Diabeł ubiera się u Prady'?", a: ["Meryl Streep", "Anne Hathaway", "Emily Blunt"], correctAnswer: "Meryl Streep"),
        Question(q: "Który polski uczony jest twórcą języka Esperanto?", a: ["Stanisław Lem", "Ludwik Zamenhof", "Julian Fałat"], correctAnswer: "Ludwik Zamenhof"),
        Question(q: "Które miasto było gospodarzem Igrzysk Olimpijskich w 2008 roku?", a: ["Sydney", "Londyn", "Pekin"], correctAnswer: "Pekin"),
        Question(q: "Jak nazywał się prezydent Zimbabwe piastujący ten urząd w latach 1987-2017?", a: ["Robert Mugabe", "Théoneste Bagosora", "Idi Amin"], correctAnswer: "Robert Mugabe"),
        Question(q: "Kto do 2011 roku był przywódcą Korei Północnej?", a: ["Kim Ir Sen", "Kim Dzong Il", "Kim Dzong Un"], correctAnswer: "Kim Dzong Il"),
        Question(q: "Który legendarny zespół rockowy jest autorem przebojów 'Whole Lotta Love' i 'Stairway to Heaven'?", a: ["Kiss", "Pink Floyd", "Led Zeppelin"], correctAnswer: "Led Zeppelin"),
        Question(q: "Kto jest autorem powieści 'Znachor'?", a: ["Tadeusz Dołęga-Mostowicz", "Tadeusz Boy-Żeleński", "Henryk Wars"], correctAnswer: "Tadeusz Dołęga-Mostowicz"),
        Question(q: "Która wyspa jest największą wyspą świata?", a: ["Madagaskar", "Grenlandia", "Borneo"], correctAnswer: "Grenlandia"),
        Question(q: "Jakie zwierzę przyczyniło się do śmierci znanego podróżnika Steva Irwina?", a: ["Aligator", "Meduza", "Płaszczka"], correctAnswer: "Płaszczka"),
        Question(q: "Historię którego polskiego kompozytora opowiada film Romana Polańskiego 'Pianista'?", a: ["Władysława Szpilmana", "Artura Rubinsteina", "Stanisława Ursteina"], correctAnswer: "Władysława Szpilmana"),
        Question(q: "W którym mieście odbywa się najstarszy na świecie festiwal filmowy?", a: ["W Cannes", "W Wenecji", "W Berlinie"], correctAnswer: "W Wenecji"),
        Question(q: "Kto jest autorem powieści 'Grona gniewu'?", a: ["Lew Tołstoj", "Thomas Mann", "John Steinbeck"], correctAnswer: "John Steinbeck"),
        Question(q: "Gitarzystą którego słynnego zespołu jest Mark Knopfler?", a: ["Dire Straits", "Queen", "Genesis"], correctAnswer: "Dire Straits"),
        Question(q: "Z którego filmu animowanego pochodzi utwór Eltona Johna pt. 'Can You Fell the Love Tonight'?", a: ["Shrek", "Pocahontas", "Król Lew"], correctAnswer: "Król Lew"),
        Question(q: "Która z podanych budowli jest zaliczana do siedmiu cudów starożytnego świata?", a: ["Koloseum", "Piramida Cheopsa", "Wieli Mur Chiński"], correctAnswer: "Piramida Cheopsa"),
        Question(q: "Który aktor wcielał się w postać doktora Gregory'ego House'a w znanym serialu telewizyjnym?", a: ["Hugh Laurie", "Christian Bale", "Damian Lewis"], correctAnswer: "Hugh Laurie"),
        Question(q: "W którym polskim mieście powstał zespół 'Republika'?", a: ["W Gdyni", "W Toruniu", "W Łodzi"], correctAnswer: "W Toruniu"),
        Question(q: "Który turniej tenisowy jest najstarszy?", a: ["US Open", "Roland Garros", "Wimbledon"], correctAnswer: "Wimbledon"),
        Question(q: "Które afrykńskie państwo jest największe pod względem powierzchni?", a: ["Algieria", "Sudan", "DR Kongo"], correctAnswer: "Algieria"),
        Question(q: "Kto był twórcą firmy komputerowej Optimus?", a: ["Zygmunt Solorz", "Michał Sołowow", "Roman Kluska"], correctAnswer: "Roman Kluska"),
        Question(q: "W której londyńskiej dzielnicy dokonywał swoich zbrodni Kuba Rozpruwacz?", a: ["Chelsea", "Whitechapel", "Notting Hill"], correctAnswer: "Whitechapel"),
        Question(q: "Kto wcielił się w postać Jamesa Bonda w filmie 'Tylko dla twoich oczu'?", a: ["Roger Moore", "Timothy Dalton", "Pierce Brosnan"], correctAnswer: "Roger Moore"),
        Question(q: "Kto dowodził wojskami polskimi w Bitwie pod Kircholmem (1605 r.)?", a: ["Stanisław Żółkiewski", "Bohdan Chmielnicki", "Jan Karol Chodkiewicz"], correctAnswer: "Jan Karol Chodkiewicz"),
        Question(q: "W którym państwie została założona organizacja humanitarna 'Czerwony Krzyż'?", a: ["We Włoszech", "W Szwajcarji", "W Wielkiej Brytanii"], correctAnswer: "W Szwajcarji"),
        Question(q: "W jakich latach rozgrywała się wojna koreańska?", a: ["1947-1955", "1950-1953", "1962-1969"], correctAnswer: "1950-1953"),
        Question(q: "Jak nazywa się największy na świecie lądowy drapieżnik?", a: ["Niedźwiedź polarny", "Niedźwiedź brunatny", "Tygrys syberyjski"], correctAnswer: "Niedźwiedź polarny"),
        Question(q: "Które azjatyckie miasto jako pierwsze zostało gospodarzem Letnich Igrzysk Olimpijskich?", a: ["Tokio", "Seul", "Pekin"], correctAnswer: "Tokio"),
        Question(q: "Jak nazywa się największe tropikalne jezioro świata?" , a: ["Titicaca", "Aralskie", "Wiktorii"], correctAnswer: "Wiktorii"),
        Question(q: "Kto wyreżyserował film 'Wodzirej'?", a: ["Feliks Falk", "Andrzej Wajda", "Krzystof Zanussi"], correctAnswer: "Feliks Falk"),
        Question(q: "Jak nazywa się największe miasto półkuli południowej?", a: ["Sydney", "Sao Paulo", "Buenos Aires"], correctAnswer: "Sao Paulo"),
        Question(q: "Kto jest autorem powieści 'Rok 1984'?", a: ["Franz Kafka", "Chuck Palahniuk", "George Orwell"], correctAnswer: "George Orwell"),
        Question(q: "W którym słynnym budynku przechowywane są brytyjskie klejnoty królewskie?", a: ["Tower of London", "Palace of Westminster", "Buckingham Palace"], correctAnswer: "Tower of London"),
        Question(q: "Który aktor zagrał główną rolę w filmie 'Żółty szalik'?", a: ["Jerzy Stuhr", "Janusz Gajos", "Jan Englert"], correctAnswer: "Janusz Gajos"),
        Question(q: "Przedstawicielami którego nurtu w sztuce byli m.in. Degas, Renoir i Podkowiński?", a: ["Kubizmu", "Modernizmu", "Impresjonizmu"], correctAnswer: "Impresjonizmu"),
        Question(q: "Jak nazywa się najwyższy szczyt Kaukazu?", a: ["Elbrus", "Szchara", "Aragac"], correctAnswer: "Elbrus"),
        Question(q: "Którą słynną nagrodę filmową zdobył obraz Andrzeja Wajdy 'Człowiek z żelaza'?", a: ["Złotego Lwa", "Złotą Palmę", "Złotego Niedźwiedzia"], correctAnswer: "Złotą Palmę"),
        Question(q: "Jak nazywa się główna nagroda Festiwalu Filmowego w Berlinie?", a: ["Złoty Lew", "Złota Kaczka", "Złoty Niedźwiedź"], correctAnswer: "Złoty Niedźwiedź"),
        Question(q: "Jak nazywa się najstarsza polska nagroda filmowa?", a: ["Złota Kaczka", "Orzeł", "Fryderyk"], correctAnswer: "Złota Kaczka"),
        Question(q: "Jak nazywał się dowódca legendarnego oddziału 'Nietykalnych', walczącego z gangiem Ala Capone?", a: ["J. Edgar Hoover", "Eliot Ness", "Andrew Mellon"], correctAnswer: "Eliot Ness"),
        Question(q: "Która kobieta jako pierwsza w historii otrzymała Nagrodę Nobla?", a: ["Bertha von Suttner", "Gabriela Mistral",  "Maria Skłodowska-Curie"], correctAnswer: "Maria Skłodowska-Curie"),
        Question(q: "W której dyscyplinie olimpijskiej medale zdobywał Jerzy Kulej?", a: ["W boksie", "W zapasach", "W judo"], correctAnswer: "W boksie"),
        Question(q: "Jakim przydomkiem określana była Margaret Thatcher?", a: ["Kobieta ze Stali", "Żelazna Dama", "Spiżowa Królowa"], correctAnswer: "Żelazna Dama"),
        Question(q: "Który spośród obecnie żyjących gatunków ptaków ma największą rozpiętość skrzydeł?", a: ["Kondor wielki", "Kormoran atlantycki", "Albatros wędrowny"], correctAnswer: "Albatros wędrowny"),
        Question(q: "Który kierowca Formuły 1 nosi przydomek 'Iceman'?", a: ["Kimi Räikkönen", "Valtteri Bottas", "Mika Häkkinen"], correctAnswer: "Kimi Räikkönen"),
        Question(q: "Jak nazywa się największy żyjący współcześnie gryzoń na świecie?", a: ["Mara patagońska", "Kapibara wielka", "Bóbr kanadyjski"], correctAnswer: "Kapibara wielka"),
        Question(q: "Która rzeka jest najdłuższą rzeką USA?", a: ["Colorado", "Jukon", "Missisipi"], correctAnswer: "Missisipi"),
        Question(q: "Który pierwiastek chemiczny jest najlżejszy?", a: ["Wodór", "Azot", "Hel"], correctAnswer: "Wodór"),
        Question(q: "Dziełem którego słynnego architekta jest Sagrada Familia?", a: ["Santiago Calatravy", "Daniela Libeskinda", "Antonio Gaudiego"], correctAnswer: "Antonio Gaudiego"),
        Question(q: "Który kraj do 1984 roku noisł nazwę Republika Górnej Wolty?", a: ["Burkina Faso", "Sudan", "Botswana"], correctAnswer: "Burkina Faso"),
        Question(q: "Który aktor otrzymał Oskara za główną rolę w filmie 'Lot nad kukułczym gniazdem'?", a: ["Richard Gere", "Jack Nicholson", "Daniel Day Lewis"], correctAnswer: "Jack Nicholson"),
        Question(q: "Jaką nazwę nosi model opony całoroczej produkowanej przez firmę Continental?", a: ["CrossClimate", "Weather Control", "AllSeasonContact"], correctAnswer: "AllSeasonContact"),
        Question(q: "W którym miejscu rozpoczęła się operacja 'Overlord'?", a: ["W Normandii", "W Bretanii", "W Alzacji"], correctAnswer: "W Normandii"),
        Question(q: "Kto był ostatnim prezydentem Czechosłowacji?", a: ["Jiří Raška", "Václav Havel", "Tomáš Hradílek"], correctAnswer: "Václav Havel"),
        Question(q: "Jaki symbol chemiczny ma pluton?", a: ["Pl", "Pt", "Pu"], correctAnswer: "Pu"),
        Question(q: "Z którego kraju pochodzi zespół muzyczny 'A-ha'?", a: ["Z Norwegii", "Ze Szwecji", "Z Finlandii"], correctAnswer: "Z Norwegii"),
        Question(q: "Erupcja którego wulkanu zniszczyła Pompeje w 79 roku n.e.?", a: ["Etny", "Wezuwiusza", "Stromboli"], correctAnswer: "Wezuwiusza"),
        Question(q: "Który bohater dramatów Szekspira mówi o życiu, że jest 'powieścią idioty; głośną, wrzaskliwą, a nic nie znaczącą'?", a: ["Hamlet", "Romeo", "Makbet"], correctAnswer: "Makbet"),
        Question(q: "Które przedsiębiorstwo produkujące obuwie i odzież sportową założył Rudolf Dassler?", a: ["Puma", "Adidas", "Hummel"], correctAnswer: "Puma"),
        Question(q: "Który film był pełnometrażowym debiutem reżyserskim Andrzeja Wajdy?", a: ["Kanał", "Pokolenie", "Popiół i diament"], correctAnswer: "Pokolenie"),
        Question(q: "Kto jest autorem dzieł naukowych 'Philosophie Naturalis' i 'Principia Mathematica'?", a: ["Mikołaj Kopernik", "Albert Einstein", "Isaac Newton"], correctAnswer: "Isaac Newton"),
        Question(q: "Które z podanych zwierząt w momencie zagrożenia udaje martwego?", a: ["Opos", "Kapibara", "Surykatka"], correctAnswer: "Opos"),
        Question(q: "Który słynny malarz jest autorem takich obrazów jak 'Słoneczniki' i 'Gwieździsta noc'?", a: ["Claude Monet", "Vincent van Gogh", "Paul Gauguin"], correctAnswer: "Vincent van Gogh"),
        Question(q: "Kto jest autorem ksiązki 'Kod Leonarda da Vinci'?", a: ["Stephen King", "Peter Godwin", "Dan Brown"], correctAnswer: "Dan Brown"),
        Question(q: "W którym hiszpańskim mieście odbywa się coroczny festiwal 'La Tomatina', w czasie którego uczestnicy obrzucają się pomidorami?", a: ["W Buñol", "W Pampelunie", "W Kadyksie"], correctAnswer: "W Buñol"),
        Question(q: "Kto zagrał główną rolę męską w filmie 'American Beauty'?", a: ["Edward Norton", "Kevin Spacey", "Tom Hanks"], correctAnswer: "Kevin Spacey"),
        Question(q: "Pod jakim pseudonimem znany jest Marshall Bruce Mathers III?", a: ["50 Cent", "Jay-Z", "Eminem"], correctAnswer: "Eminem"),
        Question(q: "Jak brzmiała pierwotna nazwa napoju Pepsi?", a: ["Brad's Drink", "Tom's Coke", "Black Soda"], correctAnswer: "Brad's Drink"),
        Question(q: "Które państwo leżące na Karibach ma największą populację?", a: ["Barbados", "Kuba", "Jamajka"], correctAnswer: "Kuba"),
        Question(q: "Kto sprawował dyktatorskie rządy na Kubie w latach 1952-1959?", a: ["Raul Castro", "Anselmo Alliegro", "Fulgencio Batista"], correctAnswer: "Fulgencio Batista"),
        Question(q: "Kto jest załozycielem WikiLeaks?", a: ["Julian Assange", "Edward Snowden", "Carlton Cole"], correctAnswer: "Julian Assange"),
        Question(q: "Kto wynalazł piorunochron?", a: ["Isaac Newton", "Benjamin Franklin", "Thomas Edison"], correctAnswer: "Benjamin Franklin"),
        Question(q: "Kto wcielił się rolę komisarza Halskiego w serialu 'Ekstradycja'?", a: ["Krzysztof Kolberger", "Bogusław Linda", "Marek Kondrat"], correctAnswer: "Marek Kondrat"),
        Question(q: "Kto jest autorem powieści 'Drakula'?", a: ["Bram Stoker", "George Byron", "John Polidori"], correctAnswer: "Bram Stoker"),
        Question(q: "Za którą powieść w 2001 roku Jerzy Pilch otrzymał Nagrodę Literacką Nike?", a: ["Miasto utrapienia", "Pod Mocnym Aniołem", "Marsz Polonia"], correctAnswer: "Pod Mocnym Aniołem"),
        Question(q: "Jaką nazwę noszą gatunki zwierząt wodnych które większość życia spędzają w wodach słonych, a do rozmnażania przystępują w wodach słodkich?", a: ["Katadromowe", "Duodromowe", "Anadromowe"], correctAnswer: "Anadromowe"),
        Question(q: "Na których Zimowych Igrzyskach Olimpijskich po raz pierwszy w turnieju hokejowym mogli wziąć udział zawodowcy z ligi NHL?", a: ["Nagano, 1998r.", "Lillehammer, 1994r.", "Calgary, 1988r."], correctAnswer: "Nagano, 1998r."),
        Question(q: "Kto jest reżyserem trylogii filmowej 'Trzy kolory'?", a: ["Krzysztof Zanussi", "Krzysztof Kieślowski", "Feliks Falk"], correctAnswer: "Krzysztof Kieślowski"),
        Question(q: "Kto zagrał główną rolę męską w filmie 'Blade Runner' ('Łowca androidów')?", a: ["Michael Douglas", "Clint Eastwood", "Harrison Ford"], correctAnswer: "Harrison Ford"),
        Question(q: "Które jezioro jest najwyżej położonym jeziorem żeglownym świata?", a: ["Ticitaca", "Bajkał", "Michigan"], correctAnswer: "Ticitaca"),
        Question(q: "Która aktorka wcieliła się w rolę Czarnej Mamby w filmie 'Kill Bill'?", a: ["Sandra Bullock", "Uma Thurman", "Lucy Liu"], correctAnswer: "Uma Thurman"),
        Question(q: "Które europejskie miasto położone jest nad Tybrem?", a: ["Madryt", "Zagrzeb", "Rzym"], correctAnswer: "Rzym"),
        Question(q: "Jak nazywa się najwyższy diabelski młym w Europie?", a: ["London Eye", "Wiener Reisenrad", "Flower Ferris Wheel"], correctAnswer: "London Eye"),
        Question(q: "Z którego państwa pochodzi tradycyjny ser halloumi?", a: ["Z Grecji", "Z Cypru", "Z Chorwacji"], correctAnswer: "Z Cypru"),
        Question(q: "Z jakiego miasta pochodził serialowy gang motocyklowy 'Synowie Anarchii'?", a: ["Santa Fe", "Brentford", "Charming"], correctAnswer: "Charming"),
        Question(q: "Kto jest autorem obrazu 'Krzyk'?", a: ["Edvard Munch", "Henri Matisse", "Gustave Moreau"], correctAnswer: "Edvard Munch"),
        Question(q: "Efektem upadku którego polskiego powstania była Wielka Emigracja?", a: ["Kościuszkowskiego", "Listopadowego", "Styczniowego"], correctAnswer: "Listopadowego"),
        Question(q: "Kogo określa się mianem twórcy niemieckich wojsk pancernych?", a: ["Hermanna Göringa", "Karla Dönitza", "Heinza Guderiana"], correctAnswer: "Heinza Guderiana"),
        Question(q: "W którym mieście znajduje się późnobarokowy Letni Pałac Lubomirskich?", a: ["W Rzeszowie", "W Lublinie", "W Sandomierzu"], correctAnswer: "W Rzeszowie"),
        Question(q: "Ile wynosi suma wszystkich liczb w ruletce?", a: ["599", "666", "789"], correctAnswer: "666"),
        Question(q: "Jakiego mitycznego potwora zabił Tezeusz?", a: ["Hydrę", "Cyklopa", "Minotaura"], correctAnswer: "Minotaura"),
        Question(q: "Jak nazywa się najniżej położone państwo świata?", a: ["Malediwy", "Seszele", "Trynidad i Tobago"], correctAnswer: "Malediwy"),
        Question(q: "Kto był twórcą postaci Don Kichota?", a: ["Antoine de Saint-Exupéry", "Miguel de Cervantes", "Ernest Hemingway"], correctAnswer: "Miguel de Cervantes"),
        Question(q: "Diego de la Vega walczy o sprawiedliwość pod pseudonimem...", a: ["Sokole Oko", "Robin Hood", "Zorro"], correctAnswer: "Zorro"),
        Question(q: "Kto jest autorem powieści takich jak 'Doktor Faustus' czy 'Czarodziejska góra'?", a: ["Thomas Mann", "Jules Verne", "Lew Tołstoj"], correctAnswer: "Thomas Mann"),
        Question(q: "Kto jest autorem powieści 'Trans-Atlantyk' i 'Pornografia'?", a: ["Sławomir Mrożek", "Witold Gombrowicz", "Stanisław Lem"], correctAnswer: "Witold Gombrowicz"),
        Question(q: "Która polska pisarka jest autorką powieści 'Granica'?", a: ["Maria Konopnicka", "Hanna Krall", "Zofia Nałkowska"], correctAnswer: "Zofia Nałkowska"),
        Question(q: "Z którego państwa pochodzi sztuka walki zwana 'arnis'?", a: ["Z Filipin", "Z Tajwanu", "Z Wietnamu"], correctAnswer: "Z Filipin"),
        Question(q: "Czyim uczniem był Arystoteles", a: ["Sokratesa", "Platona", "Diogenesa"], correctAnswer: "Platona"),
        Question(q: "Który z greckich filozofów mieszkał w beczce?", a: ["Zenon", "Archimedes", "Diogenes"], correctAnswer: "Diogenes"),
        Question(q: "Kto jako pierwszy samotnie i bez użycia butli z tlenem osiągnął wierzchołek Mount Everestu?", a: ["Reinhold Messner", "Jerzy Kukuczka", "Scott Fischer"], correctAnswer: "Reinhold Messner"),
        Question(q: "Który przedstawiciel rodziny kotowatych jako dorosły osobnik nie potrafi chować pazurów i wdrapywać się na drzewa?", a: ["Puma", "Gepard", "Hiena"], correctAnswer: "Gepard"),
        Question(q: "Które zwierzę płonie na słynnym obrazie Salvadora Dali?", a: ["Zebra", "Tygrys", "Żyrafa"], correctAnswer: "Żyrafa"),
        Question(q: "Jaki jest język urzędowy w Brazylii?", a: ["Portugalski", "Hiszpański", "Francuski"], correctAnswer: "Portugalski"),
        Question(q: "Który pierwiastek chemiczny ma symbol Hg?", a: ["Holm", "Rtęć", "Żelazo"], correctAnswer: "Rtęć"),
        Question(q: "Który pierwiastek chemiczny ma symbol Sb?", a: ["Cyna", "Srebro", "Antymon"], correctAnswer: "Antymon"),
        Question(q: "Który pierwiastek chemiczny ma symbol Pb?", a: ["Ołów", "Platyna", "Pallad"], correctAnswer: "Ołów"),
        Question(q: "Który pierwiastek chemiczny ma symbol Al", a: ["Aluminium", "Glin", "Tantal"], correctAnswer: "Glin"),
        Question(q: "Jaki charakter chemiczny posiada pierwiastek o nazwie krzem?", a: ["Metal", "Niemetal", "Półmetal"], correctAnswer: "Półmetal"),
        Question(q: "Jaki charakter chemiczny posiada pierwiastek o nazwie wanad?", a: ["Metal", "Niemetal", "Niemetal-Gaz szlachetny"], correctAnswer: "Metal"),
        Question(q: "Jaki charakter chemiczny posiada pierwiastek o nazwie Selen?", a: ["Niemetal", "Półmetal", "Niemetal-Gaz szlachetny"], correctAnswer: "Niemetal"),
        Question(q: "Kto wcielił się w postać Adasia Miauczyńskiego w filmie 'Dzień świra'?", a: ["Cezary Pazura", "Marek Kondrat", "Andrzej Chyra"], correctAnswer: "Marek Kondrat"),
        Question(q: "Kto wcielił się w postać Adasia Miauczyńskiego w filmie 'Nic śmiesznego'?", a: ["Wojciech Wysocki", "Marek Kondrat", "Cezary Pazura"], correctAnswer: "Cezary Pazura"),
        Question(q: "Kto jest twórcą postaci Kubusia Puchatka?", a: ["Alan A. Milne", "Charles Dickens", "Oscar Wilde"], correctAnswer: "Alan A. Milne"),
        Question(q: "Atrakcją którego znanego kurortu turystycznego jest skała 'La Quebrada'?", a: ["Rio De Janeiro", "Acapulco", "Santa Monica"], correctAnswer: "Acapulco"),
        Question(q: "Które polskie miasto jest nazywane 'miastem świętej Wieży'?", a: ["Kraków", "Łódź", "Częstochowa"], correctAnswer: "Częstochowa"),
        Question(q: "Jak nazywał się najwiekszy w historii pasażerski sterowiec?", a: ["Hindenburg", "Gross Zepelin", "N1 Norge"], correctAnswer: "Hindenburg"),
        Question(q: "Które państwo zajmuje drugie miejsce pod względem wielkości terytorium?", a: ["Chiny", "Kanada", "USA"], correctAnswer: "Kanada"),
        Question(q: "Który zawodnik zdobył osiem złotych medali na Igrzyskach Olimpijskich w Pekinie?", a: ["Ian Thorpe", "Adam Peaty", "Michael Phelps"], correctAnswer: "Michael Phelps"),
        Question(q: "W którym mieście powstała pierwsza w Polsce szkoła filmowa?", a: ["W Krakowie", "W Łodzi", "W Warszawie"], correctAnswer: "W Krakowie"),
        Question(q: "Które zwierzę jest największym obecnie żyjącym gadem na Ziemi?", a: ["Waran z Komodo", "Krokodyl różańcowy", "Żółw słoniowy"], correctAnswer: "Krokodyl różańcowy"),
        Question(q: "Który sławny bokser urodził sie jako Cassius Clay?", a: ["Mike Tyson", "Lennox Lewis", "Muhammad Ali"], correctAnswer: "Muhammad Ali"),
        Question(q: "Które miasto jest legislacyjną stolicą RPA?", a: ["Kapsztad", "Pretoria", "Johannesburg"], correctAnswer: "Kapsztad"),
        Question(q: "Które miasto jest stolicą stanu Arizona?", a: ["Boston", "Phoenix", "Indianapolis"], correctAnswer: "Phoenix"),
        Question(q: "W którym hiszpańskoęzycznym kraju jako pierwsze odbyły się Letnie Igrzyska Olimpijskie?", a: ["W Hiszpanii", "W Argentynie", "W Meksyku"], correctAnswer: "W Meksyku"),
        Question(q: "Podczas wspinaczki na który górski szczyt życie stracił wybitny polski himalaista Jerzy Kukuczka?", a: ["Lhotse", "Makalu", "Annapurna"], correctAnswer: "Lhotse"),
        Question(q: "Które miasto jest największym miastem stanu Teksas?", a: ["Dallas", "Houston", "San Antonio"], correctAnswer: "Houston"),
        Question(q: "Jak naprawdę nazywał się Joseph Conrad?", a: ["Jan Korzymski", "Jakub Komorowski", "Józef Korzeniowski"], correctAnswer: "Józef Korzeniowski"),
        Question(q: "Wcześniejszą nazwą którego afrykańskiego państwa jest 'Rodezja'?", a: ["Angoli", "Kamerunu", "Zimbabwe"], correctAnswer: "Zimbabwe"),
        Question(q: "Jaka jest najdłuższa rzeka Niemiec?", a: ["Ren", "Łaba", "Dunaj"], correctAnswer: "Ren"),
        Question(q: "W którym mieście można podziwiać dzieło Leonadra Da Vinci 'Ostatnia wieczerza'?", a: ["W Rzymie", "W Mediolanie", "W Turynie"], correctAnswer: "W Mediolanie"),
        Question(q: "'Hylobates' jest przedstwicielem którego rodzaju małp?", a: ["Gibonów", "Pawianów", "Lemurów"], correctAnswer: "Gibonów"),
        Question(q: "Jak nazywa się najwyższy wulkan na świecie?", a: ["Etna", "Kilmanjaro", "Ojos del Salado"], correctAnswer: "Ojos del Salado"),
        Question(q: "Jak nazywał się partner postaci granej przez Chucka Norrisa w serialu 'Strażnik Teksasu'?", a: ["Reno Raines", "Jimmy Trivette", "Stringfellow Hawk"], correctAnswer: "Jimmy Trivette"),
        Question(q: "W którym amerykańskim stanie znajduje się 'Dolina Pomników'?", a: ["Utah", "Kansas", "Indiana"], correctAnswer: "Utah"),
        Question(q: "W którym indyjskim mieście znajduje się 'Tadź Mahal'?", a: ["Mumbaju", "Agrze", "Bengalur"], correctAnswer: "Agrze"),
        Question(q: "Jak nazywa się drugie co do wielkości jezioro w Polsce?", a: ["Wigry", "Gopło", "Mamry"], correctAnswer: "Mamry"),
        Question(q: "Kto w latach 80. wraz z Bohdanem Smoleniem tworzył niezapomniany kabaret TEY?", a: ["Zenon Laskowik", "Waldemar Malicki", "Wiesław Gołas"], correctAnswer: "Zenon Laskowik"),
        Question(q: "W którym słynnym filmie wyreżyserowanym przez Michaela Camino wielkie kreacje stworzyli Robert De Niro oraz Christopher Walken?", a: ["Taksówkarz", "Łowca jeleni", "Brudny Harry"], correctAnswer: "Łowca jeleni"),
        Question(q: "Który architekt jest głównym autorem projektu Nowej Huty?", a: ["Teodor Talowski", "Stanisław Czuchra", "Tadeusz Ptaszycki"], correctAnswer: "Tadeusz Ptaszycki"),
        Question(q: "Założecielami którego portalu są Larry Page i Sergey Brin?", a: ["Google", "Twitter", "Instagram"], correctAnswer: "Google"),
        Question(q: "Przedstawicielem którego nurtu artystycznego był Andy Warhol?", a: ["Minimalizmu", "Pop-Artu", "Fowizmu"], correctAnswer: "Pop-Artu"),
        Question(q: "Kto jest reżyserem kultowego filmu 'Pluton' z Tomem Berengerem i Willemem Dafoe?", a: ["Martin Scorsese", "Ridley Scott", "Oliver Stone"], correctAnswer: "Oliver Stone"),
        Question(q: "Kto był ostatatnim królem Polski z dynastii Jagiellonów?", a: ["Zygmunt August", "Zygmunt Stary", "Jan Olbracht"], correctAnswer: "Zygmunt August"),
        Question(q: "Jakie morze znajduje się w tytule piosenki Budki Suflera?", a: ["Czarne", "Martwe", "Zimne"], correctAnswer: "Martwe"),
        Question(q: "Który styl w sztuce jest również znany pod nazwami 'Art Nouveau' i 'Jugendstihl'?", a: ["Impresjonizm", "Futuryzm", "Secesja"], correctAnswer: "Secesja"),
        Question(q: "Księżycem której planety Układu Słonecznego jest Tytan?", a: ["Saturna", "Uranu", "Neptuna"], correctAnswer: "Saturna"),
        Question(q: "Która polska grupa hiphopowa wydała album 'Kinematografia'?", a: ["Kaliber 44", "Paktofonika", "Slums Attack"], correctAnswer: "Paktofonika"),
        Question(q: "Które miasto jest stolicą Irlandii Północnej?", a: ["Cardiff", "Aberdeen", "Belfast"], correctAnswer: "Belfast"),
        Question(q: "W którym polskim mieście odbywał się Festiwal Piosenki Radzieckiej?", a: ["W Zielonej Górze", "W Rawie Mazowieckiej", "W Koszalinie"], correctAnswer: "W Zielonej Górze"),
        Question(q: "Jaki pseudonim nosi lider zespołu U2?", a: ["Sting", "Bono", "Slash"], correctAnswer: "Bono"),
        Question(q: "Na terytorium którego afrykańskiego państwa leży słona równina Makgadikgadi?", a: ["Etiopii", "Angoli", "Botswany"], correctAnswer: "Botswany"),
        Question(q: "Na którym kontynencie leży pustynia Kalahari?", a: ["W Afryce", "W Azji", "W Australii"], correctAnswer: "W Afryce"),
        Question(q: "Na terenie którego państwa leży pustania Atakama?", a: ["Argentyny", "Chile", "Ekwadoru"], correctAnswer: "Chile"),
        Question(q: "Jak nazywa sie stolica Wenezueli?", a: ["Santiago", "Quinto", "Caracas"], correctAnswer: "Caracas"),
        Question(q: "Jak nazywał się wenezuelski generał, dowódca walk o niepodległość wielu państw Ameryki Południowej w XIX wieku?", a: ["Simon Bolivar", "Juan Peron", "Ernesto Guevarra"], correctAnswer: "Simon Bolivar"),
        Question(q: "Jak nazywa się najwyższy wodospad na świecie?", a: ["Niagara", "Salto Angel", "Gullfoss"], correctAnswer: "Salto Angel"),
        Question(q: "Na której wyspie Morza Śródziemnego zaczęła kształtować się kultura minojska?", a: ["Korfu", "Rodos", "Krecie"], correctAnswer: "Krecie"),
        Question(q: "Lud 'Saami' to określenie mieszkańców jakiej krainy geograficznej?", a: ["Laponii", "Jakucji", "Gwinei"], correctAnswer: "Laponii"),
        Question(q: "'Karibu' to inna nazwa jakiego zwierzęcia?", a: ["Łosia", "Renifera", "Żubra"], correctAnswer: "Renifera"),
        Question(q: "Jak nazywała się rakieta którą Jurij Gagarin poleciał w przestrzeń kosmiczną?", a: ["Sputnik 4", "Saturn 1", "Wostok 1"], correctAnswer: "Wostok 1"),
        Question(q: "Na cześć którego astronoma nazwano prawa opisujące ruch planet wokół Słońca?", a: ["Jana Keplera", "Galileusza", "Michaela Maestlina"], correctAnswer: "Jana Keplera"),
        Question(q: "Jak nazywa się najdłuższa rzeka Azji?", a: ["Wołga", "Jangcy", "Huang He"], correctAnswer: "Jangcy"),
        Question(q: "W którym państwie leży miasto Kłajpeda?", a: ["W Rosji", "W Estonii", "Na Litwie"], correctAnswer: "Na Litwie"),
        Question(q: "Jak na początku XX wieku nazywano wojskowego, którego zadaniem było karmienie koni?", a: ["Furażer", "Marylek", "Huzar"], correctAnswer: "Furażer"),
        Question(q: "Kto jest autorem wiersza 'Uczę się ciebie człowieku...'?", a: ["Władysław Bełza", "Jerzy Liebert", "Czesław Miłosz"], correctAnswer: "Jerzy Liebert"),
        Question(q: "Jak nazywa się druga co wielkości pustynia świata?", a: ["Atakama", "Kalahari", "Gobi"], correctAnswer: "Gobi"),
        Question(q: "W którym kraju leży pustynia Takla Makan?", a: ["W Chinach", "W Mongolii", "W Kazachstanie"], correctAnswer: "W Chinach"),
        Question(q: "Który związek chemiczny jako pierwszy został powszechnie używany do celów dezynfekcyjnych?", a: ["Eter", "Fenol", "Ocet"], correctAnswer: "Fenol"),
        Question(q: "Co oznacza termin 'Homo habilis'?", a: ["Człowiek wyprostowany", "Człowiek myślący", "Człowiek zręczny"], correctAnswer: "Człowiek zręczny"),
        Question(q: "Który rodzaj drzew jest uważany za najbardziej długowieczny?", a: ["Sosna", "Dęb", "Sekwoja"], correctAnswer: "Sosna"),
        Question(q: "Jakie imię według mitologii egipskiej nosił bóg śmierci i Wielki Sędzia zmarłych?", a: ["Set", "Ozyrys", "Atum"], correctAnswer: "Ozyrys"),
        Question(q: "Jakie imię według mitologii egipskiej nosił bóg ciemności i chaosu?", a: ["Amon", "Anubis", "Set"], correctAnswer: "Set"),
        Question(q: "Jakie imię według mitologii egipskiej nosił bóg Księżyca i mądrości?", a: ["Thot", "Horus", "Tefnut"], correctAnswer: "Thot"),
        Question(q: "Co jest jednostką rezystancji w układzie SI?", a: ["Amper", "Om", "Kandela"], correctAnswer: "Om"),
        Question(q: "Co jest jednostką ładunku elektrycznego w układzie SI?", a: ["Volt", "Herc", "Kulomb"], correctAnswer: "Kulomb"),
        Question(q: "Co jest głównym składnikiem gazu ziemnego?", a: ["Metan", "Etan", "Propan"], correctAnswer: "Metan"),
        Question(q: "Jak nazywa się minimalna prędkość startowa, jaką musi mieć obiekt, aby mógł opuścić pole grawitacyjne danego ciała niebieskiego?", a: ["Prędkość dźwięku", "Prędkość ucieczki", "Prędkość przewagi"], correctAnswer: "Prędkość ucieczki"),
        Question(q: "Na ile oboli dzieliła się w starożytności drachma?", a: ["6", "48", "128"], correctAnswer: "6"),
        Question(q: "Czego jednostką jest rok świetlny?", a: ["Prędkości", "Czasu", "Odległości"], correctAnswer: "Odległości"),
        Question(q: "W którym hiszpańskim mieście znajduje się pałac Alhambra?", a: ["W Sewilli", "W Grenadzie", "W Kadyksie"], correctAnswer: "W Grenadzie"),
        Question(q: "Jak nazywała się waluta obowiązująca w Portugalii przed wprowadzeniem euro?", a: ["Peso", "Drachma", "Escudo"], correctAnswer: "Escudo"),
        Question(q: "Gdzie odbyły się pierwsze Zimowe Igrzyska Olimpijskie?", a: ["W Chamonix", "W Lake Placid", "W Grenoble"], correctAnswer: "W Chamonix"),
        Question(q: "Jak nazywa się największe miasto japońskiej wyspy Hokkaido?", a: ["Nagasaki", "Sapporo", "Tokio"], correctAnswer: "Sapporo"),
        Question(q: "Które miasto było poprzednią stolicą Japonii?", a: ["Hiroshima", "Sapporo", "Kioto"], correctAnswer: "Kioto"),
        Question(q: "Jak nazywał się satelita na pokładzie którego Łajka została wystrzelona na orbitę okołoziemską?", a: ["Sputnik 2", "Wostok 1", "Saturn 5"], correctAnswer: "Sputnik 2"),
        Question(q: "Kto jest uznawany za odkrywcę grup krwi?", a: ["Karol Linneusz", "Karol Landsteiner", "Emil von Dungern"], correctAnswer: "Karol Landsteiner"),
        Question(q: "W jakich komórkach zachodzi proces fotosyntezy?", a: ["Mitochondriach", "Synapsach", "Chloroplastach"], correctAnswer: "Chloroplastach"),
        Question(q: "Który pierwiastek chemiczny znany był dawniej pod nazwą 'tungsten'?", a: ["Wolfram", "Selen", "Arsen"], correctAnswer: "Wolfram"),
        Question(q: "W którym ludzkim narządzie znajduje się pętla Henlego?", a: ["W płucu", "W nerce", "W wątrobie"], correctAnswer: "W nerce"),
        Question(q: "W którym wieku została odkryta planeta Neptun?", a: ["XVII", "XXVIII", "XIX"], correctAnswer: "XIX"),
        Question(q: "Który słynny astronom jest odkrywcą planety Uran?", a: ["William Herschel", "Pierre Méchain", "Johann Encke"], correctAnswer: "William Herschel"),
        Question(q: "Jak nazywał się pierwszy produkowany seryjnie produkowany śmiegłowiec?", a: ["Bolkow Bo 105", "Sikorsky R-4", "Ka-52"], correctAnswer: "Sikorsky R-4"),
        Question(q: "Z czego są zbudowane morza księżycowe?", a: ["Z wapienia", "Z granitu", "Z bazaltu"], correctAnswer: "Z bazaltu"),
        Question(q: "Jak nazywała się waluta obowiązująca w Finlandii przed wprowadzeniem euro?", a: ["Marka", "Korona", "Saant"], correctAnswer: "Marka"),
        Question(q: "Które miasto jest stolicą Gotlandii?", a: ["Fårö", "Visby", "Sandön"], correctAnswer: "Visby"),
        Question(q: "Częścią którego narządu jest epiderma?", a: ["Oka", "Serca", "Skóry"], correctAnswer: "Skóry"),
        Question(q: "Jak nazywamy obłok gazów w koronie Słońca wyrzucany ponad chromosferę i spływający następnie ku jej powierzchni?", a: ["Proturberancja", "Asymptomatyczność", "Konwergencja"], correctAnswer: "Proturberancja"),
        Question(q: "Kto jest autorem fresku 'Stworzenie Adama'?", a: ["Leonadrdo Da Vinci", "Michał Anioł", "Rafael Santi"], correctAnswer: "Michał Anioł"),
        Question(q: "Jak nazywała się waluta obowiązująca w Austrii przed wprowadzeniem euro?", a: ["Marka", "Korona", "Szyling"], correctAnswer: "Szyling"),
        Question(q: "Jak nazywamy skalę logarytmiczną określającą wielkość trzęsienia ziemi na podstawie amplitudy drgań wstrząsów sejsmicznych?", a: ["Skala Richtera", "Skala Gutenberga", "Skala Hanksa"], correctAnswer: "Skala Richtera"),
        Question(q: "Kto odkrył szczepienia ochronne przeciwko ospie?", a: ["Ludwik Pasteur", "Edward Jenner", "James Phippis"], correctAnswer: "Edward Jenner"),
        Question(q: "Który z wymienionych artystów jest nazywany 'ojcem opery'?", a: ["Antonio Vivaldi", "Henry Purcell", "Claudio Monteverdi"], correctAnswer: "Claudio Monteverdi"),
        Question(q: "Jak w mitologii rzymskiej miała na imię bogini zorzy polarnej i świtu?", a: ["Aurora", "Apollina", "Boelia"], correctAnswer: "Aurora"),
        Question(q: "Jak miał na imię grecki bóg wiatru północnego?", a: ["Akwilon", "Boreasz", "Zefir"], correctAnswer: "Boreasz"),
        Question(q: "Odmianą jakiego minerału jest ametyst?", a: ["Kalcytu", "Halitu", "Kwarcu"], correctAnswer: "Kwarcu"),
        Question(q: "Odmianą jakiego minerału jest szmaragd?", a: ["Berylu", "Kalcytu", "Lazulitu"], correctAnswer: "Berylu"),
        Question(q: "Odmianą jakiego minerału jest szafir?", a: ["Barytu", "Korundu", "Jadeitu"], correctAnswer: "Korundu"),
        Question(q: "Czym jest ocelot?", a: ["Rybą", "Ptakiem", "Ssakiem"], correctAnswer: "Ssakiem"),
        Question(q: "Jak inaczej nazywa się wielbłąd dwugarbny?", a: ["Baktrian", "Dromader", "Tulu"], correctAnswer: "Baktrian"),
        Question(q: "Czego nazwami są Paricutin, Pinatubo i Zaō?", a: ["Jezior", "Wulkanów", "Łańcuchów górskich"], correctAnswer: "Wulkanów"),
        Question(q: "Co jest oceniane według skali Fujity?", a: ["Prędkość wiatru", "Temperatura magmy", "Intensywność tornad"], correctAnswer: "Intensywność tornad"),
        Question(q: "Co jest określane skalą Fischera-Sallera?", a: ["Kolor skóry", "Kolor oczu", "Kolor włosów"], correctAnswer: "Kolor włosów"),
        Question(q: "Jak nazywa się kawałek czerwonej materii przymocowany do krótkiej pałeczki, używany podczas korridy do drażnienia byka?", a: ["Muleta", "Tubelta", "Kamisa"], correctAnswer: "Muleta"),
        Question(q: "Jak nazywa się zaroślowa formacja roślinna charakterystyczna dla obszaru śródziemnomorskiego, kształtująca się zwykle w miejscach po usuniętych lasach twardolistnych?", a: ["Kosodrzewina", "Makia", "Frygia"], correctAnswer: "Makia"),
        Question(q: "Co jest największym zabytkiem religijnym na świecie?", a: ["Bazylika Królowej Pokoju", "Al-Masdżid al-Haram", "Angkor Wat"], correctAnswer: "Angkor Wat"),
        Question(q: "Jak nazywają się charakterystyczne, monolityczne posągi wykonane przez mieszkańców Wyspy Wielkanocnej z tufu wulkanicznego?", a: ["Moai", "Pukao", "Puna Pau"], correctAnswer: "Moai"),
        Question(q: "Jak nazywa się zabytek piśmiennictwa staroegipskiego, którego odkrycie miało przełomowe znaczenie dla odczytania egipskich hieroglifów?", a: ["Inskrypcja Myazedi", "Kamień z Rosetty", "Dekret z Kanopos"], correctAnswer: "Kamień z Rosetty"),
        Question(q: "Jak nazywa się jeden z dwóch głównych hinduistycznych poematów epickich (obok Ramajany), bardzo często uznawany za najdłuższy epos na świecie?", a: ["Upanishada", "Bharatha", "Mahabharata"], correctAnswer: "Mahabharata"),
        Question(q: "W którym roku odbyła się pierwsza ceremonia rozdania Oscarów?", a: ["1929", "1936", "1947"], correctAnswer: "1929"),
        Question(q: "Jak nazywa się dająca się formować, twardniejąca po wysuszeniu masa z rozdrobnionego i rozmiękczonego w wodzie papieru z dodatkiem substancji wiążących i konserwujących?", a: ["Papier encharté", "Papier mâché", "Papier vendola"], correctAnswer: "Papier mâché"),
        Question(q: "Kto jest autorem powieści 'Przypadki Robinsona Cruzoe'?", a: ["Herbert Wells", "William Turley", "Daniel Defoe"], correctAnswer: "Daniel Deofe"),
        Question(q: "Jak nazywa się hinduistyczne święto światła?", a: ["Diwali", "Okapi", "Lakszmi"], correctAnswer: "Diwali"),
        Question(q: "Który ludzki narząd składa się z części górnej, części zstępującej, części poziomej i części wstępującej?", a: ["Jelito grube", "Dwunastnica", "Trzustka"], correctAnswer: "Dwunastnica"),
        Question(q: "Który organ wydziela żłóć?", a: ["Nerki", "Trzustka", "Wątroba"], correctAnswer: "Wątroba"),
        Question(q: "Który wymarły rodzaj ryby mięśniopłetwej stanowi formę przejściową pomiędzy rybami i płazami?", a: ["Tiktaalik", "Eustenopteron", "Tertapodon"], correctAnswer: "Tiktaalik"),
        Question(q: "Jak nazywają sie najwieksze małpy zwierzokształtne?", a: ["Makaki", "Mandryle", "Orangutany"], correctAnswer: "Mandryle"),
        Question(q: "Jakim słowem określa się brunatne lub czarne zabarwienie skóry lub jej wytworów wynikające ze zwiększonej zawartości melaniny?", a: ["Albinizm", "Leucyzm", "Melanizm"], correctAnswer: "Melanizm"),
        Question(q: "Który naukowiec jako pierwszy zsyntetyzował aspirynę  w formę nadającą się do farmacutycznego stosowania?", a: ["Felix Hoffman", "Johann Buchner", "Karl Kraut"], correctAnswer: "Felix Hoffman"),
        Question(q: "Jak nazywa się największe drzewo na świecie?", a: ["Sir Manhoff", "General Sherman", "Tower Smith"], correctAnswer: "General Sherman"),
        Question(q: "Który bohater utworów Juliusza Słowackiego wypowiada słowa: 'Boże! Zdejm z mego serca jaskółczy niepokój, daj życiu duszę i cel duszy wyprorokuj'?", a: ["Balladyna", "Ksiądz Marek", "Kordian"], correctAnswer: "Kordian"),
        Question(q: "Które miasto jest stolicą Bahrajnu?", a: ["Manama", "Amman", "Muscat"], correctAnswer: "Manama"),
        Question(q: "Na bazie jakiego owocu przyrządany jest sos guacamole?", a: ["Mango", "Awokado", "Liczi"], correctAnswer: "Awokado"),
        Question(q: "W którym mieście została zawarta w 1385 roku Unia polsko - litewska?", a: ["W Lublinie", "W Horodle", "W Krewie"], correctAnswer: "W Krewie"),
        Question(q: "Kto wraz z Stefanem Banachem sformułował twierdzenie o paradoksalnym rozkładzie kuli?", a: ["Alfred Tarski", "Janusz Pawlikowski", "Otton Nikodym"], correctAnswer: "Alfred Tarski"),
        Question(q: "W którym amrekańskim mieście dodoszło do zamachu na prezydenta Johna F. Kennedy'ego?", a: ["W Bostonie", "W Dallas", "W Atlancie"], correctAnswer: "W Dallas"),
        Question(q: "Kto, według legendy, przeciął węzeł gordyjski?", a: ["Midas", "Achilles", "Aleksander Macedoński"], correctAnswer: "Aleksander Macedoński"),
        Question(q: "Który stan USA jest najmłodszy?", a: ["Hawaje", "Alaska", "Floryda"], correctAnswer: "Hawaje"),
        Question(q: "Kto wyreżyserował takie filmy jak 'Helikopter w ogniu' i 'Gladiator'?", a: ["Tim Burton", "Ridley Scott", "Oliver Stone"], correctAnswer: "Ridley Scott"),
        Question(q: "Który polski władca elekcyjny pochodził z Siedmiogrodu?", a: ["August II Mocny", "Henryk Walezy", "Stefan Batory"], correctAnswer: "Stefan Batory"),
        Question(q: "Którą fikcyjną postać stworzył Carlo Collodi?", a: ["Pinokio", "Tarzana", "Mufasę"], correctAnswer: "Pinokio"),
        Question(q: "Republika Dominikany współdzieli wyspę o nazwie 'Hispaniola' z którym państwem?", a: ["Belize", "Haiti", "Portoryko"], correctAnswer: "Haiti"),
        Question(q: "Która trująca ryba jest narodowym przysmakiem Japonii?", a: ["Lin", "Murena", "Fugu"], correctAnswer: "Fugu"),
        Question(q: "Jak nazywa się największy lądowy przedstawiciel rodziny łasicowatych?", a: ["Rosomak", "Tapir", "Olingo"], correctAnswer: "Rosomak"),
        Question(q: "Który jadowity wąż jest najdłuższy?", a: ["Czarna mamba", "Kobra królewska", "Tajpan pustynny"], correctAnswer: "Kobra królewska"),
        Question(q: "Jak nazywa się stolica Lichtensteinu?", a: ["Valetta", "Graz", "Vaduz"], correctAnswer: "Vaduz"),
        Question(q: "Który prezydent USA widnieje na banknocie jednodolarowym?", a: ["George Washington", "Benjamin Franklin", "Thomas Jefferson"], correctAnswer: "George Washington"),
        Question(q: "Wizerunek prezydenta USA Ulysses Granta widnieje na banknocie o jakim nominale?", a: ["20$", "50$", "100$"], correctAnswer: "50$"),
        Question(q: "Co widnieje na rewersie banknotu 20$?", a: ["Departament Skarbu", "Kapitol", "Biały Dom"], correctAnswer: "Biały Dom"),
        Question(q: "Które państwo jako pierwsze przyznało kobietom czynne prawo wyborcze?", a: ["Nowa Zelandia", "Szwajcaria", "USA"], correctAnswer: "Nowa Zelandia"),
        Question(q: "W którym mieście znajduje się stadion o nazwie 'Łużniki'", a: ["W Kijowie", "W Moskwie", "W Sofii"], correctAnswer: "W Moskwie"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Alaska?", a: ["Santa Fe", "Akutan", "Juneau"], correctAnswer: "Juneau"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Arizona?", a: ["Phoenix", "Dallas", "Sedona"], correctAnswer: "Phoenix"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Arkansas?", a: ["Fort Smith", "Little Rock", "Fayetteville"], correctAnswer: "Little Rock"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Connecticut?", a: ["Boston", "New Heaven", "Hartford"], correctAnswer: "Hartford"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Dakota Południowa?", a: ["Pierre", "Mitchell", "Aberdeen"], correctAnswer: "Pierre"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Dakota Północna?", a: ["Fargo", "Bismarck", "Grand Forks"], correctAnswer: "Bismarck"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Delaware?", a: ["Newark", "Seaford", "Dover"], correctAnswer: "Dover"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Floryda?", a: ["Tallahassee", "Orlando", "Tampa"], correctAnswer: "Tallahassee"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Georgia?", a: ["Duluth", "Atlanta", "Columbus"], correctAnswer: "Atlanta"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Idaho?", a: ["Twin Falls", "Nampa", "Boise"], correctAnswer: "Boise"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Illinois?", a: ["Springfield", "Chicago", "Peoria"], correctAnswer: "Springfield"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Indiana?", a: ["Bloomington", "Indianapolis", "Carmel"], correctAnswer: "Indianapolis"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Kalifornia?", a: ["San Francisco", "San Diego", "Sacramento"], correctAnswer: "Sacramento"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Kansas?", a: ["Topeka", "Kansas City", "Dodge City"], correctAnswer: "Topeka"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Kolorado?", a: ["Aspen", "Denver", "Colorado Springs"], correctAnswer: "Denver"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Luizjana?", a: ["Nowy Orlean", "Alexandria", "Baton Rouge"], correctAnswer: "Baton Rouge"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Maryland?", a: ["Annapolis", "Baltimore", "Salisbury"], correctAnswer: "Annapolis"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Michigan?", a: ["Detroit", "Lansing", "Flint"], correctAnswer: "Lansing"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Minnesota?", a: ["Minneapolis", "Eagan", "Saint Paul"], correctAnswer: "Saint Paul"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Missisipi?", a: ["Jackson", "Tupelo", "Oxford"], correctAnswer: "Jackson"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Nebraska?", a: ["Omaha", "Lincoln", "Hastings"], correctAnswer: "Lincoln"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Nevada?", a: ["Las Vegas", "Sparks", "Carson City"], correctAnswer: "Carson City"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Oregon?", a: ["Salem", "Portland", "Eugene"], correctAnswer: "Salem"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Waszyngton?", a: ["Waszyngton", "Olympia", "Helena"], correctAnswer: "Olympia"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Wirginia Zachodnia?", a: ["Elkins", "Weirton", "Charleston"], correctAnswer: "Charleston"),
        Question(q: "Jak nazywa się stolica amerykańskiego stanu Wyoming?", a: ["Cheyenne", "Casper", "Sheridan"], correctAnswer: "Cheyenne"),
        Question(q: "Jak nazywa się stolica kanadyjskiej prowincji Ontario?", a: ["Ottawa", "Toronto", "Quebec"], correctAnswer: "Toronto"),
        Question(q: "Jak nazywa się stolica kanadyjskiej prowincji Nowa Szkocja?", a: ["Cape Breton", "Halifax", "Digby"], correctAnswer: "Halifax"),
        Question(q: "Jak nazywa się stolica kanadyjskiej prowincji Alberta?", a: ["Calgary", "Airdrie", "Edmonton"], correctAnswer: "Edmonton"),
        Question(q: "Jak nazywa się stolicja kanadyjskiej prowincji Manitoba?", a: ["Winnipeg", "Brandon", "Winkler"], correctAnswer: "Winnipeg"),
        
        
        
        
    ]
    
    func getQuestionText() -> String {
        
        return     quiz[questionNumber].text
    }
    
    //Need a way of fetching the answer choices.
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionAsked) / 25
    }
    
    func getProgressMedium() -> Float {
        return Float(questionAsked) / 50
    }
    
    func getProgressLong() -> Float {
        return Float(questionAsked) / 100
    }
    
    mutating func resetGameQuestion() {
        if getMistake() >= 3  {
            questionNumber = Int(arc4random_uniform(530))
            score = 0
            mistakes = 0
            questionAsked = 0
            
            
        }
    }
    
    mutating func getMistake() -> Int {
        return mistakes
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion() {
        
        if questionAsked + 1 < 30 {
            questionNumber = Int(arc4random_uniform(530))
            questionAsked += 1
            
        }
        
        else {
            questionNumber = Int(arc4random_uniform(530))
            score = 0
            mistakes = 0
            questionAsked = 0
            
        }
    }
    
    mutating func nextQuestionMedium() {
        
        if questionAsked + 1 < 55 {
            questionNumber = Int(arc4random_uniform(530))
            questionAsked += 1
            
        }
        
        else {
            questionNumber = Int(arc4random_uniform(530))
            score = 0
            mistakes = 0
            questionAsked = 0
            
        }
    }
    
    mutating func nextQuestionLong() {
        
        if questionAsked + 1 < 105 {
            questionNumber = Int(arc4random_uniform(530))
            questionAsked += 1
            
        }
        
        else {
            questionNumber = Int(arc4random_uniform(530))
            score = 0
            mistakes = 0
            questionAsked = 0
            
        }
    }
    
    mutating func resetGame(userAnswer: String) -> Bool {
        
        if userAnswer != quiz[questionNumber].rightAnswer {
            mistakes += 1
            return true
        }
        else  {
            return false
        }
    }
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            
            return false
        }
        
    }
    
    
}




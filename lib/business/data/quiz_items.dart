import 'package:flamboyant/business/entities/alternativa.dart';
import 'package:flamboyant/business/entities/pergunta.dart';
import 'package:flamboyant/business/entities/quiz_item.dart';

List<QuizItem> quizItemsData = [
  QuizItem(
    plantaIdentificacao: 'pitanga',
    pergunta: Pergunta(
      descricao: "Qual nome ciêntifico da pitanga ?",
      alternativas: [
        Alternativa(
          descricao: 'Eugenia uniflora',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Nectandra megapotamica',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Peltophorum dubium',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Piptadenia gonoacantha',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'canelinha',
    pergunta: Pergunta(
      descricao:
          "Quais das alternativas corresponde a características reprodutivas ?",
      alternativas: [
        Alternativa(
          descricao: 'Diclámidea',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Monoclamídea',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Heteroclamídea',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Homoclamídea',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'canafistula',
    pergunta: Pergunta(
      descricao: "Qual tipo de inflorescência a canafístula possui ?",
      alternativas: [
        Alternativa(
          descricao: 'Capítulo',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Espádice',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Panícula',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Corimbo',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'pau-jacare',
    pergunta: Pergunta(
      descricao: "Qual família o pau-jacaré pertence?",
      alternativas: [
        Alternativa(
          descricao: 'Bignoniaceae',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Rubiaceae',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Apocynaceae',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Fabaceae',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'peroba-rosa',
    pergunta: Pergunta(
      descricao:
          "Qual objetivo das estruturas aladas das sementes da peroba-rosa?",
      alternativas: [
        Alternativa(
          descricao: 'Anatomia aerodinâmica que permite que  elas não voem',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Mecanismo de defesa contra predadores',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Auxiliar na dispersão pelo vento',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Auxiliar na germinação',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'guatambu',
    pergunta: Pergunta(
      descricao: "Qual tipo de nervura o guatambu possui?",
      alternativas: [
        Alternativa(
          descricao: 'Paralelinérvea',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Peninérvea',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Bipalelinérvia',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Mononérvia',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'jenipapo',
    pergunta: Pergunta(
      descricao: "Qual tipo de fruto o jenipapo apresenta ?",
      alternativas: [
        Alternativa(
          descricao: 'Legume',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Pepônio',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Drupa',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Baga',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'ipe-branco',
    pergunta: Pergunta(
      descricao: "o ipê branco possui folha:",
      alternativas: [
        Alternativa(
          descricao: 'composta bifoliolada',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'composta trifoliolada',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'simples trifoliolada',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'simples bifoliolada',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'inga-ferradura',
    pergunta: Pergunta(
      descricao: "Quais alternativas estão incorretas sobre o ingá-ferradura ?",
      alternativas: [
        Alternativa(
          descricao: 'Zigomorfa',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Ovário ínfero',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Sem estípulas',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Folha pilosa sem tricomas ferrugíneos',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'jequitiba-rosa',
    pergunta: Pergunta(
      descricao:
          "Quais alternativas correspondem as carcterísticas do jequitibá-rosa ?",
      alternativas: [
        Alternativa(
          descricao: 'Casca interna rosa',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Fruto pixídio deiscente',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Filotaxia alterna',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Folhas com base revoluta',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'canchim',
    pergunta: Pergunta(
      descricao: "Quais as características foliares do canchim ?",
      alternativas: [
        Alternativa(
          descricao: 'Folha simples',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Filotaxia alterna',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Margem dentada',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Sem estípilas',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'angico-branco',
    pergunta: Pergunta(
      descricao: "Qual a função do nectário extrafloral ?",
      alternativas: [
        Alternativa(
          descricao: 'Estruturas secretoras de néctar',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Estruturas secretoras de latex',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Estruturas secretoras de seiva',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Estruturas secretoras de terebentina',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'solanum-prata',
    pergunta: Pergunta(
      descricao: "Qual a coloração da face abaxial do limbo?",
      alternativas: [
        Alternativa(
          descricao: 'amarelo',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'verde claro',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'verde escuro',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'prata',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'abrico-de-macaco',
    pergunta: Pergunta(
      descricao: "Quais características estão corretas ?",
      alternativas: [
        Alternativa(
          descricao: 'Sem estípulas',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Filotaxia oposta',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Androceu polistêmone',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Folha simples',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'tamboril',
    pergunta: Pergunta(
      descricao: "Qual é o formato do fruto do tamboril ?",
      alternativas: [
        Alternativa(
          descricao: 'Coração',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Redondo',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'quadrado',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'orelha',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'guarita',
    pergunta: Pergunta(
      descricao: "Qual odor característico do guaritá ?",
      alternativas: [
        Alternativa(
          descricao: 'Rosas',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Manga',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Eucalipto',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Terebentina',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'jatoba',
    pergunta: Pergunta(
      descricao: "Quais alternativas estão incorretas sobre o jatobá ?",
      alternativas: [
        Alternativa(
          descricao: 'Sem estípulas',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Filotaxia oposta',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Flores zigomorfas',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Homoclamídeas',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'arariba',
    pergunta: Pergunta(
      descricao: "O meio de dispersão o araribá ocorre através ?",
      alternativas: [
        Alternativa(
          descricao: 'Cobras',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Vento',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Macacos',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Girafas',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'pau-brasil',
    pergunta: Pergunta(
      descricao:
          "O pau-brasil etá localizado fortemente em qual bioma brasileiro ?",
      alternativas: [
        Alternativa(
          descricao: 'Mata atlântica',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Cerrado',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Caatinga',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Pampa',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'pata-de-vaca-de-espinho',
    pergunta: Pergunta(
      descricao: "Qual nome ciêntifico da pata-de-vaca-de-espinho ?",
      alternativas: [
        Alternativa(
          descricao: 'Bauhinia forficata ',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Bauhinia acuruana',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Bauhinia acreana',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Bauhinia variegata',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'paineira',
    pergunta: Pergunta(
      descricao: "Quais características a paineira não possui ?",
      alternativas: [
        Alternativa(
          descricao: 'Actinomorfa',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Gineceu pluricarpelar',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Androceu polistêmone',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Fruto cápsula',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'aroeira-pimenteira',
    pergunta: Pergunta(
      descricao: "Aroeira-pimenteria possui a mesma família de qual espécie ?",
      alternativas: [
        Alternativa(
          descricao: 'Luehea divaricata',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Trichilia catingua',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Myracrodruon urundeuva',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Coccoloba cordifolia',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'acoita-cavalo',
    pergunta: Pergunta(
      descricao:
          "Quais das alternativas não são verdadeira sobre o açoita-cavalo ?",
      alternativas: [
        Alternativa(
          descricao: 'Folha composta',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Filotaxia oposta',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Ovário súpero',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Fruto cápsula',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'aroeira-verdadeira',
    pergunta: Pergunta(
      descricao:
          " A aroeira verdadedeira possui propriedades medicinais contra:",
      alternativas: [
        Alternativa(
          descricao: 'Hipertensão',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Cicatrizante',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Febres',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Bronquite',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'catigua',
    pergunta: Pergunta(
      descricao: " A semente do catiguá apresenta na sua estrutura:",
      alternativas: [
        Alternativa(
          descricao: 'Óleos essenciais',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Arilo',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Cor prata',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Látex',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'arbusto-escandente',
    pergunta: Pergunta(
      descricao: "Qual  anexo foliar o arbusto escandente possui ?",
      alternativas: [
        Alternativa(
          descricao: 'Pulvino',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Estípula',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Lígula',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Ócrea',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'ipe-amarelo',
    pergunta: Pergunta(
      descricao: "Quais alternativas estão corretas sobre o ipê-amarelo  ?",
      alternativas: [
        Alternativa(
          descricao: 'Heteroclamídea',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Androceu oligostêmone',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Actinomorfa',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Ovário Ínfero',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'pau-marfim',
    pergunta: Pergunta(
      descricao: "Quais alternativas estão corretas sobre o pau-marfim  ?",
      alternativas: [
        Alternativa(
          descricao: 'Androceu polistêmone',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Fruto drupa',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Domácias',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Actinomorfa',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'clausena-excavata',
    pergunta: Pergunta(
      descricao:
          "Quais alternativas apresentam caractéristicas vegetativas da clausena excavata ?",
      alternativas: [
        Alternativa(
          descricao: 'Fólios de base equilátera',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Folha simples',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Fruto drupa',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Glândulas translúcidas',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'fumo-bravo',
    pergunta: Pergunta(
      descricao: "Quais das alternavas estão corretas ?",
      alternativas: [
        Alternativa(
          descricao: 'Flores são hermafroditas em forma de estrela',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Flores são hermafroditas em forma de coração',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Fruto deiscente',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Fruto indeiscente',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'cereja-do-rio-grande',
    pergunta: Pergunta(
      descricao:
          "Quais alternativas estão incorretas sobre a ereja-do-rio-grande?",
      alternativas: [
        Alternativa(
          descricao: 'Frutos são bagas piriformes',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Flores são hermafroditas',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Frutos apresentam forma obovada"',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Filotaxia alterna',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'bauhinia-bongardii',
    pergunta: Pergunta(
      descricao: "Qual a forma característica do limbo da Bauhinia bongardii ?",
      alternativas: [
        Alternativa(
          descricao: 'Lanceolada',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Oval',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Coração"',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Pata de vaca',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'cafe-de-bugre',
    pergunta: Pergunta(
      descricao: "Qual o tipo de inflorescência o café de bugre possui ?",
      alternativas: [
        Alternativa(
          descricao: 'Capítulo',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Racemo',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Carimbo"',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Umbela',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'coite',
    pergunta: Pergunta(
      descricao: "Quais alternativas corresponde corretamente sobre o coité ?",
      alternativas: [
        Alternativa(
          descricao: 'Frutos são pequenos e esféricos',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Frutos são grandes e esféricos',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: '"Lâmina tem forma espatulada"',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: '"Lâmina tem forma lanceolada',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'sansao-do-campo',
    pergunta: Pergunta(
      descricao:
          "Quais alternativas corresponde incorretamente sobre o sansão do campo ?",
      alternativas: [
        Alternativa(
          descricao: 'Composta pinada',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Sem estípula',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: '"Composta bipinada"',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: '"Com estípula',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'cocao',
    pergunta: Pergunta(
      descricao: "A qual família o cocão pertence ?",
      alternativas: [
        Alternativa(
          descricao: 'Erythroxylaceae',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: 'Malvaceae',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: '"Fabaceae-Caesalpinioideae"',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: '"Bignoniaceae',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'pau-rei',
    pergunta: Pergunta(
      descricao: "Qual o nome científico do pau rei ?",
      alternativas: [
        Alternativa(
          descricao: 'Piptadenia gonoacantha',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Peltophorum dubium',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: '"Pterygota brasiliensis"',
          verdadeiro: true,
        ),
        Alternativa(
          descricao: '"Pachystroma longifolium',
          verdadeiro: false,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'bacupari-mirim',
    pergunta: Pergunta(
      descricao: "Qual o nome científico do bacupari-mirim ?",
      alternativas: [
        Alternativa(
          descricao: 'Cordia ecalyculata',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Handroanthus chrysotrichus',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: '"Pterygota brasiliensis"',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: '"Garcinia gardneriana',
          verdadeiro: true,
        ),
      ],
    ),
  ),
  QuizItem(
    plantaIdentificacao: 'babosa-branca',
    pergunta: Pergunta(
      descricao: "Qual família a babosa-branca pertence ?",
      alternativas: [
        Alternativa(
          descricao: 'Lecythidaceae',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: 'Polygonaceae',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: '"Bignoniaceae"',
          verdadeiro: false,
        ),
        Alternativa(
          descricao: '"Boraginaceae',
          verdadeiro: true,
        ),
      ],
    ),
  ),
];

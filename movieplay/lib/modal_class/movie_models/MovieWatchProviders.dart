// class MovieWatchProviders {
//   int? id;
//   Results? results;

//   MovieWatchProviders({this.id, this.results});

//   MovieWatchProviders.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     results =
//         json['results'] != null ? new Results.fromJson(json['results']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     if (this.results != null) {
//       data['results'] = this.results!.toJson();
//     }
//     return data;
//   }
// }

// class Results {
//   AR? aR;
//   AT? aT;
//   AR? aU;
//   AR? bE;
//   AR? bR;
//   AR? cA;
//   AR? cH;
//   AR? cL;
//   AR? cO;
//   AR? cZ;
//   AT? dE;
//   AR? dK;
//   AR? eC;
//   AR? eE;
//   AR? eS;
//   AR? fI;
//   AR? fR;
//   AR? gB;
//   AR? gR;
//   AR? hU;
//   AR? iD;
//   AR? iE;
//   AR? iN;
//   AR? iT;
//   AR? jP;
//   AR? kR;
//   LT? lT;
//   LT? lV;
//   AR? mX;
//   AR? mY;
//   AR? nL;
//   AR? nO;
//   AR? nZ;
//   AR? pE;
//   AR? pH;
//   AR? pL;
//   AR? pT;
//   RO? rO;
//   AR? rU;
//   AR? sE;
//   AR? sG;
//   AR? tH;
//   AR? tR;
//   AR? uS;
//   AR? vE;
//   AR? zA;

//   Results(
//       {this.aR,
//       this.aT,
//       this.aU,
//       this.bE,
//       this.bR,
//       this.cA,
//       this.cH,
//       this.cL,
//       this.cO,
//       this.cZ,
//       this.dE,
//       this.dK,
//       this.eC,
//       this.eE,
//       this.eS,
//       this.fI,
//       this.fR,
//       this.gB,
//       this.gR,
//       this.hU,
//       this.iD,
//       this.iE,
//       this.iN,
//       this.iT,
//       this.jP,
//       this.kR,
//       this.lT,
//       this.lV,
//       this.mX,
//       this.mY,
//       this.nL,
//       this.nO,
//       this.nZ,
//       this.pE,
//       this.pH,
//       this.pL,
//       this.pT,
//       this.rO,
//       this.rU,
//       this.sE,
//       this.sG,
//       this.tH,
//       this.tR,
//       this.uS,
//       this.vE,
//       this.zA});

//   Results.fromJson(Map<String, dynamic> json) {
//     aR = json['AR'] != null ? new AR.fromJson(json['AR']) : null;
//     aT = json['AT'] != null ? new AT.fromJson(json['AT']) : null;
//     aU = json['AU'] != null ? new AR.fromJson(json['AU']) : null;
//     bE = json['BE'] != null ? new AR.fromJson(json['BE']) : null;
//     bR = json['BR'] != null ? new AR.fromJson(json['BR']) : null;
//     cA = json['CA'] != null ? new AR.fromJson(json['CA']) : null;
//     cH = json['CH'] != null ? new AR.fromJson(json['CH']) : null;
//     cL = json['CL'] != null ? new AR.fromJson(json['CL']) : null;
//     cO = json['CO'] != null ? new AR.fromJson(json['CO']) : null;
//     cZ = json['CZ'] != null ? new AR.fromJson(json['CZ']) : null;
//     dE = json['DE'] != null ? new AT.fromJson(json['DE']) : null;
//     dK = json['DK'] != null ? new AR.fromJson(json['DK']) : null;
//     eC = json['EC'] != null ? new AR.fromJson(json['EC']) : null;
//     eE = json['EE'] != null ? new AR.fromJson(json['EE']) : null;
//     eS = json['ES'] != null ? new AR.fromJson(json['ES']) : null;
//     fI = json['FI'] != null ? new AR.fromJson(json['FI']) : null;
//     fR = json['FR'] != null ? new AR.fromJson(json['FR']) : null;
//     gB = json['GB'] != null ? new AR.fromJson(json['GB']) : null;
//     gR = json['GR'] != null ? new AR.fromJson(json['GR']) : null;
//     hU = json['HU'] != null ? new AR.fromJson(json['HU']) : null;
//     iD = json['ID'] != null ? new AR.fromJson(json['ID']) : null;
//     iE = json['IE'] != null ? new AR.fromJson(json['IE']) : null;
//     iN = json['IN'] != null ? new AR.fromJson(json['IN']) : null;
//     iT = json['IT'] != null ? new AR.fromJson(json['IT']) : null;
//     jP = json['JP'] != null ? new AR.fromJson(json['JP']) : null;
//     kR = json['KR'] != null ? new AR.fromJson(json['KR']) : null;
//     lT = json['LT'] != null ? new LT.fromJson(json['LT']) : null;
//     lV = json['LV'] != null ? new LT.fromJson(json['LV']) : null;
//     mX = json['MX'] != null ? new AR.fromJson(json['MX']) : null;
//     mY = json['MY'] != null ? new AR.fromJson(json['MY']) : null;
//     nL = json['NL'] != null ? new AR.fromJson(json['NL']) : null;
//     nO = json['NO'] != null ? new AR.fromJson(json['NO']) : null;
//     nZ = json['NZ'] != null ? new AR.fromJson(json['NZ']) : null;
//     pE = json['PE'] != null ? new AR.fromJson(json['PE']) : null;
//     pH = json['PH'] != null ? new AR.fromJson(json['PH']) : null;
//     pL = json['PL'] != null ? new AR.fromJson(json['PL']) : null;
//     pT = json['PT'] != null ? new AR.fromJson(json['PT']) : null;
//     rO = json['RO'] != null ? new RO.fromJson(json['RO']) : null;
//     rU = json['RU'] != null ? new AR.fromJson(json['RU']) : null;
//     sE = json['SE'] != null ? new AR.fromJson(json['SE']) : null;
//     sG = json['SG'] != null ? new AR.fromJson(json['SG']) : null;
//     tH = json['TH'] != null ? new AR.fromJson(json['TH']) : null;
//     tR = json['TR'] != null ? new AR.fromJson(json['TR']) : null;
//     uS = json['US'] != null ? new AR.fromJson(json['US']) : null;
//     vE = json['VE'] != null ? new AR.fromJson(json['VE']) : null;
//     zA = json['ZA'] != null ? new AR.fromJson(json['ZA']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.aR != null) {
//       data['AR'] = this.aR!.toJson();
//     }
//     if (this.aT != null) {
//       data['AT'] = this.aT!.toJson();
//     }
//     if (this.aU != null) {
//       data['AU'] = this.aU!.toJson();
//     }
//     if (this.bE != null) {
//       data['BE'] = this.bE!.toJson();
//     }
//     if (this.bR != null) {
//       data['BR'] = this.bR!.toJson();
//     }
//     if (this.cA != null) {
//       data['CA'] = this.cA!.toJson();
//     }
//     if (this.cH != null) {
//       data['CH'] = this.cH!.toJson();
//     }
//     if (this.cL != null) {
//       data['CL'] = this.cL!.toJson();
//     }
//     if (this.cO != null) {
//       data['CO'] = this.cO!.toJson();
//     }
//     if (this.cZ != null) {
//       data['CZ'] = this.cZ!.toJson();
//     }
//     if (this.dE != null) {
//       data['DE'] = this.dE!.toJson();
//     }
//     if (this.dK != null) {
//       data['DK'] = this.dK!.toJson();
//     }
//     if (this.eC != null) {
//       data['EC'] = this.eC!.toJson();
//     }
//     if (this.eE != null) {
//       data['EE'] = this.eE!.toJson();
//     }
//     if (this.eS != null) {
//       data['ES'] = this.eS!.toJson();
//     }
//     if (this.fI != null) {
//       data['FI'] = this.fI!.toJson();
//     }
//     if (this.fR != null) {
//       data['FR'] = this.fR!.toJson();
//     }
//     if (this.gB != null) {
//       data['GB'] = this.gB!.toJson();
//     }
//     if (this.gR != null) {
//       data['GR'] = this.gR!.toJson();
//     }
//     if (this.hU != null) {
//       data['HU'] = this.hU!.toJson();
//     }
//     if (this.iD != null) {
//       data['ID'] = this.iD!.toJson();
//     }
//     if (this.iE != null) {
//       data['IE'] = this.iE!.toJson();
//     }
//     if (this.iN != null) {
//       data['IN'] = this.iN!.toJson();
//     }
//     if (this.iT != null) {
//       data['IT'] = this.iT!.toJson();
//     }
//     if (this.jP != null) {
//       data['JP'] = this.jP!.toJson();
//     }
//     if (this.kR != null) {
//       data['KR'] = this.kR!.toJson();
//     }
//     if (this.lT != null) {
//       data['LT'] = this.lT!.toJson();
//     }
//     if (this.lV != null) {
//       data['LV'] = this.lV!.toJson();
//     }
//     if (this.mX != null) {
//       data['MX'] = this.mX!.toJson();
//     }
//     if (this.mY != null) {
//       data['MY'] = this.mY!.toJson();
//     }
//     if (this.nL != null) {
//       data['NL'] = this.nL!.toJson();
//     }
//     if (this.nO != null) {
//       data['NO'] = this.nO!.toJson();
//     }
//     if (this.nZ != null) {
//       data['NZ'] = this.nZ!.toJson();
//     }
//     if (this.pE != null) {
//       data['PE'] = this.pE!.toJson();
//     }
//     if (this.pH != null) {
//       data['PH'] = this.pH!.toJson();
//     }
//     if (this.pL != null) {
//       data['PL'] = this.pL!.toJson();
//     }
//     if (this.pT != null) {
//       data['PT'] = this.pT!.toJson();
//     }
//     if (this.rO != null) {
//       data['RO'] = this.rO!.toJson();
//     }
//     if (this.rU != null) {
//       data['RU'] = this.rU!.toJson();
//     }
//     if (this.sE != null) {
//       data['SE'] = this.sE!.toJson();
//     }
//     if (this.sG != null) {
//       data['SG'] = this.sG!.toJson();
//     }
//     if (this.tH != null) {
//       data['TH'] = this.tH!.toJson();
//     }
//     if (this.tR != null) {
//       data['TR'] = this.tR!.toJson();
//     }
//     if (this.uS != null) {
//       data['US'] = this.uS!.toJson();
//     }
//     if (this.vE != null) {
//       data['VE'] = this.vE!.toJson();
//     }
//     if (this.zA != null) {
//       data['ZA'] = this.zA!.toJson();
//     }
//     return data;
//   }
// }

// class AR {
//   String? link;
//   List<Flatrate>? flatrate;
//   List<Rent>? rent;
//   List<Buy>? buy;

//   AR({this.link, this.flatrate, this.rent, this.buy});

//   AR.fromJson(Map<String, dynamic> json) {
//     link = json['link'];
//     if (json['flatrate'] != null) {
//       flatrate = <Flatrate>[];
//       json['flatrate'].forEach((v) {
//         flatrate!.add(new Flatrate.fromJson(v));
//       });
//     }
//     if (json['rent'] != null) {
//       rent = <Rent>[];
//       json['rent'].forEach((v) {
//         rent!.add(new Rent.fromJson(v));
//       });
//     }
//     if (json['buy'] != null) {
//       buy = <Buy>[];
//       json['buy'].forEach((v) {
//         buy!.add(new Buy.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['link'] = this.link;
//     if (this.flatrate != null) {
//       data['flatrate'] = this.flatrate!.map((v) => v.toJson()).toList();
//     }
//     if (this.rent != null) {
//       data['rent'] = this.rent!.map((v) => v.toJson()).toList();
//     }
//     if (this.buy != null) {
//       data['buy'] = this.buy!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Flatrate {
//   int? displayPriority;
//   String? logoPath;
//   int? providerId;
//   String? providerName;

//   Flatrate(
//       {this.displayPriority,
//       this.logoPath,
//       this.providerId,
//       this.providerName});

//   Flatrate.fromJson(Map<String, dynamic> json) {
//     displayPriority = json['display_priority'];
//     logoPath = json['logo_path'];
//     providerId = json['provider_id'];
//     providerName = json['provider_name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['display_priority'] = this.displayPriority;
//     data['logo_path'] = this.logoPath;
//     data['provider_id'] = this.providerId;
//     data['provider_name'] = this.providerName;
//     return data;
//   }
// }

// class AT {
//   String? link;
//   List<Rent>? rent;
//   List<Buy>? buy;

//   AT({this.link, this.rent, this.buy});

//   AT.fromJson(Map<String, dynamic> json) {
//     link = json['link'];
//     if (json['rent'] != null) {
//       rent = <Rent>[];
//       json['rent'].forEach((v) {
//         rent!.add(new Rent.fromJson(v));
//       });
//     }
//     if (json['buy'] != null) {
//       buy = <Buy>[];
//       json['buy'].forEach((v) {
//         buy!.add(new Buy.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['link'] = this.link;
//     if (this.rent != null) {
//       data['rent'] = this.rent!.map((v) => v.toJson()).toList();
//     }
//     if (this.buy != null) {
//       data['buy'] = this.buy!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class LT {
//   String? link;
//   List<Buy>? buy;
//   List<Flatrate>? flatrate;

//   LT({this.link, this.buy, this.flatrate});

//   LT.fromJson(Map<String, dynamic> json) {
//     link = json['link'];
//     if (json['buy'] != null) {
//       buy = <Buy>[];
//       json['buy'].forEach((v) {
//         buy!.add(new Buy.fromJson(v));
//       });
//     }
//     if (json['flatrate'] != null) {
//       flatrate = <Flatrate>[];
//       json['flatrate'].forEach((v) {
//         flatrate!.add(new Flatrate.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['link'] = this.link;
//     if (this.buy != null) {
//       data['buy'] = this.buy!.map((v) => v.toJson()).toList();
//     }
//     if (this.flatrate != null) {
//       data['flatrate'] = this.flatrate!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class RO {
//   String? link;
//   List<Flatrate>? flatrate;

//   RO({this.link, this.flatrate});

//   RO.fromJson(Map<String, dynamic> json) {
//     link = json['link'];
//     if (json['flatrate'] != null) {
//       flatrate = <Flatrate>[];
//       json['flatrate'].forEach((v) {
//         flatrate!.add(new Flatrate.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['link'] = this.link;
//     if (this.flatrate != null) {
//       data['flatrate'] = this.flatrate!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

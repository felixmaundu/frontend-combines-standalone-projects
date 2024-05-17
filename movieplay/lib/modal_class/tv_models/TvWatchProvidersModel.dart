// class TvWatchProvidersModel {
//   int? id;
//   Results? results;

//   TvWatchProvidersModel({this.id, this.results});

//   TvWatchProvidersModel.fromJson(Map<String, dynamic> json) {
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
//   AT? aU;
//   AR? bE;
//   AR? bR;
//   AT? cA;
//   AT? cH;
//   AR? cL;
//   AR? cO;
//   AR? cZ;
//   AT? dE;
//   AT? dK;
//   AR? eC;
//   AR? eS;
//   AT? fI;
//   AT? fR;
//   AT? gB;
//   AR? hU;
//   AT? iE;
//   AR? iN;
//   IT? iT;
//   JP? jP;
//   AT? mX;
//   AR? nL;
//   AT? nO;
//   AR? nZ;
//   AR? pE;
//   PL? pL;
//   AR? pT;
//   AR? rO;
//   RU? rU;
//   AT? sE;
//   AR? tR;
//   AT? uS;
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
//       this.eS,
//       this.fI,
//       this.fR,
//       this.gB,
//       this.hU,
//       this.iE,
//       this.iN,
//       this.iT,
//       this.jP,
//       this.mX,
//       this.nL,
//       this.nO,
//       this.nZ,
//       this.pE,
//       this.pL,
//       this.pT,
//       this.rO,
//       this.rU,
//       this.sE,
//       this.tR,
//       this.uS,
//       this.vE,
//       this.zA});

//   Results.fromJson(Map<String, dynamic> json) {
//     aR = json['AR'] != null ? new AR.fromJson(json['AR']) : null;
//     aT = json['AT'] != null ? new AT.fromJson(json['AT']) : null;
//     aU = json['AU'] != null ? new AT.fromJson(json['AU']) : null;
//     bE = json['BE'] != null ? new AR.fromJson(json['BE']) : null;
//     bR = json['BR'] != null ? new AR.fromJson(json['BR']) : null;
//     cA = json['CA'] != null ? new AT.fromJson(json['CA']) : null;
//     cH = json['CH'] != null ? new AT.fromJson(json['CH']) : null;
//     cL = json['CL'] != null ? new AR.fromJson(json['CL']) : null;
//     cO = json['CO'] != null ? new AR.fromJson(json['CO']) : null;
//     cZ = json['CZ'] != null ? new AR.fromJson(json['CZ']) : null;
//     dE = json['DE'] != null ? new AT.fromJson(json['DE']) : null;
//     dK = json['DK'] != null ? new AT.fromJson(json['DK']) : null;
//     eC = json['EC'] != null ? new AR.fromJson(json['EC']) : null;
//     eS = json['ES'] != null ? new AR.fromJson(json['ES']) : null;
//     fI = json['FI'] != null ? new AT.fromJson(json['FI']) : null;
//     fR = json['FR'] != null ? new AT.fromJson(json['FR']) : null;
//     gB = json['GB'] != null ? new AT.fromJson(json['GB']) : null;
//     hU = json['HU'] != null ? new AR.fromJson(json['HU']) : null;
//     iE = json['IE'] != null ? new AT.fromJson(json['IE']) : null;
//     iN = json['IN'] != null ? new AR.fromJson(json['IN']) : null;
//     iT = json['IT'] != null ? new IT.fromJson(json['IT']) : null;
//     jP = json['JP'] != null ? new JP.fromJson(json['JP']) : null;
//     mX = json['MX'] != null ? new AT.fromJson(json['MX']) : null;
//     nL = json['NL'] != null ? new AR.fromJson(json['NL']) : null;
//     nO = json['NO'] != null ? new AT.fromJson(json['NO']) : null;
//     nZ = json['NZ'] != null ? new AR.fromJson(json['NZ']) : null;
//     pE = json['PE'] != null ? new AR.fromJson(json['PE']) : null;
//     pL = json['PL'] != null ? new PL.fromJson(json['PL']) : null;
//     pT = json['PT'] != null ? new AR.fromJson(json['PT']) : null;
//     rO = json['RO'] != null ? new AR.fromJson(json['RO']) : null;
//     rU = json['RU'] != null ? new RU.fromJson(json['RU']) : null;
//     sE = json['SE'] != null ? new AT.fromJson(json['SE']) : null;
//     tR = json['TR'] != null ? new AR.fromJson(json['TR']) : null;
//     uS = json['US'] != null ? new AT.fromJson(json['US']) : null;
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
//     if (this.hU != null) {
//       data['HU'] = this.hU!.toJson();
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
//     if (this.mX != null) {
//       data['MX'] = this.mX!.toJson();
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

//   AR({this.link, this.flatrate});

//   AR.fromJson(Map<String, dynamic> json) {
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
//   List<Buy>? buy;
//   List<Flatrate>? flatrate;

//   AT({this.link, this.buy, this.flatrate});

//   AT.fromJson(Map<String, dynamic> json) {
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

// class IT {
//   String? link;
//   List<Ads>? ads;
//   List<Flatrate>? flatrate;
//   List<Buy>? buy;

//   IT({this.link, this.ads, this.flatrate, this.buy});

//   IT.fromJson(Map<String, dynamic> json) {
//     link = json['link'];
//     if (json['ads'] != null) {
//       ads = <Ads>[];
//       json['ads'].forEach((v) {
//         ads!.add(new Ads.fromJson(v));
//       });
//     }
//     if (json['flatrate'] != null) {
//       flatrate = <Flatrate>[];
//       json['flatrate'].forEach((v) {
//         flatrate!.add(new Flatrate.fromJson(v));
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
//     if (this.ads != null) {
//       data['ads'] = this.ads!.map((v) => v.toJson()).toList();
//     }
//     if (this.flatrate != null) {
//       data['flatrate'] = this.flatrate!.map((v) => v.toJson()).toList();
//     }
//     if (this.buy != null) {
//       data['buy'] = this.buy!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class JP {
//   String? link;
//   List<Rent>? rent;
//   List<Flatrate>? flatrate;
//   List<Buy>? buy;

//   JP({this.link, this.rent, this.flatrate, this.buy});

//   JP.fromJson(Map<String, dynamic> json) {
//     link = json['link'];
//     if (json['rent'] != null) {
//       rent = <Rent>[];
//       json['rent'].forEach((v) {
//         rent!.add(new Rent.fromJson(v));
//       });
//     }
//     if (json['flatrate'] != null) {
//       flatrate = <Flatrate>[];
//       json['flatrate'].forEach((v) {
//         flatrate!.add(new Flatrate.fromJson(v));
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
//     if (this.flatrate != null) {
//       data['flatrate'] = this.flatrate!.map((v) => v.toJson()).toList();
//     }
//     if (this.buy != null) {
//       data['buy'] = this.buy!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class PL {
//   String? link;
//   List<Flatrate>? flatrate;
//   List<Ads>? ads;

//   PL({this.link, this.flatrate, this.ads});

//   PL.fromJson(Map<String, dynamic> json) {
//     link = json['link'];
//     if (json['flatrate'] != null) {
//       flatrate = <Flatrate>[];
//       json['flatrate'].forEach((v) {
//         flatrate!.add(new Flatrate.fromJson(v));
//       });
//     }
//     if (json['ads'] != null) {
//       ads = <Ads>[];
//       json['ads'].forEach((v) {
//         ads!.add(new Ads.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['link'] = this.link;
//     if (this.flatrate != null) {
//       data['flatrate'] = this.flatrate!.map((v) => v.toJson()).toList();
//     }
//     if (this.ads != null) {
//       data['ads'] = this.ads!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class RU {
//   String? link;
//   List<Flatrate>? flatrate;
//   List<Free>? free;

//   RU({this.link, this.flatrate, this.free});

//   RU.fromJson(Map<String, dynamic> json) {
//     link = json['link'];
//     if (json['flatrate'] != null) {
//       flatrate = <Flatrate>[];
//       json['flatrate'].forEach((v) {
//         flatrate!.add(new Flatrate.fromJson(v));
//       });
//     }
//     if (json['free'] != null) {
//       free = <Free>[];
//       json['free'].forEach((v) {
//         free!.add(new Free.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['link'] = this.link;
//     if (this.flatrate != null) {
//       data['flatrate'] = this.flatrate!.map((v) => v.toJson()).toList();
//     }
//     if (this.free != null) {
//       data['free'] = this.free!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

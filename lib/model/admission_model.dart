class AdmissionModel {
  String? instid;
  String? stdid;
  String? stdnam;
  String? stdcadr;
  String? stdpadr;
  String? fathnam;
  String? mothnam;
  String? birthdat;
  String? birthno;
  String? gendid;
  String? stdmob;
  String? guarmob;
  String? stdmail;
  String? previnst;
  String? fathnid;
  String? guarnam;
  String? fathmob;
  String? mothmob;
  String? clsid;
  String? secid;

  AdmissionModel({
    this.instid,
    this.stdid,
    this.stdnam,
    this.stdcadr,
    this.stdpadr,
    this.fathnam,
    this.mothnam,
    this.birthdat,
    this.birthno,
    this.gendid,
    this.stdmob,
    this.guarmob,
    this.stdmail,
    this.previnst,
    this.fathnid,
    this.guarnam,
    this.fathmob,
    this.mothmob,
    this.clsid,
    this.secid,
  });

  AdmissionModel.fromJson(Map<String, dynamic> json) {
    instid = json['instid'];
    stdid = json['stdid'];
    stdnam = json['stdnam'];
    stdcadr = json['stdcadr'];
    stdpadr = json['stdpadr'];
    fathnam = json['fathnam'];
    mothnam = json['mothnam'];
    birthdat = json['birthdat'];
    birthno = json['birthno'];
    gendid = json['gendid'];
    stdmob = json['stdmob'];
    guarmob = json['guarmob'];
    stdmail = json['stdmail'];
    previnst = json['previnst'];
    fathnid = json['fathnid'];
    guarnam = json['guarnam'];
    fathmob = json['fathmob'];
    mothmob = json['mothmob'];
    clsid = json['clsid'];
    secid = json['secid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['instid'] = instid;
    data['stdid'] = stdid;
    data['stdnam'] = stdnam;
    data['stdcadr'] = stdcadr;
    data['stdpadr'] = stdpadr;
    data['fathnam'] = fathnam;
    data['mothnam'] = mothnam;
    data['birthdat'] = birthdat;
    data['birthno'] = birthno;
    data['gendid'] = gendid;
    data['stdmob'] = stdmob;
    data['guarmob'] = guarmob;
    data['stdmail'] = stdmail;
    data['previnst'] = previnst;
    data['fathnid'] = fathnid;
    data['guarnam'] = guarnam;
    data['fathmob'] = fathmob;
    data['mothmob'] = mothmob;
    data['clsid'] = clsid;
    data['secid'] = secid;
    return data;
  }
}





class DataAccessParam {
  String? comCod;
  String? procName;
  String? procID;
  String? parmJson1;
  String? parmJson2;
  List<int>? parmBin01;
  String? parm01;
  String? parm02;
  String? parm03;
  String? parm04;
  String? parm05;
  String? parm06;
  String? parm07;
  String? parm08;
  String? parm09;
  String? parm10;

  DataAccessParam(
      {this.comCod,
      this.procName,
      this.procID,
      this.parmJson1,
      this.parmJson2,
      this.parmBin01,
      this.parm01,
      this.parm02,
      this.parm03,
      this.parm04,
      this.parm05,
      this.parm06,
      this.parm07,
      this.parm08,
      this.parm09,
      this.parm10});

  DataAccessParam.fromJson(Map<String, dynamic> json) {
    comCod = json['ComCod'];
    procName = json['ProcName'];
    procID = json['ProcID'];
    parmJson1 = json['parmJson1'];
    parmJson2 = json['parmJson2'];
    parmBin01 = json['parmBin01'];
    parm01 = json['parm01'];
    parm02 = json['parm02'];
    parm03 = json['parm03'];
    parm04 = json['parm04'];
    parm05 = json['parm05'];
    parm06 = json['parm06'];
    parm07 = json['parm07'];
    parm08 = json['parm08'];
    parm09 = json['parm09'];
    parm10 = json['parm10'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['ComCod'] = comCod;
    data['ProcName'] = procName;
    data['ProcID'] = procID;
    data['parmJson1'] = parmJson1;
    data['parmJson2'] = parmJson2;
    data['parmBin01'] = parmBin01;
    data['parm01'] = parm01;
    data['parm02'] = parm02;
    data['parm03'] = parm03;
    data['parm04'] = parm04;
    data['parm05'] = parm05;
    data['parm06'] = parm06;
    data['parm07'] = parm07;
    data['parm08'] = parm08;
    data['parm09'] = parm09;
    data['parm10'] = parm10;
    return data;
  }
}

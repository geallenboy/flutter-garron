class BaseEntity {
  dynamic? code;
  String? msg;
  dynamic? data;
  BaseEntity({this.code, this.msg, this.data});
  factory BaseEntity.fromJson(Map<String, dynamic> json) => BaseEntity(
        code: json["code"],
        msg: json["msg"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "msg": msg,
        "data": data,
      };
}

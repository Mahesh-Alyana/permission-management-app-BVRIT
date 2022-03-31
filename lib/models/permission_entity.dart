class PermissionEntity {
  int? id;
  String? rollNumber;
  String? date;
  String? fromTime;
  String? outDate;
  String? reason;
  Null? attachment;
  bool? granted;
  String? qrCode;
  Null? slug;

  PermissionEntity(
      {this.id,
      this.rollNumber,
      this.date,
      this.fromTime,
      this.outDate,
      this.reason,
      this.attachment,
      this.granted,
      this.qrCode,
      this.slug});

  PermissionEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    rollNumber = json['roll_number'];
    date = json['date'];
    fromTime = json['from_time'];
    outDate = json['out_date'];
    reason = json['reason'];
    attachment = json['attachment'];
    granted = json['granted'];
    qrCode = json['qr_code'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['roll_number'] = this.rollNumber;
    data['date'] = this.date;
    data['from_time'] = this.fromTime;
    data['out_date'] = this.outDate;
    data['reason'] = this.reason;
    data['attachment'] = this.attachment;
    data['granted'] = this.granted;
    data['qr_code'] = this.qrCode;
    data['slug'] = this.slug;
    return data;
  }
}

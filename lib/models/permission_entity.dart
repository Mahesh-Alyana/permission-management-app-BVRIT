class PermissionEntity {
  int? id;
  int? rollNumber;
  String? studentRoll;
  String? date;
  String? fromTime;
  String? outDate;
  String? reason;
  String? attachment;
  bool? granted;
  String? qrCode;
  String? slug;

  PermissionEntity(
      {this.id,
      this.rollNumber,
      this.studentRoll,
      this.date,
      this.fromTime,
      this.outDate,
      this.reason,
      this.attachment,
      this.granted,
      this.qrCode,
      this.slug});

  PermissionEntity.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    studentRoll = json['student_roll'];
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

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['id'] = this.id;
    data['student_roll'] = this.studentRoll;
    data['date'] = this.date;
    data['from_time'] = this.fromTime;
    data['out_date'] = this.outDate;
    data['reason'] = this.reason;
    data['attachment'] = this.attachment;
    data['granted'] = this.granted;
    // data['qr_code'] = this.qrCode;
    data['slug'] = this.slug;
    data['roll_number'] = this.rollNumber;
    return data;
  }
}

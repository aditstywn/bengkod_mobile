import 'dart:convert';

class StartExamResponseModel {
  final Data? data;
  final Meta? meta;

  StartExamResponseModel({
    this.data,
    this.meta,
  });

  factory StartExamResponseModel.fromJson(String str) =>
      StartExamResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StartExamResponseModel.fromMap(Map<String, dynamic> json) =>
      StartExamResponseModel(
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
        meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data?.toMap(),
        "meta": meta?.toMap(),
      };
}

class Data {
  final String? student;
  final String? course;
  final int? duration;
  final String? status;
  final DateTime? startTime;
  final Exams? exams;

  Data({
    this.student,
    this.course,
    this.duration,
    this.status,
    this.startTime,
    this.exams,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        student: json["student"],
        course: json["course"],
        duration: json["duration"],
        status: json["status"],
        startTime: json["start_time"] == null
            ? null
            : DateTime.parse(json["start_time"]),
        exams: json["exams"] == null ? null : Exams.fromMap(json["exams"]),
      );

  Map<String, dynamic> toMap() => {
        "student": student,
        "course": course,
        "duration": duration,
        "status": status,
        "start_time": startTime?.toIso8601String(),
        "exams": exams?.toMap(),
      };
}

class Exams {
  final int? currentPage;
  final List<Datum>? data;
  final String? firstPageUrl;
  final int? from;
  final int? lastPage;
  final String? lastPageUrl;
  final List<Link>? links;
  final String? nextPageUrl;
  final String? path;
  final int? perPage;
  final dynamic prevPageUrl;
  final int? to;
  final int? total;

  Exams({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  factory Exams.fromJson(String str) => Exams.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Exams.fromMap(Map<String, dynamic> json) => Exams(
        currentPage: json["current_page"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromMap(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: json["links"] == null
            ? []
            : List<Link>.from(json["links"]!.map((x) => Link.fromMap(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toMap() => {
        "current_page": currentPage,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": links == null
            ? []
            : List<dynamic>.from(links!.map((x) => x.toMap())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
      };
}

class Datum {
  final int? questionId;
  final String? question;
  final List<Answer>? answers;

  Datum({
    this.questionId,
    this.question,
    this.answers,
  });

  factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        questionId: json["question_id"],
        question: json["question"],
        answers: json["answers"] == null
            ? []
            : List<Answer>.from(json["answers"]!.map((x) => Answer.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "question_id": questionId,
        "question": question,
        "answers": answers == null
            ? []
            : List<dynamic>.from(answers!.map((x) => x.toMap())),
      };
}

class Answer {
  final int? answerId;
  final String? answer;
  final bool? selected;

  Answer({
    this.answerId,
    this.answer,
    this.selected,
  });

  factory Answer.fromJson(String str) => Answer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Answer.fromMap(Map<String, dynamic> json) => Answer(
        answerId: json["answer_id"],
        answer: json["answer"],
        selected: json["selected"],
      );

  Map<String, dynamic> toMap() => {
        "answer_id": answerId,
        "answer": answer,
        "selected": selected,
      };
}

class Link {
  final String? url;
  final String? label;
  final bool? active;

  Link({
    this.url,
    this.label,
    this.active,
  });

  factory Link.fromJson(String str) => Link.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Link.fromMap(Map<String, dynamic> json) => Link(
        url: json["url"],
        label: json["label"],
        active: json["active"],
      );

  Map<String, dynamic> toMap() => {
        "url": url,
        "label": label,
        "active": active,
      };
}

class Meta {
  final int? statusCode;
  final bool? success;
  final String? message;

  Meta({
    this.statusCode,
    this.success,
    this.message,
  });

  factory Meta.fromJson(String str) => Meta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        statusCode: json["status_code"],
        success: json["success"],
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "status_code": statusCode,
        "success": success,
        "message": message,
      };
}

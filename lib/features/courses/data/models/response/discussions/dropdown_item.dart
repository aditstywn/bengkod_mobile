class DropdownItem {
  final int? id;
  final String? title;

  DropdownItem({
    required this.id,
    required this.title,
  });

  factory DropdownItem.fromJson(Map<String, dynamic> json) {
    return DropdownItem(
      id: json['id'] as int?,
      title: json['title'] as String?,
    );
  }
}

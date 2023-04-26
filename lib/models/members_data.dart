
class MemberDataModel{
  final String name;
  final String location;
  final String phone;
  bool isSelected;
  MemberDataModel({
    required this.name,
    required this.location,
    required this.phone,
    this.isSelected = false,
  });
}



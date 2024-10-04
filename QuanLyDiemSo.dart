void main() {
  listAndScore(scoreStudents);
}

// Map lưu trữ tên học sinh và điểm số tương ứng
Map<String, double> scoreStudents = {
  'buiduylong': 4.0,
  'dinhthithom': 4.0,
  'buiminhquy': 2.5,
  'khongminhquan': 3.9,
  'truonglong': 3.5
};
//Hàm thêm điểm số cho một học sinh mới
void addNewScore(String nameStudent, double score) {
  scoreStudents[nameStudent] = score;
  print('Đã thêm điểm số ${score} cho học sinh ${nameStudent}');
}

//Hàm cập nhật điểm số cho một học sinh
void updateScore(String nameStudent, double score) {
  if (scoreStudents.containsKey(nameStudent)) {
    scoreStudents[nameStudent] = score;
    print("Đã cập nhật thành công điểm số của học sinh ${nameStudent}");
  } else {
    print('Không tìm thấy học sinh có tên ${nameStudent}');
  }
}

//Hàm xóa một học sinh
void deleteStudent(String nameStudent) {
  if (scoreStudents.containsKey(nameStudent)) {
    scoreStudents.remove(nameStudent);
    print('Đã xóa thành công học sinh ${nameStudent}');
  } else {
    print("không tìm thấy học sinh ${nameStudent}");
  }
}

//Hàm in ra danh sách học sinh và điểm số
void listAndScore(Map<String, double> list) {
  print("Danh sách học sinh và điểm số:");
  list.forEach((name, score) {
    print("${name} : ${score}");
  });
}

//Hàm tìm và in ra điểm số cho một học sinh
void printScore(String nameStudent, double score) {
  if (scoreStudents.containsKey(nameStudent)) {
    print("điểm số của học sinh ${nameStudent} là ${score}");
  } else {
    print('Không tìm thấy học sinh có tên ${nameStudent}');
  }
}

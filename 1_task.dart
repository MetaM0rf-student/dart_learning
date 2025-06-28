
void main(List<String> args) {
  print('${'-' * 40} Task 1 ${'-' * 40}');
  const width = 18.4;
  const length = 30.9;
  calcRectangle(width, length);
} 

void calcRectangle(double width, double length) {
  var area = width * length;
  var perimeter = 2 * (width + length);
  print('Area: $area');
  print('Perimeter: $perimeter');
}
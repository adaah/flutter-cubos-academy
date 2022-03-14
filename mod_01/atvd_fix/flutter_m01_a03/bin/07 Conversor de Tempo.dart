void main() {
  const dayToMinutes = 1440;
  const hourToMinutes = 60;
  const minuteToSeconds = 60;

  double time = 1742.7;

  int days = 0;
  if (time > dayToMinutes) {
    days = time ~/ dayToMinutes;
    time %= dayToMinutes;
  }

  int hours = 0;
  if (time > hourToMinutes) {
    hours = time ~/ hourToMinutes;
    time %= hourToMinutes;
  }

  final minutesDecimal = time;
  final minutes = minutesDecimal ~/ 1;
  final secondsDecimal = minutesDecimal % 1;
  final seconds = secondsDecimal * minuteToSeconds ~/ 1;

  String msg = '';
  if (days > 0) {
    final dayComplement = days == 1 ? 'dia' : 'dias';
    msg += '$days $dayComplement, ';
  }
  if (hours > 0) {
    final hourComplement = hours == 1 ? 'hora' : 'horas';
    msg += '$hours $hourComplement, ';
  }
  msg += '$minutes minutos e ';
  msg += '$seconds segundos';

  print(msg);
}

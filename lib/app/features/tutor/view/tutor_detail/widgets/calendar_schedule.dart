import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarSchedule extends StatelessWidget {
  const CalendarSchedule({
    super.key,
    required this.onDateChange,
    required this.selectDay,
  });

  final void Function(DateTime) onDateChange;
  final DateTime selectDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.now(),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: selectDay,
      selectedDayPredicate: (day) => isSameDay(day, selectDay),
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(selectedDay, selectDay)) {
          onDateChange(selectedDay);
        }
      },
    );
  }
}

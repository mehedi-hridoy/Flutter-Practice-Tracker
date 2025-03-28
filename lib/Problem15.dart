import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class Problem15 extends StatefulWidget {
  const Problem15({super.key});

  @override
  _Problem15State createState() => _Problem15State();
}

class _Problem15State extends State<Problem15> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  void initState() {
    super.initState();
    tz.initializeTimeZones(); 
    _setCurrentDhakaTime();
  }

  void _setCurrentDhakaTime() {
    tz.Location dhaka = tz.getLocation('Asia/Dhaka');
    tz.TZDateTime nowInDhaka = tz.TZDateTime.now(dhaka);
    setState(() {
      selectedDate = nowInDhaka;
      selectedTime = TimeOfDay(hour: nowInDhaka.hour, minute: nowInDhaka.minute);
    });
  }

  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.blueAccent,
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 2),
      ),
    );
  }

  Future<void> _pickDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.teal,
            colorScheme: ColorScheme.light(primary: Colors.teal),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      _showSnackbar("You selected date: ${DateFormat('yyyy-MM-dd').format(picked)}");
    }
  }

  Future<void> _pickTime(BuildContext context) async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.deepOrange,
            colorScheme: ColorScheme.light(primary: Colors.deepOrange),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
      _showSnackbar("You selected time: ${picked.format(context)}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Select Date & Time')),
        backgroundColor: Colors.lime[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Dhaka Current Date: ${selectedDate != null ? DateFormat('yyyy-MM-dd').format(selectedDate!) : 'No date selected'}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _pickDate(context),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              child: Text("Pick Date", style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            Text(
              "Current Time Dhaka: ${selectedTime != null ? selectedTime!.format(context) : 'No time selected'}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _pickTime(context),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
              child: Text("Pick Time", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

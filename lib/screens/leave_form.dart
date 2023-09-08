import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaveForm extends StatefulWidget {
  LeaveForm({super.key});

  @override
  State<LeaveForm> createState() => _LeaveFormState();
}

class _LeaveFormState extends State<LeaveForm> {
  String? selectEmployeeName;
  List<String> employeeList = [
    "Hillary",
    "Dominick",
    "Abel",
    "Mercy",
    "Joseah",
    "John",
    "Meryline",
  ];

  String? selectedEmploymentType;
  List<String> employmentTypeList = ["Permanent", "Contract", "Casual"];

  String? selectedDepartment;
  List<String> departmentList = [
    "ICT",
    "Technical",
    "Procurement",
    "Commercial",
    "Audit",
  ];
  String? selectedLeaveType;
  List<String> leaveTypeList = [
    "Sick Leave",
    "Maternity Leave",
    "Annual Leave",
    "Others"
  ];

  DateTime selectedStartDate = DateTime.now(); // Initialize with today's date

  Future<void> _selectStartDate(
      BuildContext context, DateTime initialDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedStartDate)
      setState(() {
        selectedStartDate = picked;
      });
  }

  DateTime selectedEndDate = DateTime.now();

  Future<void> _selectedEndDate(
      BuildContext context, DateTime initialDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(2024),
    );
    if (picked != null && picked != selectedEndDate) {
      setState(() {
        selectedEndDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Request a Leave",
          style: GoogleFonts.adamina(fontWeight: FontWeight.w600),
        ),
        backgroundColor: Color(0xFFE9EFF0),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Vacation and Sick Leave Form",
                  style: GoogleFonts.pacifico(
                      fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Employee Name :",
                style: GoogleFonts.amaranth(
                    fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0, left: 16.0, top: 2.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                dropdownColor: Color(0xFFE9EFF0),
                alignment: Alignment.center,
                isExpanded: true,
                value: selectEmployeeName,
                hint: const Text("Select Employee Name"),
                items: employeeList.map((employeeName) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: employeeName,
                    child: Text(employeeName),
                  );
                }).toList(),
                onChanged: (newEmployee) {
                  setState(() {
                    selectEmployeeName = newEmployee.toString();
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Employment Type :",
                style: GoogleFonts.amaranth(
                    fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0, left: 16.0, top: 2.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                alignment: Alignment.center,
                isExpanded: true,
                hint: const Text("Select Employment Type"),
                dropdownColor: const Color(0xFFE9EFF0),
                items: employmentTypeList.map((employmentType) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: employmentType,
                    child: Text(employmentType),
                  );
                }).toList(),
                onChanged: (newEmploymentType) {
                  setState(() {
                    selectedEmploymentType = newEmploymentType;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Department :",
                style: GoogleFonts.amaranth(
                    fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0, left: 16.0, top: 2.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                hint: const Text("Select Department"),
                isExpanded: true,
                dropdownColor: Color(0xFFE9EFF0),
                alignment: Alignment.center,
                items: departmentList.map((departmentName) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    child: Text(
                      departmentName,
                    ),
                    value: departmentName,
                  );
                }).toList(),
                onChanged: (newDepartmentName) {
                  setState(() {
                    selectedDepartment = newDepartmentName;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Leave Type :",
                style: GoogleFonts.amaranth(
                    fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0, left: 16.0, top: 2.0),
              child: DropdownButtonFormField(
                isExpanded: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                hint: Text("Select Type of Leave"),
                alignment: Alignment.center,
                dropdownColor: Color(0xFFE9EFF0),
                items: leaveTypeList.map((newSelectedLeaveType) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    child: Text(
                      newSelectedLeaveType,
                    ),
                    value: newSelectedLeaveType,
                  );
                }).toList(),
                onChanged: (newLeaveTypeValue) {
                  setState(() {
                    selectedLeaveType = newLeaveTypeValue;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Leave Date",
                          style: GoogleFonts.amaranth(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        Text(
                          " *",
                          style: GoogleFonts.amaranth(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Return Date",
                          style: GoogleFonts.amaranth(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        Text(
                          " *",
                          style: GoogleFonts.amaranth(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFE9EFF0),
                        borderRadius: BorderRadius.circular(20)),
                    height: 40,
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // TextField()
                          Text(
                            "${selectedStartDate.day}/${selectedStartDate.month}/${selectedStartDate.year}",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _selectStartDate(context,
                                  selectedStartDate.add(Duration(days: 0)));
                            },
                            child: Icon(
                              Icons.calendar_today_outlined,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFE9EFF0),
                        borderRadius: BorderRadius.circular(20)),
                    height: 40,
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${selectedEndDate.day }/${selectedEndDate.month}/${selectedEndDate.year}",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          InkWell(
                            onTap: (){
                              _selectedEndDate(
                                  context, selectedEndDate.add(Duration(days: 0)));                            },
                            child: Icon(
                              Icons.calendar_today_outlined,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

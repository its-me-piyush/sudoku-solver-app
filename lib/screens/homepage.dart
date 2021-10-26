import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../helpers/api.dart';
import '../providers/sudokuMarkerProvider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _hitedSolve = true;

  List<List<String>> _sudokuGridValue = [
    ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
    ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
    ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
    ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
    ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
    ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
    ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
    ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
    ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
  ];

  List<String> _finalGridList = [];
  String _finalGridString = '';

  String url;

  void fillTheSolutionGrid(List<dynamic> finalGridValue) {
    List<String> column1 = [];
    List<String> column2 = [];
    List<String> column3 = [];
    List<String> column4 = [];
    List<String> column5 = [];
    List<String> column6 = [];
    List<String> column7 = [];
    List<String> column8 = [];
    List<String> column9 = [];

    // print(finalGridValue);

    var j = 0;
    for (var i = 0; i < 9; i++) {
      while (j < 3) {
        // j = 0, 1, 2
        column1.add(finalGridValue[i].toString());
        j += 1; // j = 1, 2, 3
        i += 1;
      }
      while (j >= 3 && j < 6) {
        column2.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
      while (j >= 6 && j < 9) {
        column3.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
    }

    j = 0;
    for (var i = 9; i < 18; i++) {
      while (j < 3) {
        // j = 0, 1, 2
        column1.add(finalGridValue[i].toString());
        j += 1; // j = 1, 2, 3
        i += 1;
      }
      while (j >= 3 && j < 6) {
        column2.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
      while (j >= 6 && j < 9) {
        column3.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
    }

    j = 0;
    for (var i = 18; i < 27; i++) {
      while (j < 3) {
        // j = 0, 1, 2
        column1.add(finalGridValue[i].toString());
        j += 1; // j = 1, 2, 3
        i += 1;
      }
      while (j >= 3 && j < 6) {
        column2.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
      while (j >= 6 && j < 9) {
        column3.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
    }

    j = 0;
    for (var i = 27; i < 36; i++) {
      while (j < 3) {
        // j = 0, 1, 2
        column4.add(finalGridValue[i].toString());
        j += 1; // j = 1, 2, 3
        i += 1;
      }
      while (j >= 3 && j < 6) {
        column5.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
      while (j >= 6 && j < 9) {
        column6.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
    }

    j = 0;
    for (var i = 36; i < 44; i++) {
      while (j < 3) {
        // j = 0, 1, 2
        column4.add(finalGridValue[i].toString());
        j += 1; // j = 1, 2, 3
        i += 1;
      }
      while (j >= 3 && j < 6) {
        column5.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
      while (j >= 6 && j < 9) {
        column6.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
    }

    j = 0;
    for (var i = 45; i < 53; i++) {
      while (j < 3) {
        // j = 0, 1, 2
        column4.add(finalGridValue[i].toString());
        j += 1; // j = 1, 2, 3
        i += 1;
      }
      while (j >= 3 && j < 6) {
        column5.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
      while (j >= 6 && j < 9) {
        column6.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
    }

    j = 0;
    for (var i = 54; i < 62; i++) {
      while (j < 3) {
        // j = 0, 1, 2
        column7.add(finalGridValue[i].toString());
        j += 1; // j = 1, 2, 3
        i += 1;
      }
      while (j >= 3 && j < 6) {
        column8.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
      while (j >= 6 && j < 9) {
        column9.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
    }

    j = 0;
    for (var i = 63; i < 71; i++) {
      while (j < 3) {
        // j = 0, 1, 2
        column7.add(finalGridValue[i].toString());
        j += 1; // j = 1, 2, 3
        i += 1;
      }
      while (j >= 3 && j < 6) {
        column8.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
      while (j >= 6 && j < 9) {
        column9.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
    }

    j = 0;
    for (var i = 72; i < 80; i++) {
      while (j < 3) {
        // j = 0, 1, 2
        column7.add(finalGridValue[i].toString());
        j += 1; // j = 1, 2, 3
        i += 1;
      }
      while (j >= 3 && j < 6) {
        column8.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
      while (j >= 6 && j < 9) {
        column9.add(finalGridValue[i].toString());
        j += 1;
        i += 1;
      }
    }

    setState(() {
      _sudokuGridValue[0] = column1;
      _sudokuGridValue[1] = column2;
      _sudokuGridValue[2] = column3;
      _sudokuGridValue[3] = column4;
      _sudokuGridValue[4] = column5;
      _sudokuGridValue[5] = column6;
      _sudokuGridValue[6] = column7;
      _sudokuGridValue[7] = column8;
      _sudokuGridValue[8] = column9;
    });
  }

  void fillFinalGridList(List<String> ans) {
    for (var i = 0; i < 9; i++) {
      _finalGridList.add(ans[i]);
    }
  }

  void extractGrid(List<List<String>> inputtedGridValue) {
    _finalGridString = '';
    List<String> column1 = [];
    List<String> column2 = [];
    List<String> column3 = [];
    List<String> column4 = [];
    List<String> column5 = [];
    List<String> column6 = [];
    List<String> column7 = [];
    List<String> column8 = [];
    List<String> column9 = [];

    for (var i = 0; i < 3; i++) {
      for (var j = 0; j < 3; j++) {
        column1.add(inputtedGridValue[i][j]);
      }
    }

    for (var i = 0; i < 3; i++) {
      for (var j = 3; j < 6; j++) {
        column2.add(_sudokuGridValue[i][j]);
      }
    }
    for (var i = 0; i < 3; i++) {
      for (var j = 6; j < 9; j++) {
        column3.add(_sudokuGridValue[i][j]);
      }
    }
    for (var i = 3; i < 6; i++) {
      for (var j = 0; j < 3; j++) {
        column4.add(_sudokuGridValue[i][j]);
      }
    }
    for (var i = 3; i < 6; i++) {
      for (var j = 3; j < 6; j++) {
        column5.add(_sudokuGridValue[i][j]);
      }
    }
    for (var i = 3; i < 6; i++) {
      for (var j = 6; j < 9; j++) {
        column6.add(_sudokuGridValue[i][j]);
      }
    }
    for (var i = 6; i < 9; i++) {
      for (var j = 0; j < 3; j++) {
        column7.add(_sudokuGridValue[i][j]);
      }
    }
    for (var i = 6; i < 9; i++) {
      for (var j = 3; j < 6; j++) {
        column8.add(_sudokuGridValue[i][j]);
      }
    }
    for (var i = 6; i < 9; i++) {
      for (var j = 6; j < 9; j++) {
        column9.add(_sudokuGridValue[i][j]);
      }
    }

    fillFinalGridList(column1);
    fillFinalGridList(column2);
    fillFinalGridList(column3);
    fillFinalGridList(column4);
    fillFinalGridList(column5);
    fillFinalGridList(column6);
    fillFinalGridList(column7);
    fillFinalGridList(column8);
    fillFinalGridList(column9);

    for (var i = 0; i < _finalGridList.length; i++) {
      _finalGridString += _finalGridList[i].toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    final sudokuMarkerProvider = Provider.of<SudokuMarkerProvider>(context);
    final sudokuMarkers = sudokuMarkerProvider.items;
    final selectedMarker = sudokuMarkerProvider.getSelectedMarker();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sudoku Solver',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
              ),
              itemCount: 10,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  sudokuMarkerProvider.selectMarker(index);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: sudokuMarkers[index].isSelected
                        ? Colors.purple
                        : Color(0xffFBF5FE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: sudokuMarkers[index].value == '0'
                        ? Icon(
                            Icons.delete_outline_rounded,
                            color: sudokuMarkers[index].isSelected
                                ? Colors.white
                                : Colors.black,
                          )
                        : Text(
                            '${sudokuMarkers[index].value}',
                            style: TextStyle(
                              color: sudokuMarkers[index].isSelected
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            // ...
            height: MediaQuery.of(context).size.height * 0.48,
            margin: EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
            child: !_hitedSolve
                ? Container(
                    height: MediaQuery.of(context).size.height * 0.48,
                    margin: EdgeInsets.only(
                        top: 20, bottom: 10, left: 10, right: 10),
                    child: Card(
                      color: Color(0xff800CF4).withOpacity(0.5),
                      elevation: 5,
                      child: Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Color(0xffF5E0FF),
                        ),
                      ),
                    ),
                  )
                : Container(
                    // color: Color(0xff800CF4).withOpacity(0.17),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemCount: 9,
                      itemBuilder: (context, index1) {
                        return Card(
                          margin: index1 >= 3 && index1 < 6
                              ? EdgeInsets.only(top: 2, bottom: 2, right: 4)
                              : index1 >= 6
                                  ? EdgeInsets.only(top: 4, right: 4)
                                  : EdgeInsets.only(bottom: 4, right: 4),
                          elevation: 5,
                          // decoration: BoxDecoration(
                          //   border: Border.all(
                          //     // color: Colors.purple,
                          //     width: 2,
                          //   ),
                          //   // color: Colors.red,
                          // ),
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemCount: 9,
                            itemBuilder: (context, index2) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _sudokuGridValue[index1][index2] =
                                        selectedMarker.value;
                                  });
                                },
                                child: Container(
                                  // margin: EdgeInsets.only(right: 2, left: 2),
                                  decoration: BoxDecoration(
                                    // color:  // Edit color for change in color of selected block.
                                    border: Border.all(color: Colors.black54),
                                    // color: Colors.red,
                                  ),
                                  child: Center(
                                    child: _sudokuGridValue[index1][index2] ==
                                            '0'
                                        ? Text('')
                                        : Text(
                                            _sudokuGridValue[index1][index2],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: RaisedButton(
                    color: Color(0xff800CF4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Solve',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () async {
                      // print(_sudokuGridValue);

                      setState(() {
                        _finalGridList = [];
                        _hitedSolve = !_hitedSolve;
                      });
                      extractGrid(_sudokuGridValue);
                      try {
                        url = '{your api for solving sudoku}';

                        final data = await getData(url);
                        fillTheSolutionGrid(data);
                        setState(() {
                          _hitedSolve = true;
                        });
                      } catch (e) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              actions: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text(
                                        'Error',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        'Given Sudoku values were not correct. Please try again.',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          child: Text(
                                            'Reset',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _sudokuGridValue = [
                                                [
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0'
                                                ],
                                                [
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0'
                                                ],
                                                [
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0'
                                                ],
                                                [
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0'
                                                ],
                                                [
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0'
                                                ],
                                                [
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0'
                                                ],
                                                [
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0'
                                                ],
                                                [
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0'
                                                ],
                                                [
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0',
                                                  '0'
                                                ]
                                              ];
                                              _hitedSolve = true;
                                            });
                                            Navigator.pop(context);
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: RaisedButton(
                    color: Color(0xffF5E0FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Clear',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _sudokuGridValue = [
                          ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
                          ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
                          ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
                          ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
                          ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
                          ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
                          ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
                          ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
                          ['0', '0', '0', '0', '0', '0', '0', '0', '0'],
                        ];
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

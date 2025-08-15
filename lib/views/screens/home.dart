import 'package:flutter/material.dart';
import 'package:learning_application_file_structure/utils/components/custom_appbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Custom AppBar
      appBar: CustomAppBar(title: 'Home'),

      // Main content area - Safe Area
      body: Container(
        color: Color(0xFFFF6D4D),
        child: Column(
          children: [
            // Welcome Container with Icon
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome, User!',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.account_circle, color: Colors.black, size: 28),
                ],
              ),
            ),

            SizedBox(height: 20),

            // TabBar and TabBarView
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      // TabBar
                      Container(
                        padding: EdgeInsets.all(8),
                        child: TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              color: Colors.amber[300]!,
                              width: 2,
                            ),
                          ),
                          labelColor: Colors.amber[300],
                          unselectedLabelColor: Colors.white,
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          tabs: [Tab(text: 'To Do'), Tab(text: 'Missed')],
                        ),
                      ),

                      // TabBarView
                      Expanded(
                        child: TabBarView(
                          children: [
                            // To Do Tab
                            Container(
                              padding: EdgeInsets.all(16),
                              child: ListView(
                                children: [
                                  // ListTile 1
                                  Container(
                                    margin: EdgeInsets.only(bottom: 12),
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Colors.amber[300],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      'Complete Flutter tutorial',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),

                                  // ListTile 2
                                  Container(
                                    margin: EdgeInsets.only(bottom: 12),
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Colors.amber[300],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      'Review basic widgets',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),

                                  // ListTile 3
                                  Container(
                                    margin: EdgeInsets.only(bottom: 12),
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Colors.amber[300],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      'Practice layout concepts',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),

                                  // ListTile 4
                                  Container(
                                    margin: EdgeInsets.only(bottom: 12),
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Colors.amber[300],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      'Build first app',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Missed Tab
                            Container(
                              padding: EdgeInsets.all(16),
                              child: Center(
                                child: Text(
                                  'No missed tasks',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

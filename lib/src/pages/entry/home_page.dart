part of pages;

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              // MyHeaderDrawer(),
              // MyDrawerList(),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("images/intro5.jpg"),
            ),
            DataTable(
              columns: const [
                DataColumn(
                  label: Text(
                    'Name:',
                    //style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Imam' ' ' 'Hasan',
                    //style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  ),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(Text("Email:")),
                    DataCell(
                      Text('imam@gmail.com'),
                    ),
                  ],
                ),
                DataRow(cells: [
                  DataCell(Text("Class:")),
                  DataCell(
                    Text('09'),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(Text('Roll:')),
                  DataCell(
                    Text('05'),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(Text('Address:')),
                  DataCell(
                    Text('Gazipur'),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(Text('Guardian Name:')),
                  DataCell(
                    Text('Guardian'),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(Text('Guardian Number:')),
                  DataCell(
                    Text('+8801987654321'),
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

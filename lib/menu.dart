import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String titulo = 'Roles';
  var contenido = Card(
    elevation: 10,
    child: Column(
      children: [
        ListTile(
          leading:
              const Icon(Icons.person_4, color: Color.fromARGB(255, 100, 0, 0)),
          title: const Text('Admin',
              style: TextStyle(color: Color.fromARGB(255, 100, 0, 0))),
          // subtitle: const Text('Jefe1'),
          onTap: () {},
        ),
        ListTile(
          leading:
              const Icon(Icons.person_3, color: Color.fromARGB(255, 0, 0, 100)),
          title: const Text('Barbero',
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 100))),
          // subtitle: const Text('Jefe1'),
          onTap: () {},
        ),
        ListTile(
          leading:
              const Icon(Icons.person, color: Color.fromARGB(255, 0, 0, 0)),
          title: const Text('Cliente',
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
          // subtitle: const Text('Jefe1'),
          onTap: () {},
        ),
        // Padding(
        //   padding:
        //       const EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 10),
        //   child: Image.asset(
        //     'imagenes/lycoris.jpg', // Reemplaza con la URL de tu imagen
        //     fit: BoxFit.cover, // Ajusta la imagen al tamaño del Card
        //   ),
        // ),
      ],
    ),
  );
  var imag = Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
    child: Image.asset(
      'imagenes/bar2.png',
      width: 300,
      fit: BoxFit.cover,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 230, 230),
        appBar: AppBar(
          title: const Text('The Warriors Barber Shop'),
          backgroundColor: const Color.fromARGB(255, 100, 0, 0),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              imag,
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: contenido,
              ),
            ],
          ),
        ),
        drawer: Drawer(
            child: ListView(
          padding: const EdgeInsets.all(0.0),
          children: [
            const SizedBox(
              height: 64,
              child: DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 100, 0, 0)),
                child: Center(
                  child: Text(
                    'The Warrior Barber Shop',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings,
                  color: Color.fromARGB(255, 100, 0, 0)),
              title: const Text(
                'Configuración',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                titulo = 'Roles';
                contenido = Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 100, 0, 0)),
                        title: const Text('Admin',
                            style: TextStyle(
                                color: Color.fromARGB(255, 100, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 100)),
                        title: const Text('Barbero',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 100))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                    ],
                  ),
                );
                imag = Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: Image.asset(
                    'imagenes/bar2.png',
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                );

                Navigator.pop(context);
                setState(() {});
              },
            ),
            ListTile(
              leading: const Icon(Icons.people_alt,
                  color: Color.fromARGB(255, 50, 0, 150)),
              title: const Text(
                'Usuarios',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                titulo = 'Usuarios';
                contenido = Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 100, 0, 0)),
                        title: const Text('Usuario de admin',
                            style: TextStyle(
                                color: Color.fromARGB(255, 100, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 100)),
                        title: const Text('Usuario de barbero',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 100))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 100)),
                        title: const Text('Usuario de barbero',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 100))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 100)),
                        title: const Text('Usuario de barbero',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 100))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                    ],
                  ),
                );
                imag = Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: Image.asset(
                    'imagenes/bar1.png',
                    width: 500,
                    fit: BoxFit.cover,
                  ),
                );

                Navigator.pop(context);
                setState(() {});
              },
            ),
            ListTile(
              leading:
                  const Icon(Icons.cut, color: Color.fromARGB(255, 0, 0, 100)),
              title: const Text(
                'Insumos',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                titulo = 'Insumos';
                contenido = Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.cut,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Cuchillas',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.cut,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Gomina',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.cut,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Talco',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                    ],
                  ),
                );
                imag = Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: Image.asset(
                    'imagenes/insumos.png',
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                );

                Navigator.pop(context);
                setState(() {});
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_3,
                  color: Color.fromARGB(255, 0, 0, 100)),
              title: const Text(
                'Barberos',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                titulo = 'Barberos';
                contenido = Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person_3,
                            color: Color.fromARGB(255, 0, 0, 100)),
                        title: const Text('Usuario de barbero',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 100))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person_3,
                            color: Color.fromARGB(255, 0, 0, 100)),
                        title: const Text('Usuario de barbero',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 100))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person_3,
                            color: Color.fromARGB(255, 0, 0, 100)),
                        title: const Text('Usuario de barbero',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 100))),
                        onTap: () {},
                      ),
                    ],
                  ),
                );
                imag = Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: Image.asset(
                    'imagenes/bar3.png',
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                );

                Navigator.pop(context);
                setState(() {});
              },
            ),
            ListTile(
              leading: const Icon(Icons.person,
                  color: Color.fromARGB(255, 0, 0, 0)),
              title: const Text(
                'Clientes',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                titulo = 'Clientes';
                contenido = Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: const Text('Usuario de cliente',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        onTap: () {},
                      ),
                    ],
                  ),
                );
                imag = Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: Image.asset(
                    'imagenes/clientes.png',
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                );

                Navigator.pop(context);
                setState(() {});
              },
            )
          ],
        )));
  }
}

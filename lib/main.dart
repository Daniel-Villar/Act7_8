import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Administrativa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen de perfil
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://static.vecteezy.com/system/resources/previews/019/879/186/non_2x/user-icon-on-transparent-background-free-png.png',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Texto Admin
            const Text(
              'ADMIN',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff031c30),
              ),
            ),
            const SizedBox(height: 40),

            // Botón de Productos (color azul)
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductsPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xfff2ff72),
                  foregroundColor: const Color(0xff000000),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 5,
                ),
                child: const Text('PRODUCTOS'),
              ),
            ),
            const SizedBox(height: 20),

            // Botón de Usuarios (color verde)
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xfff2ff72),
                  foregroundColor: const Color(0xff000000),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 5,
                ),
                child: const Text('USUARIOS'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        name: 'SEVEN',
        quantity: 20,
        price: 2000,
        imageUrl:
            'https://acdn-us.mitiendanube.com/stores/001/119/382/products/img-20230715-wa00011-d125e62d0f9f8ece4616894395007322-240-0.jpg',
      ),
      Product(
        name: 'SQUARE',
        quantity: 75,
        price: 1760,
        imageUrl:
            'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEBIWFRUVFxUVFRUVEhUVFRUVFRUXFhUVFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0NGBAQGCsdHR0rKy0tLSstLSstNy0tNy0tNTgtLS0uLSstLS0rLS0rLS0tLS0rNy0tLS03LTcrKzc0Lf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAAAQQCAwUHBgj/xABEEAACAQIBAw8KBAQHAAAAAAAAAQIDEQQSMVEFBgcUITJBYXGBgqGxwdETFSJDUnKRorPCM0JzsiNTYpIWJGOj4fDx/8QAGQEBAQEBAQEAAAAAAAAAAAAAAAECAwQF/8QAJBEBAQACAgEDBQEBAAAAAAAAAAECEQMxEwQhQRIzUYGxYSP/2gAMAwEAAhEDEQA/APrwAc33wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbKNCUr5KvbPupZ/8Aw27RqaOtG7Un83R7zo2DllnZdORtGpo60No1NHWjsBF0z5a4+0amjrQ2hU9nrR2gNJ5a43m+p7PWvEeb6ns9aO0SNHlycTzfU9nrQ83VPZ+ZeJ2yUNJ5snE83VPZ+ZDzdU9n5l4ncMkNJ58nC821fZ+ZeI82VfZ+ZeJ3b2zmudfQNE5s64stTqizpf3LxMNpT0daOtJ3zmIdJnl8uXtOejrQ2nPR1o6hBF+uuXtOejrRjUoSirtdaOsVdUN6uVdjCzO2ucAA6AAAAAAAAAAA6uoVBzy7cGT15XgXp02s6aNetT1vQ+877VzUns+fzc1x5bHDsSdKpgovNucmb4FWpg5LNuri8BpMeXGq4JsSHRBIJCFiUDCVTQEZmEqug1ydzEjcxS3cgENhoIAYVABBFCrqhvVyrsZaZV1Q3q5V2MNY9ueAA7AAAAAAAAAAA72tT1vQ+8+gPn9avreh959AbnT5Pqfu39fwABXBjOmnnVytUwS/K/j4lohyDWOVnTm1KMo51uaeA0Sq6CNU8blSUI5k93jZpRjb3YYX6ZcmxvSQQgG0ggMAQAFQGCGFAQCAVdUN6uVdjLRV1Q3q5V2MNY9ueAA7AAAAAAAAAAA72tX1vQ+8+gPn9avreh953zc6fK9T92/r+AuRchsrhobODrn1xUMJTUq9RQUnkptN3lZuystCfwOnia9keT7M8nPDUv119KqZtejj47Jc/wAN+J2RsJB3jDEVeH+HQfbJpHOxOzBTX4WDqyf9dSEPillHkUYW3VdPSWIYqr7cmtEnlL4Sui6Zy9Vnk9BxWy7i2v4WFow9+c6nZknHxeybqrNejUpUvcoxb/3Mo+Zji5PfQhLjyXF/I0uo206lOTd4STUZS3Jp7yLlma3N7pGmPJlfl1qGyFqtB321lcLjKlSafy3XMdnB7L2Oj+LQoVF/Sp038btdR8U8TDgpf3Tv1RS7TDbGiFNdDK+o5DSeWzq16lg9melmr4SpF/6dSFTqkon0eA2SMDVSb8vTv7eGqO3K6akus8L25U4JuPu2h1RsapNy3ZNvlbfaNNT1Gc/1+m9TtVaGITdCrCpk2UsmV3FvMpLPF8TLh5nsHRtRxX6sF8Kf/J6YZr28eX1YyhABHRBVx+9XL3MtMq4/erlXYw1j2oAAOoAAAAAAAAAAO9rV9b0PvO9c4Gtf1nQ+87rZudPl+pn/AFo2aK1WxNSZzcXXJanHx7qvjq99w882VlfC0/14/Sqn205XPjdkullYaml/Oj9Oqu8z8vo5Ya4rHkbo8Rj5Dd5zqbWG1/8AvMbfN8TmKgbaFG0pfpV/ozOkqBgqPpTt/JxH0JgvHpwlEZJZVMnyRXD6VTJMrFxUCY4V8AXx16dsHr/L4n9aP00elHnmwxRccPiL8NdfSh4noRi9vocM1hIEAEdUNlXHb1cvcywyvjd7zrsYbx7UQAHQAAAAAAAAAAHc1sP8Tofedmcjh63H+J0PuOnVqGp0+fzY75awxFU5OJqXN+JrFCbM16uHj17sZMq4vCQqrJnHKSd7cdrd5Ykxh1eVuJkeq+2NfO4rWjQlmvF8RzMTrPX5ZcGg+8nTNE6Zpwkxvceb1dalVZrMqy1Aqxy3KOalWzcdGa7z01UyK9K8J7n5J/tYTLixrxKlqZUfB1FqlqLN8B6DDCx0G7a8dA2s9HjHwtHW7PhLlPW/bOfXwpEumtBNuk9PjPhd1hYPyVGorZ6l/kgj6Y5WtyNqcvff7YnUYcs5rKyDIYZiGQr43e8/czeyvjd6uXuYaikAA6AAAAAAAAAAA62oMrZfR+4t16hz9SJWy+j9xtxFQvw89w3yVoqzuaZMykzFmXqxjXI26n7/AJmapGEg3ZvGx2J0zTKkc6hWkmkpO2jgL8a+lGtvNlxZYsHSIr07U6nuS/aywmjDGr+FU9yX7WVnd2+VRKNlDCzlvYt83eXaWpFR57R5Xd9Rh7rljO659jI7VLUeC3zb6kW6WEpx3sF8Lv4srlebGdK2oatTfvPsRfYbIDhld3ZcxJuRcAVsY/R5+5lhsr4zNz+IWKYADYAAAAAAAAAALmAlbK5u8zmyvhXn5u82shJ77YtmEmS2YSYdJGLZrmzJs1tkdZGVLOi7AoU86LtNiMckWEzNGqLM0zTzWNiZNzC4DOmVxcxuSDQQCLhQi4ZFwozRi97z9zNzNGKzc5FiqACtAAAAAAAAAAA3Yfh5jYzVQefm7zKTI1IibNcmS2a5MjrIiTNbZMmaZyI6NlKXpIv02cqhL0kdKnIsYzizFmaZqizJMrz2NlzK5hcm4Z0yuGzFAqaTcgEEVJFyGyLhdJbNGJzc/ibTViM3P4hVYAFAAAAAAAAAAAbKTziTMEw2RvGyIkzVKRm4kOkuMmnSZ4q85ledQuPCrSzGWCi+F/FeA0vkiphal5rn7Dq05FWngoxd1f4llKw0lzxqxFmxMqqbMvKsrlbFpMm5V8ux5dhlaTFyrth8Q2w+IC2yCrth8Q8u+ICy2Rcr+XYdZhVhmqu9znNflmRKbYGAAKgAAAAAAAAAAAAAAAAAAAAAA4/+IqSqypS9HJmoOcpRUbyjNq7b3Pw7dJEy1wU9zce7UdJJyipOzilOEW7zi8qLusy3RpjyY/l1wcGnrnjKEZqjUalCpUdkm4Rp3v5Tgi3bcTfCjKGuam5KKpz3aipXaSjdynHKu/y3g1fTuIaPJj+XcAAbAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAf//Z',
      ),
      Product(
        name: 'THE ALBUM',
        quantity: 2,
        price: 800,
        imageUrl:
            'data:image/jpeg;base64,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',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffcae7f6),
        elevation: 0,
        title: Stack(
          children: [
            // Texto del borde
            Text(
              'Kpop Shop',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Colors.black,
              ),
            ),
            // Texto de relleno
            const Text(
              'Kpop Shop',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xffe2ff75),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Barra amarilla "PRODUCTOS"
          Container(
            color: Color(0xfff2ff72),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: const Center(
              child: Text(
                'PRODUCTOS',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff031c30),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),

          // Lista de productos
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        // Imagen
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            product.imageUrl,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.image, size: 100),
                          ),
                        ),
                        const SizedBox(width: 16),

                        // Información y botones
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name.toUpperCase(),
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text('Cantidad: ${product.quantity}'),
                              Text('Precio: ${product.price}'),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  // Botón eliminar
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xfff2ff72),
                                      foregroundColor: Colors.black,
                                    ),
                                    child: const Text('ELIMINAR'),
                                  ),
                                  const SizedBox(width: 20),
                                  // Botón editar
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const EditarPage()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xfff2ff72),
                                      foregroundColor: Colors.black,
                                    ),
                                    child: const Text('EDITAR'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuarios'),
      ),
      body: const Center(
        child: Text(
          'Contenido de Usuarios',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class EditarPage extends StatelessWidget {
  const EditarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffcae7f6),
        elevation: 0,
        title: Stack(
          children: [
            // Texto del borde
            Text(
              'Kpop Shop',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Colors.black,
              ),
            ),
            // Texto de relleno
            const Text(
              'Kpop Shop',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xffe2ff75),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Barra amarilla "PRODUCTOS"
          Container(
            color: const Color(0xfff2ff72),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: const Center(
              child: Text(
                'EDITAR',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff031c30),
                ),
              ),
            ),
          ),
          // ListView con los campos de edición
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20.0),
              children: [
                _buildEditableField('IMAGEN:', 'NUEVA IMAGEN'),
                const SizedBox(height: 20),
                _buildEditableField('NOMBRE:', 'NUEVO NOMBRE'),
                const SizedBox(height: 20),
                _buildEditableField('PRECIO:', 'NUEVO PRECIO'),
                const SizedBox(height: 20),
                _buildEditableField('CANTIDAD:', 'NUEVA CANTIDAD'),
                const SizedBox(height: 20),
                _buildEditableField('DESCRIPCION:', 'NUEVA DESCRIPCION'),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    // Acción al presionar LISTO
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfff2ff72),
                    foregroundColor: const Color(0xff031c30),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'LISTO',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEditableField(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xff031c30),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            decoration: InputDecoration.collapsed(
              hintText: value,
              hintStyle: const TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}

// Modelo de datos para los productos con imagen
class Product {
  final String name;
  final int quantity;
  final int price;
  final String imageUrl;

  Product({
    required this.name,
    required this.quantity,
    required this.price,
    required this.imageUrl,
  });
}

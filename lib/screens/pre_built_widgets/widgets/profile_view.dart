import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
          children: [
            Container(
              height: size.width * 0.08,
              width: size.width * 0.08,
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Color.fromRGBO(72, 76, 82, 0.16),
                    offset: Offset(0, 12),
                    blurRadius: 16.0,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.network(
                  "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              right: 0.0,
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF565BDD),
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: Color.fromRGBO(72, 76, 82, 0.16),
                        offset: Offset(0, 12),
                        blurRadius: 16.0,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.camera_alt_rounded,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5.0),
        const Text(
          "Milk Smith",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        const Text(
          "Software Enginner",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Tooltip(
              message: "Mail",
              child: CircleAvatar(
                radius: 15.0,
                child: Icon(
                  Icons.mail_rounded,
                  size: 15.0,
                ),
              ),
            ),
            SizedBox(width: 5.0),
            Tooltip(
              message: "Location",
              child: CircleAvatar(
                radius: 15.0,
                child: Icon(
                  Icons.location_city,
                  size: 15.0,
                ),
              ),
            ),
            SizedBox(width: 5.0),
            Tooltip(
              message: "Contact",
              child: CircleAvatar(
                radius: 15.0,
                child: Icon(
                  Icons.call_rounded,
                  size: 15.0,
                ),
              ),
            ),
            
          ],
        ),
      ],
    );
  }
}

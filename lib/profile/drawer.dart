import 'package:flutter/material.dart';
import 'package:cuore/sl/message.dart';

class AppDrawer {
  static TextEditingController _textEditingController = new TextEditingController(text: userName);
  static Drawer showDrawer(context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(context),
            TextField(
              controller: _textEditingController,              
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Username',
                icon: Icon(Icons.account_circle),
              ),
              autocorrect: false,
              autofocus: true,
              keyboardType: TextInputType.text,
              onChanged: _userNameChanged,
              onSubmitted: _userNameSubmitted,
            ),
          // _createDrawerItem(
          //     context, Icons.person, SLMessage.of("Profile"), () => _handleProfile(context)),
          _createDrawerItem(
              context,
              Icons.info,
              SLMessage.of("Version"),
              () => showAboutDialog(
                    context: context,
                    applicationIcon: Image.asset(
                      'assets/icons/ic_launcher.png',
                      width: 64,
                    ),
                    applicationName: "CUORE",
                    applicationVersion: "Test version",
                  )),
          Divider(),
          _createSignOutItem(context),
        ],
      ),
    );
  }

  static String userName = "";

  static void _userNameChanged(String value) {
    userName = value;
    _textEditingController.text = value;
  }

  static void _userNameSubmitted(String value) {
    userName = value;
    _textEditingController.text = value;
  }

  static Widget _createHeader(context) {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Center(
        child: InkWell(
          onTap: () => _handleProfile(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(height: 10),
              // CircleAvatar(
              //   backgroundImage: NetworkImage(
              //     userImageUrl,
              //   ),
              //   radius: 30,
              //   backgroundColor: Colors.transparent,
              // ),
              SizedBox(height: 10),
              Text(
                userName,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold),
              ),
              // SizedBox(height: 10),
              // Text(
              //   userEmail,
              //   style: TextStyle(
              //       fontSize: 16,
              //       color: Colors.deepPurple,
              //       fontWeight: FontWeight.bold),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _createDrawerItem(context, icon, text, onTap) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(
            icon,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  static Widget _createSignOutItem(context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(
            Icons.exit_to_app,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text("Sign Out"),
          )
        ],
      ),
      onTap: () {
        // Navigator.of(context).pushAndRemoveUntil(
        //     MaterialPageRoute(builder: (context) {
        //   return LoginPage();
        // }), ModalRoute.withName('/'));
      },
    );
  }

  static void _handleProfile(context) {
    // Navigator.push(context,
    //     MaterialPageRoute(builder: (BuildContext context) => UserScreen()));
  }
}

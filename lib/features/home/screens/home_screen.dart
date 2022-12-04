import 'package:doc';

 Scaffold(
        appBar: AppBar(
          title: const Text('Log In'),
        ),
        // ignore: unnecessary_const
        body: Column(
          children: [
            const Center(
              child: Text(
                'The user will have the ability to log in to the console with his credentials.Bellow are the credentials for the log in.E-mail: career@tech387.comPassword: Pass123!After the log in is successful take the user to the home page.',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
abstract class User {
  late final String email;

  User(String email) {
    this.email = email;
  }
}

class AdminUser extends User with UserGetMail {
  AdminUser(super.email);
}

class GeneralUser extends User {
  GeneralUser(super.email);
}

class UserManager<T extends User> {
  final List<T> users = <T>[];

  void postUser(T user) {
    users.add(user);
  }

  void deleteUser(T user) {
    users.remove(user);
  }

  void logUsers() {
    for (var i = 0; i < users.length; i++) {
      var user = users[i];
      if (user is AdminUser) {
        var adminMail = user.getMailSystem(user.email);
        print("${adminMail}");
        continue;
      }

      print("${user.email}");
    }
  }
}

mixin UserGetMail {
  String getMailSystem(String email) {
    var split = email.split("@");
    return split[1];
  }
}

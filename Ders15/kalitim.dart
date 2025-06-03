void main(List<String> args) {
  User user = User();
  user.email = "osman - user";
  user.password = "password123";
  user.login();

  NormalUser normalUser = NormalUser();
  normalUser.email = "osman - normal";
  normalUser.password = "normalPassword";
  normalUser.login();

  Admin admin = Admin();
  admin.email = "osman - admin";
  admin.password = "adminPassword";
  admin.login();

  admin.deleteUser(normalUser);
  admin.addUser(user);

  Moderator moderator = Moderator();
  moderator.email = "osman - moderator";
  moderator.password = "moderatorPassword";
  moderator.login();
  moderator.moderateContent();

  ReadUser readUser = ReadUser();
  readUser.email = "osman - read";
  readUser.password = "readPassword";
  readUser.login();
  readUser.read();

}

class User {
  String password ="";
  String email = "";

  void login() {
    print("User logged in with email: $email");
  }
}

class NormalUser extends User {
  String role = "Normal User";

  @override
  void login() {
    print("Normal User logged in with email: $email and role: $role");
  }
}

class Admin extends User {
  String role = "Admin";

  @override
  void login() {
    print("Admin logged in with email: $email and role: $role");
  }

  void deleteUser(User user) {
    print("Admin deleted user with email: ${user.email}");
  }
  void addUser(User user) {
    print("Admin added user with email: ${user.email}");
  }
  void updateUser(User user) {
    print("Admin updated user with email: ${user.email}");
  }
  void viewUser(User user) {
    print("Admin viewed user with email: ${user.email}");
  }
  void viewAllUsers(List<User> users) {
    print("Admin viewed all users:");
    for (var user in users) {
      print("User email: ${user.email}");
    }
  }
}

class Moderator extends User {
  String role = "Moderator";

  @override
  void login() {
    print("Moderator logged in with email: $email and role: $role");
  }

  void moderateContent() {
    print("Moderator can moderate content.");
  }
}

class ReadUser extends NormalUser {
  String role = "Read-Only User";

  @override
  void login() {
    print("Read-Only User logged in with email: $email and role: $role");
  }

  void read(){
    print("Read-Only User can read content but cannot modify it.");
  }

}
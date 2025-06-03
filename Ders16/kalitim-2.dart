// OOP Giriş 4 Polymorphism ve Kalıtım
// Superclass ve Subclass

void main(List<String> args) {
  User user = User( "osman - user", "password123");
  user.email = "osman - user";
  user.password = "password123";
  Login(user);

  NormalUser normalUser = NormalUser("osman - normal", "normalPassword");
  normalUser.email = "osman - normal";
  normalUser.password = "normalPassword";
  Login(normalUser);

  Admin admin = Admin("osman - admin", "adminPassword");
  admin.email = "osman - admin";
  admin.password = "adminPassword";
  Login(admin);

  admin.deleteUser(normalUser);
  admin.addUser(user);

  Moderator moderator = Moderator("osman - moderator","moderatorPassword");
  moderator.email = "osman - moderator";
  moderator.password = "moderatorPassword";
  Login(moderator);
  moderator.moderateContent();

  ReadUser readUser = ReadUser("osman - read", "readPassword");
  readUser.email = "osman - read";
  readUser.password = "readPassword";
  Login(readUser);
  readUser.read();
}

void Login(User user) {
  user.login();
}

class User {
  String password = "";
  String email = "";

  User(this.email, this.password); // Constructor with parameters
  

  void login() {
    print("User logged in with email: $email");
  }
}

class NormalUser extends User {
  String role = "Normal User";
  NormalUser(String email, String password) : super(email, password); // Constructor with parameters

  void setEmail(String email) {
    super.email = email; // Using super to access the superclass property
  }

  @override
  void login() {
    print("Normal User logged in with email: $email and role: $role");
  }
}

class Admin extends User {
  String role = "Admin";
  Admin(String email, String password) : super(email, password); // Constructor with parameters

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
  Moderator(String email, String password) : super(email, password); // Constructor with parameters

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
  ReadUser(String email, String password) : super(email, password); // Constructor with parameters 

  @override
  void login() {
    print("Read-Only User logged in with email: $email and role: $role");
  }

  void read() {
    print("Read-Only User can read content but cannot modify it.");
  }
}

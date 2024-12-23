// !!!!!!!!!!!!!!!!!!!!!! Class 06 !!!!!!!!!!!!!!!!!!!!!!
// !!!!!!!!!!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!!!!!!!

abstract class Greeting {
  public SayHi(): string {
    return "Hi";
  }

  protected SayHello(name: string): string {
    return "Hello " + name;
  }

  //   public Morning();
}

// const greeting=new Greeting();

class Person extends Greeting {
  private name: string;

  constructor(name: string) {
    super();
    this.name = name;
  }

  public SayHello(name: string): string {
    console.log(super.SayHello(name));

    return "";
  }
}

const p1 = new Person("Usman");

console.log(p1.SayHi());
p1.SayHello("Taha");

// interface
interface Auth {
  name: string;
  email: string;
  password: string;
  islogedIn: boolean;
  login(email: string, password: string): void;
  signup(): void;
  logout(): void;
  authCheck(): boolean;
}

class User implements Auth {
  public name: string;
  public email: string;
  public islogedIn: boolean = false;
  public password: string;

  constructor(name: string, email: string, password: string) {
    (this.name = name), (this.email = email), (this.password = password);
  }
  login(email: string, password: string): void {
    if (this.email == email && this.password == password) {
      console.log("Your are Loged In");
      this.islogedIn = true;
    } else {
      throw new Error("Invalid Email Or Password");
    }
  }
  signup(): void {
    throw new Error("Method not implemented.");
  }
  logout(): void {
    throw new Error("Method not implemented.");
  }
  authCheck(): boolean {
    throw new Error("Method not implemented.");
  }
}

// Static Class

class Emp {
  public static name: string = "";
  public static setName(name: string) {
    console.log(name);
    Emp.name = name;
  }
}

Emp.setName("Yasir");
console.log(Emp.name);

type ApiResponse = {
  id: number;
  userId: number;
  body: string;
  title: string;
  views: number;
  reactions: { likes: number; dislikes: number };
  tags: string[];
};

const apiCall = async () => {
  let url: string = "https://dummyjson.com/posts";

  const res = await fetch(url);
  const data = await res.json();
  let firstobj = data.posts[0] as ApiResponse;
  console.log(firstobj.userId);
};

apiCall();

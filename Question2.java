/* Java */
import java.io.Console;

interface DomesticAnimal {
    String getName();
    public void setName(String name);
}

class Question2 implements DomesticAnimal {
    private String animal;
    public void setName(String name){
         this.animal = name;
    }
    public String getName() {
          return this.animal;
    }
    public static void main(String arg[])
    {
      Console console = System.console();
      String animal = console.readLine("Name of Domestic Animal:  ");

      DomesticAnimal obj = new Question2();
      obj. setName(animal);
    }
}
		
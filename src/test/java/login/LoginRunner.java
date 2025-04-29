package login;

import com.intuit.karate.junit5.Karate;

public class LoginRunner {

    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass()); //Ejecutará_todo_.feature que se encuentre dentro de la ruta de la clase
    }

}


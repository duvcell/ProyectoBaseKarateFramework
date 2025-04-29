package users;

import com.intuit.karate.junit5.Karate;

public class ListUsersRunner{

    @Karate.Test
    Karate listUserRunner() {
        return Karate.run().relativeTo(getClass());//Ejecutará_todo_.feature que se encuentre dentro de la ruta de la clase
    }

}

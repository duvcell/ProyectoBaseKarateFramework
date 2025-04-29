package login;

import com.intuit.karate.junit5.Karate;

public class RefactorLoginRunner {
    @Karate.Test
    Karate testRefactor() {
        return Karate.run().path("./src/test/java/login/login-refactor.feature"); //Ejecuta sólo el .feature que se indique
    }
}

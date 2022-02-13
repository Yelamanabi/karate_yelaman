package conduitApp;

import com.intuit.karate.junit5.Karate;

   

class ConduitTest {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("users").relativeTo(getClass());
    }
    //@Karate.Test
   // Karate testTags() {
    //return Karate.run().tags("@debug").relativeTo(getClass());
    }
}

import static org.junit.Assert.*;
import java.util.Arrays;
import java.util.List;
import org.junit.*;

public class TestListExamples {
    int score = 0;
    @Test
    public void testFilter() {
        List<String> input = Arrays.asList("1", "12", "123", "1234", "12345", "123456", "1234567", "12345678", "123456789");
        List<String> expected = Arrays.asList("1", "12", "123", "1234");
        assertEquals(expected, ListExamples.filter(input, new ListExamples()));
    }
}
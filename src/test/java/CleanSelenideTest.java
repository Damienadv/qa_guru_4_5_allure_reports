import com.codeborne.selenide.Condition;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selectors.withText;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;

public class CleanSelenideTest {

    private static final String REPOSITORY = "eroshenkoam/allure-example";
    private static final String ISSUE_NUMBER = "#50";


    @Test
    public void testIssueSearchWithName() {
        final String repository = "eroshenkoam/allure-example";

        open("http://github.com");
        $(".header-search-input").click();
        $(".header-search-input").setValue(REPOSITORY);
        $(".header-search-input").submit();
        $(By.linkText(REPOSITORY)).click();
        $(withText("Issues")).click();
        $(withText(ISSUE_NUMBER)).should(Condition.exist);
    }





}

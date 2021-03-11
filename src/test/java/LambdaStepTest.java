import com.codeborne.selenide.Condition;
import com.codeborne.selenide.conditions.Visible;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selectors.withText;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;
import static io.qameta.allure.Allure.step;

public class LambdaStepTest {

    private static final String REPOSITORY = "eroshenkoam/allure-example";
    private static final String ISSUE_NUMBER = "#50";
    private static final String BASE_URL = "https://github.com/";
    public static final Condition visible = new Visible();


    @Test
    public void testIssueSearchWithName() {

        step("Открываем главную страницу", () ->
                open(BASE_URL)
        );

        step("Ищем репозиторий  " + REPOSITORY, () ->
                $(".header-search-input").setValue(REPOSITORY).submit());

        step("Кликаем на репозиторий " + REPOSITORY, () ->
                $(By.linkText(REPOSITORY)).click()
        );

        step("Кликаем по вкладке Issues", () ->
                $(withText("Issues")).click()
        );
        step("Проверяем, что Issue с именем " + ISSUE_NUMBER + " существует", () ->{
            $(withText(ISSUE_NUMBER)).shouldBe(visible);
        });
    }
}

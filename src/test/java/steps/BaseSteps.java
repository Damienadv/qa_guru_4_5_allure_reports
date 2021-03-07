package steps;

import com.codeborne.selenide.Condition;
import io.qameta.allure.Step;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selectors.withText;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;

public class BaseSteps {

    private static final String BASE_URL = "https://github.com/";

    @Step("Открываем главную страницу")
    public void openMainPage() {
        open(BASE_URL);
    }

    @Step("Ищем репозиторий {repository} по имени")
    public void searchForRepository(String  repository) {
        $(".header-search-input").setValue(repository).submit();
    }

    @Step("Открываем репозиторий {repository}")
    public void goToRepositoryFromSearch(String repository){
        $(By.linkText(repository)).click();
    }

    @Step("Открываем вкладку Issues репозитория")
    public void openRepositoryIssues(){
        $(withText("Issues")).click();
    }
    @Step("Проверяем, что в репозитории есть Issue с номером {issueNumber}")
    public void shouldSeeIssueWithNumber(String issueNumber){
        $(withText(issueNumber)).should(Condition.exist);
    }
}

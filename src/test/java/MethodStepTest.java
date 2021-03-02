import io.qameta.allure.Owner;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Tags;
import org.junit.jupiter.api.Test;
import steps.BaseSteps;


public class MethodStepTest {

    private static final String REPOSITORY = "eroshenkoam/allure-example";
    private static final String ISSUE_NUMBER = "#50";


    final BaseSteps step = new BaseSteps();

    @Test
    @Owner("andropovdv")
    @Tags({@Tag("web"), @Tag("allureforeva")})
    @DisplayName("Ищем красиво")
    public void testIssueSearchWithName() {
        step.openMainPage();
        step.searchForRepository(REPOSITORY);
        step.goToRepositoryFromSearch(REPOSITORY);
        step.openRepositoryIssues();
        step.shouldSeeIssueWithNumber(ISSUE_NUMBER);
    }
}

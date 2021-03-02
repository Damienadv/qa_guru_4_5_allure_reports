[33mcommit 5f3396fc380fb7c421d216a17e33bcda90e8800e[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m)[m
Author: Damienadv <andropovdv@gmail.com>
Date:   Wed Mar 3 01:15:25 2021 +0300

    Task #5 has done

[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..f48c469[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,43 @@[m
[32m+[m
[32m+[m[32m# Compiled class file[m
[32m+[m[32m*.class[m
[32m+[m
[32m+[m[32m# Log file[m
[32m+[m[32m*.log[m
[32m+[m
[32m+[m[32m# BlueJ files[m
[32m+[m[32m*.ctxt[m
[32m+[m
[32m+[m[32m# Mobile Tools for Java (J2ME)[m
[32m+[m[32m.mtj.tmp/[m
[32m+[m
[32m+[m[32m# Properties files[m
[32m+[m[32m*.properties[m
[32m+[m
[32m+[m[32m# Package Files #[m
[32m+[m[32m*.jar[m
[32m+[m[32m*.war[m
[32m+[m[32m*.nar[m
[32m+[m[32m*.ear[m
[32m+[m[32m*.zip[m
[32m+[m[32m*.tar.gz[m
[32m+[m[32m*.rar[m
[32m+[m[32m*.iml[m
[32m+[m
[32m+[m[32m# Project gen files[m
[32m+[m[32m.idea[m
[32m+[m[32m.allure/[m
[32m+[m[32m.gradle/[m
[32m+[m[32mallure-results/[m
[32m+[m[32mgradle/[m
[32m+[m[32mbuild/[m
[32m+[m[32mbin/[m
[32m+[m[32mout/[m
[32m+[m[32mlogs/[m
[32m+[m[32mtarget/[m
[32m+[m[32m.classpath[m
[32m+[m[32m.project[m
[32m+[m[32m.settings/org.eclipse.buildship.core.prefs[m
[32m+[m[32m.vscode[m
[32m+[m[32m/gradlew[m
[32m+[m[32m/gradlew.bat[m
\ No newline at end of file[m
[1mdiff --git a/build.gradle b/build.gradle[m
[1mnew file mode 100644[m
[1mindex 0000000..2186ae0[m
[1m--- /dev/null[m
[1m+++ b/build.gradle[m
[36m@@ -0,0 +1,39 @@[m
[32m+[m[32mplugins {[m
[32m+[m[32m    id "java"[m
[32m+[m[32m    id "io.qameta.allure" version "2.8.1"[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32mrepositories {[m
[32m+[m[32m    mavenCentral()[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mtasks.withType(JavaCompile) {[m
[32m+[m[32m    options.encoding = 'UTF-8'[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mallure {[m
[32m+[m[32m    autoconfigure = true[m
[32m+[m[32m    version = '2.13.8'[m
[32m+[m
[32m+[m[32m    useJUnit5 {[m
[32m+[m[32m        version = '2.13.8'[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m[32mdependencies {[m
[32m+[m[32m    compile("com.codeborne:selenide:5.18.0")[m
[32m+[m
[32m+[m[32m    compile("org.junit.jupiter:junit-jupiter-api:5.7.0")[m
[32m+[m[32m    compile("org.junit.jupiter:junit-jupiter-engine:5.7.0")[m
[32m+[m[32m    compile("org.junit.jupiter:junit-jupiter-params:5.7.0")[m
[32m+[m
[32m+[m[32m    compile("io.qameta.allure:allure-java-commons:2.13.8")[m
[32m+[m[32m    compile("io.qameta.allure:allure-selenide:2.13.8")[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mtest {[m
[32m+[m[32m    useJUnitPlatform()[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/src/test/java/CleanSelenideTest.java b/src/test/java/CleanSelenideTest.java[m
[1mnew file mode 100644[m
[1mindex 0000000..fb1b76f[m
[1m--- /dev/null[m
[1m+++ b/src/test/java/CleanSelenideTest.java[m
[36m@@ -0,0 +1,32 @@[m
[32m+[m[32mimport com.codeborne.selenide.Condition;[m
[32m+[m[32mimport org.junit.jupiter.api.Test;[m
[32m+[m[32mimport org.openqa.selenium.By;[m
[32m+[m
[32m+[m[32mimport static com.codeborne.selenide.Selectors.withText;[m
[32m+[m[32mimport static com.codeborne.selenide.Selenide.$;[m
[32m+[m[32mimport static com.codeborne.selenide.Selenide.open;[m
[32m+[m
[32m+[m[32mpublic class CleanSelenideTest {[m
[32m+[m
[32m+[m[32m    private static final String REPOSITORY = "eroshenkoam/allure-example";[m
[32m+[m[32m    private static final String ISSUE_NUMBER = "#50";[m
[32m+[m
[32m+[m
[32m+[m[32m    @Test[m
[32m+[m[32m    public void testIssueSearchWithName() {[m
[32m+[m[32m        final String repository = "eroshenkoam/allure-example";[m
[32m+[m
[32m+[m[32m        open("http://github.com");[m
[32m+[m[32m        $(".header-search-input").click();[m
[32m+[m[32m        $(".header-search-input").setValue(REPOSITORY);[m
[32m+[m[32m        $(".header-search-input").submit();[m
[32m+[m[32m        $(By.linkText(REPOSITORY)).click();[m
[32m+[m[32m        $(withText("Issues")).click();[m
[32m+[m[32m        $(withText(ISSUE_NUMBER)).should(Condition.exist);[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32m}[m
[1mdiff --git a/src/test/java/LambdaStepTest.java b/src/test/java/LambdaStepTest.java[m
[1mnew file mode 100644[m
[1mindex 0000000..7a44b2e[m
[1m--- /dev/null[m
[1m+++ b/src/test/java/LambdaStepTest.java[m
[36m@@ -0,0 +1,41 @@[m
[32m+[m[32mimport com.codeborne.selenide.Condition;[m
[32m+[m[32mimport org.junit.jupiter.api.Test;[m
[32m+[m[32mimport org.openqa.selenium.By;[m
[32m+[m
[32m+[m[32mimport static com.codeborne.selenide.Selectors.withText;[m
[32m+[m[32mimport static com.codeborne.selenide.Selenide.$;[m
[32m+[m[32mimport static com.codeborne.selenide.Selenide.open;[m
[32m+[m[32mimport static io.qameta.allure.Allure.step;[m
[32m+[m
[32m+[m[32mpublic class LambdaStepTest {[m
[32m+[m
[32m+[m[32m    private static final String REPOSITORY = "eroshenkoam/allure-example";[m
[32m+[m[32m    private static final String ISSUE_NUMBER = "#50";[m
[32m+[m[32m    private static final String BASE_URL = "https://github.com/";[m
[32m+[m
[32m+[m
[32m+[m[32m    @Test[m
[32m+[m[32m    public void testIssueSearchWithName() {[m
[32m+[m
[32m+[m[32m        step("Открываем главную страницу", () ->[m
[32m+[m[32m                open(BASE_URL)[m
[32m+[m[32m        );[m
[32m+[m
[32m+[m[32m        step("Ищем репозиторий  " + REPOSITORY, () ->{[m
[32m+[m[32m            $(".header-search-input").click();[m
[32m+[m[32m            $(".header-search-input").setValue(REPOSITORY);[m
[32m+[m[32m            $(".header-search-input").submit();[m
[32m+[m[32m        });[m
[32m+[m
[32m+[m[32m        step("Кликаем на репозиторий " + REPOSITORY, () ->[m
[32m+[m[32m                $(By.linkText(REPOSITORY)).click()[m
[32m+[m[32m        );[m
[32m+[m
[32m+[m[32m        step("Кликаем по вкладке Issues", () ->[m
[32m+[m[32m                $(withText("Issues")).click()[m
[32m+[m[32m        );[m
[32m+[m[32m        step("Проверяем, что Issue с именем " + ISSUE_NUMBER + " существует", () ->{[m
[32m+[m[32m            $(withText(ISSUE_NUMBER)).should(Condition.exist);[m
[32m+[m[32m        });[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/test/java/MethodStepTest.java b/src/test/java/MethodStepTest.java[m
[1mnew file mode 100644[m
[1mindex 0000000..7d3ff71[m
[1m--- /dev/null[m
[1m+++ b/src/test/java/MethodStepTest.java[m
[36m@@ -0,0 +1,28 @@[m
[32m+[m[32mimport io.qameta.allure.Owner;[m
[32m+[m[32mimport org.junit.jupiter.api.DisplayName;[m
[32m+[m[32mimport org.junit.jupiter.api.Tag;[m
[32m+[m[32mimport org.junit.jupiter.api.Tags;[m
[32m+[m[32mimport org.junit.jupiter.api.Test;[m
[32m+[m[32mimport steps.BaseSteps;[m
[32m+[m
[32m+[m
[32m+[m[32mpublic class MethodStepTest {[m
[32m+[m
[32m+[m[32m    private static final String REPOSITORY = "eroshenkoam/allure-example";[m
[32m+[m[32m    private static final String ISSUE_NUMBER = "#50";[m
[32m+[m
[32m+[m
[32m+[m[32m    final BaseSteps step = new BaseSteps();[m
[32m+[m
[32m+[m[32m    @Test[m
[32m+[m[32m    @Owner("andropovdv")[m
[32m+[m[32m    @Tags({@Tag("web"), @Tag("allureforeva")})[m
[32m+[m[32m    @DisplayName("Ищем красиво")[m
[32m+[m[32m    public void testIssueSearchWithName() {[m
[32m+[m[32m        step.openMainPage();[m
[32m+[m[32m        step.searchForRepository(REPOSITORY);[m
[32m+[m[32m        step.goToRepositoryFromSearch(REPOSITORY);[m
[32m+[m[32m        step.openRepositoryIssues();[m
[32m+[m[32m  
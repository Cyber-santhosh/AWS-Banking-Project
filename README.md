# AWS-Banking-Project
DevOps project to solve impliment the CICD automation.

Project Problems need to address:
-----------------
 Building Complex Monolithic Application is difficult.
 Manual efforts to test various components/modules of the project
 Incremental builds are difficult to manage, test and deploy.
 It was not possible to scale up individual modules independently.
 Creation of infrastructure and configure it manually is very time consuming
 Continuous manual monitoring the application is quite challenging. 

Solution going to build:
------------------
 Git - For version control for tracking changes in the code files


My-Jenkins Console OUTPUT:
Started by user DevOpsAdministrator
[Pipeline] Start of Pipeline
[Pipeline] node
Running on build-agent in /home/devopsadmin/workspace/AWS-capestone-project
[Pipeline] {
[Pipeline] withCredentials
Masking supported pattern matches of $dockerlogin or $dockerlogin_PSW
[Pipeline] {
[Pipeline] withEnv
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Git SCM checkout)
[Pipeline] git
Selected Git installation does not exist. Using Default
The recommended git tool is: NONE
No credentials specified
Fetching changes from the remote Git repository
Checking out Revision 1142ee7f19dd19e02e3845bb0ba153716a663dd0 (refs/remotes/origin/master)
Commit message: "Update Docker image version for banking app"
 > git rev-parse --resolve-git-dir /home/devopsadmin/workspace/AWS-capestone-project/.git # timeout=10
 > git config remote.origin.url https://github.com/Cyber-santhosh/AWS-Banking-Project.git # timeout=10
Fetching upstream changes from https://github.com/Cyber-santhosh/AWS-Banking-Project.git
 > git --version # timeout=10
 > git --version # 'git version 2.43.0'
 > git fetch --tags --force --progress -- https://github.com/Cyber-santhosh/AWS-Banking-Project.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/master^{commit} # timeout=10
 > git config core.sparsecheckout # timeout=10
 > git checkout -f 1142ee7f19dd19e02e3845bb0ba153716a663dd0 # timeout=10
 > git branch -a -v --no-abbrev # timeout=10
 > git branch -D master # timeout=10
 > git checkout -b master 1142ee7f19dd19e02e3845bb0ba153716a663dd0 # timeout=10
 > git rev-list --no-walk 1142ee7f19dd19e02e3845bb0ba153716a663dd0 # timeout=10
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Build stage)
[Pipeline] sh
+ mvn clean package
[[1;34mINFO[m] Scanning for projects...
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m------------------------< [0;36mcom.project:banking[0;1m >-------------------------[m
[[1;34mINFO[m] [1mBuilding banking 0.0.1-SNAPSHOT[m
[[1;34mINFO[m] [1m--------------------------------[ jar ]---------------------------------[m
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-clean-plugin:3.2.0:clean[m [1m(default-clean)[m @ [36mbanking[0;1m ---[m
[[1;34mINFO[m] Deleting /home/devopsadmin/workspace/AWS-capestone-project/target
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-resources-plugin:3.2.0:resources[m [1m(default-resources)[m @ [36mbanking[0;1m ---[m
[[1;34mINFO[m] Using 'UTF-8' encoding to copy filtered resources.
[[1;34mINFO[m] Using 'UTF-8' encoding to copy filtered properties files.
[[1;34mINFO[m] Copying 1 resource
[[1;34mINFO[m] Copying 81 resources
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-compiler-plugin:3.10.1:compile[m [1m(default-compile)[m @ [36mbanking[0;1m ---[m
[[1;34mINFO[m] Changes detected - recompiling the module!
[[1;34mINFO[m] Compiling 5 source files to /home/devopsadmin/workspace/AWS-capestone-project/target/classes
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-resources-plugin:3.2.0:testResources[m [1m(default-testResources)[m @ [36mbanking[0;1m ---[m
[[1;34mINFO[m] Using 'UTF-8' encoding to copy filtered resources.
[[1;34mINFO[m] Using 'UTF-8' encoding to copy filtered properties files.
[[1;34mINFO[m] skip non existing resourceDirectory /home/devopsadmin/workspace/AWS-capestone-project/src/test/resources
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-compiler-plugin:3.10.1:testCompile[m [1m(default-testCompile)[m @ [36mbanking[0;1m ---[m
[[1;34mINFO[m] Changes detected - recompiling the module!
[[1;34mINFO[m] Compiling 2 source files to /home/devopsadmin/workspace/AWS-capestone-project/target/test-classes
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-surefire-plugin:2.22.2:test[m [1m(default-test)[m @ [36mbanking[0;1m ---[m
[[1;34mINFO[m] 
[[1;34mINFO[m] -------------------------------------------------------
[[1;34mINFO[m]  T E S T S
[[1;34mINFO[m] -------------------------------------------------------
[[1;34mINFO[m] Running com.project.banking.[1mBankingApplicationTests[m
10:13:17.879 [main] DEBUG org.springframework.test.context.BootstrapUtils - Instantiating CacheAwareContextLoaderDelegate from class [org.springframework.test.context.cache.DefaultCacheAwareContextLoaderDelegate]
10:13:17.885 [main] DEBUG org.springframework.test.context.BootstrapUtils - Instantiating BootstrapContext using constructor [public org.springframework.test.context.support.DefaultBootstrapContext(java.lang.Class,org.springframework.test.context.CacheAwareContextLoaderDelegate)]
10:13:17.914 [main] DEBUG org.springframework.test.context.BootstrapUtils - Instantiating TestContextBootstrapper for test class [com.project.banking.BankingApplicationTests] from class [org.springframework.boot.test.context.SpringBootTestContextBootstrapper]
10:13:17.922 [main] INFO org.springframework.boot.test.context.SpringBootTestContextBootstrapper - Neither @ContextConfiguration nor @ContextHierarchy found for test class [com.project.banking.BankingApplicationTests], using SpringBootContextLoader
10:13:17.924 [main] DEBUG org.springframework.test.context.support.AbstractContextLoader - Did not detect default resource location for test class [com.project.banking.BankingApplicationTests]: class path resource [com/project/banking/BankingApplicationTests-context.xml] does not exist
10:13:17.924 [main] DEBUG org.springframework.test.context.support.AbstractContextLoader - Did not detect default resource location for test class [com.project.banking.BankingApplicationTests]: class path resource [com/project/banking/BankingApplicationTestsContext.groovy] does not exist
10:13:17.925 [main] INFO org.springframework.test.context.support.AbstractContextLoader - Could not detect default resource locations for test class [com.project.banking.BankingApplicationTests]: no resource found for suffixes {-context.xml, Context.groovy}.
10:13:17.926 [main] INFO org.springframework.test.context.support.AnnotationConfigContextLoaderUtils - Could not detect default configuration classes for test class [com.project.banking.BankingApplicationTests]: BankingApplicationTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
10:13:17.958 [main] DEBUG org.springframework.test.context.support.ActiveProfilesUtils - Could not find an 'annotation declaring class' for annotation type [org.springframework.test.context.ActiveProfiles] and class [com.project.banking.BankingApplicationTests]
10:13:18.011 [main] DEBUG org.springframework.context.annotation.ClassPathScanningCandidateComponentProvider - Identified candidate component class: file [/home/devopsadmin/workspace/AWS-capestone-project/target/classes/com/project/banking/BankingApplication.class]
10:13:18.012 [main] INFO org.springframework.boot.test.context.SpringBootTestContextBootstrapper - Found @SpringBootConfiguration com.project.banking.BankingApplication for test class com.project.banking.BankingApplicationTests
10:13:18.073 [main] DEBUG org.springframework.boot.test.context.SpringBootTestContextBootstrapper - @TestExecutionListeners is not present for class [com.project.banking.BankingApplicationTests]: using defaults.
10:13:18.073 [main] INFO org.springframework.boot.test.context.SpringBootTestContextBootstrapper - Loaded default TestExecutionListener class names from location [META-INF/spring.factories]: [org.springframework.boot.test.mock.mockito.MockitoTestExecutionListener, org.springframework.boot.test.mock.mockito.ResetMocksTestExecutionListener, org.springframework.boot.test.autoconfigure.restdocs.RestDocsTestExecutionListener, org.springframework.boot.test.autoconfigure.web.client.MockRestServiceServerResetTestExecutionListener, org.springframework.boot.test.autoconfigure.web.servlet.MockMvcPrintOnlyOnFailureTestExecutionListener, org.springframework.boot.test.autoconfigure.web.servlet.WebDriverTestExecutionListener, org.springframework.boot.test.autoconfigure.webservices.client.MockWebServiceServerTestExecutionListener, org.springframework.test.context.web.ServletTestExecutionListener, org.springframework.test.context.support.DirtiesContextBeforeModesTestExecutionListener, org.springframework.test.context.event.ApplicationEventsTestExecutionListener, org.springframework.test.context.support.DependencyInjectionTestExecutionListener, org.springframework.test.context.support.DirtiesContextTestExecutionListener, org.springframework.test.context.transaction.TransactionalTestExecutionListener, org.springframework.test.context.jdbc.SqlScriptsTestExecutionListener, org.springframework.test.context.event.EventPublishingTestExecutionListener]
10:13:18.087 [main] INFO org.springframework.boot.test.context.SpringBootTestContextBootstrapper - Using TestExecutionListeners: [org.springframework.test.context.web.ServletTestExecutionListener@6cb6decd, org.springframework.test.context.support.DirtiesContextBeforeModesTestExecutionListener@c7045b9, org.springframework.test.context.event.ApplicationEventsTestExecutionListener@f99f5e0, org.springframework.boot.test.mock.mockito.MockitoTestExecutionListener@6aa61224, org.springframework.boot.test.autoconfigure.SpringBootDependencyInjectionTestExecutionListener@30bce90b, org.springframework.test.context.support.DirtiesContextTestExecutionListener@3e6f3f28, org.springframework.test.context.transaction.TransactionalTestExecutionListener@7e19ebf0, org.springframework.test.context.jdbc.SqlScriptsTestExecutionListener@2474f125, org.springframework.test.context.event.EventPublishingTestExecutionListener@7357a011, org.springframework.boot.test.mock.mockito.ResetMocksTestExecutionListener@3406472c, org.springframework.boot.test.autoconfigure.restdocs.RestDocsTestExecutionListener@5717c37, org.springframework.boot.test.autoconfigure.web.client.MockRestServiceServerResetTestExecutionListener@68f4865, org.springframework.boot.test.autoconfigure.web.servlet.MockMvcPrintOnlyOnFailureTestExecutionListener@4816278d, org.springframework.boot.test.autoconfigure.web.servlet.WebDriverTestExecutionListener@4eaf3684, org.springframework.boot.test.autoconfigure.webservices.client.MockWebServiceServerTestExecutionListener@40317ba2]
10:13:18.090 [main] DEBUG org.springframework.test.context.support.AbstractDirtiesContextTestExecutionListener - Before test class: context [DefaultTestContext@5a5338df testClass = BankingApplicationTests, testInstance = [null], testMethod = [null], testException = [null], mergedContextConfiguration = [WebMergedContextConfiguration@418c5a9c testClass = BankingApplicationTests, locations = '{}', classes = '{class com.project.banking.BankingApplication}', contextInitializerClasses = '[]', activeProfiles = '{}', propertySourceLocations = '{}', propertySourceProperties = '{org.springframework.boot.test.context.SpringBootTestContextBootstrapper=true}', contextCustomizers = set[org.springframework.boot.test.context.filter.ExcludeFilterContextCustomizer@683dbc2c, org.springframework.boot.test.json.DuplicateJsonObjectContextCustomizerFactory$DuplicateJsonObjectContextCustomizer@313b2ea6, org.springframework.boot.test.mock.mockito.MockitoContextCustomizer@0, org.springframework.boot.test.web.client.TestRestTemplateContextCustomizer@4470f8a6, org.springframework.boot.test.autoconfigure.actuate.metrics.MetricsExportContextCustomizerFactory$DisableMetricExportContextCustomizer@568ff82, org.springframework.boot.test.autoconfigure.properties.PropertyMappingContextCustomizer@0, org.springframework.boot.test.autoconfigure.web.servlet.WebDriverContextCustomizerFactory$Customizer@78ffe6dc, org.springframework.boot.test.context.SpringBootTestArgs@1, org.springframework.boot.test.context.SpringBootTestWebEnvironment@60c6f5b], resourceBasePath = 'src/main/webapp', contextLoader = 'org.springframework.boot.test.context.SpringBootContextLoader', parent = [null]], attributes = map['org.springframework.test.context.web.ServletTestExecutionListener.activateListener' -> true]], class annotated with @DirtiesContext [false] with mode [null].

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::                (v2.7.4)

2026-10-08 10:13:18.329  INFO 57381 --- [           main] c.p.banking.BankingApplicationTests      : Starting BankingApplicationTests using Java 17.0.20.1 on ip-172-31-12-156 with PID 57381 (started by devopsadmin in /home/devopsadmin/workspace/AWS-capestone-project)
2026-10-08 10:13:18.330  INFO 57381 --- [           main] c.p.banking.BankingApplicationTests      : No active profile set, falling back to 1 default profile: "default"
2026-10-08 10:13:18.853  INFO 57381 --- [           main] .s.d.r.c.RepositoryConfigurationDelegate : Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2026-10-08 10:13:18.893  INFO 57381 --- [           main] .s.d.r.c.RepositoryConfigurationDelegate : Finished Spring Data repository scanning in 32 ms. Found 1 JPA repository interfaces.
2026-10-08 10:13:19.310  INFO 57381 --- [           main] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Starting...
2026-10-08 10:13:19.449  INFO 57381 --- [           main] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Start completed.
2026-10-08 10:13:19.505  INFO 57381 --- [           main] o.hibernate.jpa.internal.util.LogHelper  : HHH000204: Processing PersistenceUnitInfo [name: default]
2026-10-08 10:13:19.539  INFO 57381 --- [           main] org.hibernate.Version                    : HHH000412: Hibernate ORM core version 5.6.11.Final
2026-10-08 10:13:19.638  INFO 57381 --- [           main] o.hibernate.annotations.common.Version   : HCANN000001: Hibernate Commons Annotations {5.1.2.Final}
2026-10-08 10:13:19.718  INFO 57381 --- [           main] org.hibernate.dialect.Dialect            : HHH000400: Using dialect: org.hibernate.dialect.H2Dialect
2026-10-08 10:13:20.052  INFO 57381 --- [           main] o.h.e.t.j.p.i.JtaPlatformInitiator       : HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2026-10-08 10:13:20.057  INFO 57381 --- [           main] j.LocalContainerEntityManagerFactoryBean : Initialized JPA EntityManagerFactory for persistence unit 'default'
2026-10-08 10:13:20.490  WARN 57381 --- [           main] JpaBaseConfiguration$JpaWebConfiguration : spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2026-10-08 10:13:20.629  INFO 57381 --- [           main] o.s.b.a.w.s.WelcomePageHandlerMapping    : Adding welcome page: class path resource [static/index.html]
2026-10-08 10:13:20.849  INFO 57381 --- [           main] c.p.banking.BankingApplicationTests      : Started BankingApplicationTests in 2.735 seconds (JVM running for 3.536)
[[1;34mINFO[m] [1;32mTests run: [0;1;32m1[m, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 3.183 s - in com.project.banking.[1mBankingApplicationTests[m
[[1;34mINFO[m] Running com.project.banking.[1mTestAccountService[m
2026-10-08 10:13:20.998  INFO 57381 --- [           main] .b.t.c.SpringBootTestContextBootstrapper : Neither @ContextConfiguration nor @ContextHierarchy found for test class [com.project.banking.TestAccountService], using SpringBootContextLoader
2026-10-08 10:13:20.999  INFO 57381 --- [           main] o.s.t.c.support.AbstractContextLoader    : Could not detect default resource locations for test class [com.project.banking.TestAccountService]: no resource found for suffixes {-context.xml, Context.groovy}.
2026-10-08 10:13:20.999  INFO 57381 --- [           main] t.c.s.AnnotationConfigContextLoaderUtils : Could not detect default configuration classes for test class [com.project.banking.TestAccountService]: TestAccountService does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2026-10-08 10:13:21.002  INFO 57381 --- [           main] .b.t.c.SpringBootTestContextBootstrapper : Found @SpringBootConfiguration com.project.banking.BankingApplication for test class com.project.banking.TestAccountService
2026-10-08 10:13:21.004  INFO 57381 --- [           main] .b.t.c.SpringBootTestContextBootstrapper : Loaded default TestExecutionListener class names from location [META-INF/spring.factories]: [org.springframework.boot.test.mock.mockito.MockitoTestExecutionListener, org.springframework.boot.test.mock.mockito.ResetMocksTestExecutionListener, org.springframework.boot.test.autoconfigure.restdocs.RestDocsTestExecutionListener, org.springframework.boot.test.autoconfigure.web.client.MockRestServiceServerResetTestExecutionListener, org.springframework.boot.test.autoconfigure.web.servlet.MockMvcPrintOnlyOnFailureTestExecutionListener, org.springframework.boot.test.autoconfigure.web.servlet.WebDriverTestExecutionListener, org.springframework.boot.test.autoconfigure.webservices.client.MockWebServiceServerTestExecutionListener, org.springframework.test.context.web.ServletTestExecutionListener, org.springframework.test.context.support.DirtiesContextBeforeModesTestExecutionListener, org.springframework.test.context.event.ApplicationEventsTestExecutionListener, org.springframework.test.context.support.DependencyInjectionTestExecutionListener, org.springframework.test.context.support.DirtiesContextTestExecutionListener, org.springframework.test.context.transaction.TransactionalTestExecutionListener, org.springframework.test.context.jdbc.SqlScriptsTestExecutionListener, org.springframework.test.context.event.EventPublishingTestExecutionListener]
2026-10-08 10:13:21.005  INFO 57381 --- [           main] .b.t.c.SpringBootTestContextBootstrapper : Using TestExecutionListeners: [org.springframework.test.context.web.ServletTestExecutionListener@c6d7256, org.springframework.test.context.support.DirtiesContextBeforeModesTestExecutionListener@48188d23, org.springframework.test.context.event.ApplicationEventsTestExecutionListener@4860627a, org.springframework.boot.test.mock.mockito.MockitoTestExecutionListener@67f0bf7e, org.springframework.boot.test.autoconfigure.SpringBootDependencyInjectionTestExecutionListener@e88e14, org.springframework.test.context.support.DirtiesContextTestExecutionListener@c157abf, org.springframework.test.context.transaction.TransactionalTestExecutionListener@472dbaf5, org.springframework.test.context.jdbc.SqlScriptsTestExecutionListener@25c4f621, org.springframework.test.context.event.EventPublishingTestExecutionListener@619854a3, org.springframework.boot.test.mock.mockito.ResetMocksTestExecutionListener@46ff1aad, org.springframework.boot.test.autoconfigure.restdocs.RestDocsTestExecutionListener@6c2fea95, org.springframework.boot.test.autoconfigure.web.client.MockRestServiceServerResetTestExecutionListener@6ed87ccf, org.springframework.boot.test.autoconfigure.web.servlet.MockMvcPrintOnlyOnFailureTestExecutionListener@4d4600fb, org.springframework.boot.test.autoconfigure.web.servlet.WebDriverTestExecutionListener@7352418c, org.springframework.boot.test.autoconfigure.webservices.client.MockWebServiceServerTestExecutionListener@60ba6631]
[[1;34mINFO[m] [1;32mTests run: [0;1;32m1[m, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 0.001 s - in com.project.banking.[1mTestAccountService[m
2026-10-08 10:13:21.041  INFO 57381 --- [ionShutdownHook] j.LocalContainerEntityManagerFactoryBean : Closing JPA EntityManagerFactory for persistence unit 'default'
2026-10-08 10:13:21.041  INFO 57381 --- [ionShutdownHook] .SchemaDropperImpl$DelayedDropActionImpl : HHH000477: Starting delayed evictData of schema as part of SessionFactory shut-down'
2026-10-08 10:13:21.046  INFO 57381 --- [ionShutdownHook] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Shutdown initiated...
2026-10-08 10:13:21.051  INFO 57381 --- [ionShutdownHook] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Shutdown completed.
[[1;34mINFO[m] 
[[1;34mINFO[m] Results:
[[1;34mINFO[m] 
[[1;34mINFO[m] [1;32mTests run: 2, Failures: 0, Errors: 0, Skipped: 0[m
[[1;34mINFO[m] 
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-jar-plugin:3.2.2:jar[m [1m(default-jar)[m @ [36mbanking[0;1m ---[m
[[1;34mINFO[m] Building jar: /home/devopsadmin/workspace/AWS-capestone-project/target/banking-0.0.1-SNAPSHOT.jar
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mspring-boot-maven-plugin:2.7.4:repackage[m [1m(repackage)[m @ [36mbanking[0;1m ---[m
[[1;34mINFO[m] Replacing main artifact with repackaged archive
[[1;34mINFO[m] [1m------------------------------------------------------------------------[m
[[1;34mINFO[m] [1;32mBUILD SUCCESS[m
[[1;34mINFO[m] [1m------------------------------------------------------------------------[m
[[1;34mINFO[m] Total time:  7.027 s
[[1;34mINFO[m] Finished at: 2026-10-08T10:13:22Z
[[1;34mINFO[m] [1m------------------------------------------------------------------------[m
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (docker login)
[Pipeline] sh
+ docker login -u santhosh5895 --password-stdin
+ echo ****
Login Succeeded
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (docker build)
[Pipeline] sh
+ docker build -t santhosh5895/aws:v1.16 .
DEPRECATED: The legacy builder is deprecated and will be removed in a future release.
            Install the buildx component to build images with BuildKit:
            https://docs.docker.com/go/buildx/

Sending build context to Docker daemon  58.64MB

Step 1/5 : FROM openjdk:17.0.2-jdk
 ---> 528707081fdb
Step 2/5 : ARG JAR_FILE=target/*.jar
 ---> Using cache
 ---> 92a9dafc8495
Step 3/5 : COPY ${JAR_FILE} app.jar
 ---> 60fb3f6daee2
Step 4/5 : ENTRYPOINT ["java","-jar","/app.jar"]
 ---> Running in 9e62501ba077
 ---> Removed intermediate container 9e62501ba077
 ---> 3f79e5dc1d87
Step 5/5 : EXPOSE 8082
 ---> Running in dee5742c8832
 ---> Removed intermediate container dee5742c8832
 ---> 69319f7730b7
Successfully built 69319f7730b7
Successfully tagged santhosh5895/aws:v1.16
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (docker push)
[Pipeline] sh
+ docker push santhosh5895/aws:v1.16
The push refers to repository [docker.io/santhosh5895/aws]
38a980f2cc8a: Waiting
de849f1cfbe6: Waiting
a7203ca35e75: Waiting
531bbb3204c6: Waiting
531bbb3204c6: Waiting
38a980f2cc8a: Waiting
de849f1cfbe6: Waiting
a7203ca35e75: Waiting
531bbb3204c6: Waiting
38a980f2cc8a: Waiting
de849f1cfbe6: Waiting
a7203ca35e75: Waiting
38a980f2cc8a: Waiting
de849f1cfbe6: Waiting
a7203ca35e75: Waiting
531bbb3204c6: Waiting
a7203ca35e75: Waiting
531bbb3204c6: Waiting
38a980f2cc8a: Waiting
de849f1cfbe6: Waiting
38a980f2cc8a: Waiting
de849f1cfbe6: Waiting
a7203ca35e75: Waiting
531bbb3204c6: Waiting
531bbb3204c6: Waiting
38a980f2cc8a: Waiting
de849f1cfbe6: Waiting
a7203ca35e75: Waiting
531bbb3204c6: Waiting
38a980f2cc8a: Waiting
de849f1cfbe6: Waiting
a7203ca35e75: Waiting
531bbb3204c6: Waiting
38a980f2cc8a: Waiting
de849f1cfbe6: Waiting
a7203ca35e75: Waiting
531bbb3204c6: Waiting
38a980f2cc8a: Waiting
de849f1cfbe6: Waiting
a7203ca35e75: Waiting
531bbb3204c6: Waiting
38a980f2cc8a: Layer already exists
de849f1cfbe6: Waiting
a7203ca35e75: Waiting
531bbb3204c6: Waiting
de849f1cfbe6: Waiting
a7203ca35e75: Waiting
531bbb3204c6: Waiting
de849f1cfbe6: Layer already exists
a7203ca35e75: Waiting
531bbb3204c6: Waiting
a7203ca35e75: Layer already exists
531bbb3204c6: Pushed
v1.16: digest: sha256:69319f7730b79ad28c6c73ce271594dc03b2eea0f5b716368de81eb1561a1fba size: 1214
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Deploy to k8s)
[Pipeline] script
[Pipeline] {
[Pipeline] sshPublisher
SSH: Connecting from host [ip-172-31-12-156]
SSH: Connecting with configuration [K8s_Master] ...
[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // withCredentials
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline
Finished: SUCCESS
 Maven – For Continuous Build
 Jenkins - For continuous integrationon and continuous deployment
 Docker - For deploying containerized applications
 Kubernetes – for running containerized application in managed cluster.
 Ansible - Configuration management tools
 Terraform - For creation of infrastructure.
 Prometheus and Grafana – For Automated Monitoring and Report Visualization

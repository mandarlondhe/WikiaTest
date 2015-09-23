package wikia;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;
import org.testng.annotations.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;


public class Login {
	
  @Test
  public void main() throws MalformedURLException {
	  
	  URL url=new URL("http://localhost:4444/wd/hub");
	  DesiredCapabilities capability = new DesiredCapabilities();
	  capability.setBrowserName("firefox");
	  RemoteWebDriver driver=new RemoteWebDriver(url, capability);
	    driver.get("http://qm-homework.wikia.com");
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		
	  WebElement element = driver.findElement(By.xpath("//*[@id='AccountNavigation']/li/div[1]/span"));
	  Actions action = new Actions(driver);
	  action.moveToElement(element).build().perform();
	  driver.findElement(By.id("usernameInput")).sendKeys("mandar2102");
		
	  driver.findElement(By.id("passwordInput")).sendKeys("testwikia");
	  driver.findElement(By.className("login-button")).submit();
	  
  }
}

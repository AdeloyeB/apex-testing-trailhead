/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 10-25-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class TemperatureConverter {
    // Takes a Fahrenheit temperature and returns the Celsius equivalent.
    public static Decimal FahrenheitToCelsius(Decimal fh) {


        try {

            Decimal cs = (fh - 32) * 5/9;
            return cs.setScale(2);
    
            
        }
        catch (Exception e) {

            System.debug(e);
            return null;
            
        }

        }
    }

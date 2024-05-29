public class valueCheck {
    // bir sayı sıfırdan küçük, sifir veya 150 den büyük ise uyar
    public static void checkNum(integer num){
        if(num<0){
        // throw new ile yeni bir exception başlat            
        // exception class adını giriniz. 
            throw new specialValueException(num + ' : negatif olamaz.');
        }else if(num==0){
            throw new specialValueException(num + ' : sifir olamaz.');
        }else if(num>150){
            throw new specialValueException(num + ' : 150 den büyük olamaz.');
        }else {
            System.debug(num + ' : kullanıma uygundur.');
        }        
    }
     public static void checkNum(decimal num){
        if(num<0){
        // throw new ile yeni bir exception başlat            
        // exception class adını giriniz. 
            throw new specialValueException(num + ' : negatif olamaz.');
        }else if(num==0){
            throw new specialValueException(num + ' : sifir olamaz.');
        }else if(num>250){
            throw new specialValueException(num + ' : 250 den büyük olamaz.');
        }else {
            System.debug(num + ' : kullanıma uygundur.');
        }        
    }
    
    // try catch blok denetimi
    public static void numValue(decimal num){ // bu method sayesinde tekrar tekrar try catch yazılmak zorunda değildir.
            try{
               valueCheck.checkNum(num);
            }catch(specialValueException sve){
               System.debug('specialValueException Hata mesajı         :' + sve.getMessage());
               System.debug('specialValueException Hata izi             :' + sve.getStackTraceString());    
            }catch(Exception e){
               System.debug('Exception Hata mesajı         :' + e.getMessage());
               System.debug('Exception Hata izi             :' + e.getStackTraceString());    
            }        
    }
    
    
    
    // verilen bir metinde q, w, x gibi ingilizce karakterler içermesin. 
    public static void checkStr(string str){
        if(str.containsIgnoreCase('q')){
            throw new specialValueException(str + ' : Türkçe de q harfi bulunmamamaktadır.');
        }else if(str.containsIgnoreCase('w')){
            throw new specialValueException(str + ' : Türkçe de w harfi bulunmamamaktadır.');
        }else if(str.containsIgnoreCase('x')){
            throw new specialValueException(str + ' : Türkçe de x harfi bulunmamamaktadır.');
        }else {
            System.debug(str + ' : kullanıma uygundur.');
        }        
    }
    // try catch blok denetimi
    public static void strValue(string str){ // bu method sayesinde tekrar tekrar try catch yazılmak zorunda değildir.
            try{
               valueCheck.checkStr(str);
            }catch(specialValueException sve){
               System.debug('specialValueException Hata mesajı         :' + sve.getMessage());
               System.debug('specialValueException Hata izi             :' + sve.getStackTraceString());    
            }catch(Exception e){
               System.debug('Exception Hata mesajı         :' + e.getMessage());
               System.debug('Exception Hata izi             :' + e.getStackTraceString());    
            }        
    }
}
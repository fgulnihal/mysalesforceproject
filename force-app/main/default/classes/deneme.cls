public class deneme {
    public static decimal ornekMethod1(decimal x, decimal y){
        decimal result = x/y;
        return result;
    }
    
    public static decimal ornekMethod2(decimal x, decimal y){
        decimal result;
        try{
            result= x/y;
            return result; // eğer kod doğru çalışır ise burada return ile tamamlar blok tan doğrudan çıkar. Buda az satır ile işlemi tamamlamamızı sağlar.
        }catch(MathException me){
            System.debug('MathException Hata mesajı:' + me.getMessage());
            System.debug('MathException Hata satır numarası:' + me.getLineNumber());
            System.debug('MathException Hata izi:' + me.getStackTraceString());
        }
        System.debug('Kod çalışsa da hata mesajı verse takip eden kod satırları çalışır.');
        return result; // hatanın sonucunda null da olsa veri dönmesini sağlar. 
        
    }
    public static decimal ornekMethod3(decimal x, decimal y, string str){
        decimal result;
        try{
            result= x/y+ str.length();
            return result; // eğer kod doğru çalışır ise burada return ile tamamlar blok tan doğrudan çıkar. Buda az satır ile işlemi tamamlamamızı sağlar.
        }catch(MathException me){ // sadece mathematics exceptionları yakalar 
            System.debug('MathException Hata mesajı            :' + me.getMessage());
            System.debug('MathException Hata satır numarası   :' + me.getLineNumber());
            System.debug('MathException Hata izi            :' + me.getStackTraceString());
        }catch(NullPointerException npe){// sadcece NullPointerException ları yakalar
            System.debug('MathException Hata mesajı            :' + npe.getMessage());
            System.debug('MathException Hata satır numarası   :' + npe.getLineNumber());
            System.debug('MathException Hata izi            :' + npe.getStackTraceString());
        }
        System.debug('Kod çalışsa da hata mesajı verse takip eden kod satırları çalışır.');
        return result; // hatanın sonucunda null da olsa veri dönmesini sağlar.
    } 
 public static string ornekMethod4(integer i,integer limitsize){
        string accName;
        try{
           
List<Account> accList= [SELECT Id, Name FROM Account LIMIT:limitsize];
 accName= accList[i].name;

            return accName; // eğer kod doğru çalışır ise burada return ile tamamlar blok tan doğrudan çıkar. Buda az satır ile işlemi tamamlamamızı sağlar.
        }catch(ListException le){ // sadece mathematics exceptionları yakalar 
            System.debug('ListException Hata mesajı            :' + le.getMessage());
            System.debug('ListException Hata satır numarası   :' + le.getLineNumber());
            System.debug('ListException Hata izi            :' + le.getStackTraceString());
        }
     finally{
System.debug('her durumda çalışmasını istediğimiz kod bloğunu çalıştırır'); 
System.debug('database ile bağlantırı kes ,logout işlemi yap gibi kesinlikle olmasını istediğim durumlar yazılır'); 
     
     }
        System.debug('Kod çalışsa da hata mesajı verse takip eden kod satırları çalışır.');
        return accName; // hatanın sonucunda null da olsa veri dönmesini sağlar.
    } 
public static string ornekMethod6(integer limitSize){
        string accName;
        try{
            Account acc= [SELECT Id, Name FROM Account LIMIT :limitSize];
                accName= acc.name;
                return accName;
        }catch(ListException le){ // sadece ListException exceptionları yakalar 
            System.debug('ListException Hata mesajı			:' + le.getMessage());
            System.debug('ListException Hata satır numarası	:' + le.getLineNumber());
            System.debug('ListException Hata izi			:' + le.getStackTraceString());
        }catch(QueryException qe){ // sadece ListException exceptionları yakalar 
            System.debug('QueryException Hata mesajı			:' + qe.getMessage());
            System.debug('QueryException Hata satır numarası	:' + qe.getLineNumber());
            System.debug('QueryException Hata izi				:' + qe.getStackTraceString());
        }finally{
            System.debug('Her durumda çalışmasını istediğim finally kod blogunu yazarız.'); 
            System.debug('finally blog una genellikle; DataBase ile bağlantıyı kes, log out işlemi yap gibi kesinllikle olmasını istediğimi durumlar yazılır.'); 
        }
            System.debug('Kod çalışsa da hata mesajı verse takip eden kod satırları çalışır.');
            return accName; // hatanın sonucunda null da olsa veri dönmesini sağlar.
    }
    
           
    
 }
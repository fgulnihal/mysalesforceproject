public class verikontrolsayfa {

    public static void isimkntrl(string kntl){
        
        if(kntl.contains('@')){
        throw new ozelkontrolException(kntl +'name de harf olmaz');
        }
        else if(kntl.contains('9')){
        throw new ozelkontrolException(kntl +'name de harf olmaz');
        }
        else{
            system.debug('kulanım uygundur.');
        }
    }

    
    public static void metinkntrl(string kntl){
        try{
verikontrolsayfa.isimkntrl(kntl);
        }
        catch(ozelkontrolException okb){
            system.debug('List hatası ver' +okb.getmessage());
            system.debug('List satır numarası ver'+okb.getLineNumber());
        }
        
    }
}
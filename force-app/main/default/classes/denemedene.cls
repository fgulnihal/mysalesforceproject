public class denemedene {
    
public static string dnm1(integer indexno,integer lmt){
        string eposta;
            try{
           list <Contact> cnt=[SELECT Email,Id,LastName,Name FROM Contact LIMIT:lmt];
            contact cnt1=cnt[indexno];
            eposta=cnt1.Email;
            return eposta;
        }
        catch(ListException le){
            system.debug('List hatası ver' +le.getmessage());
            system.debug('List satır numarası ver'+le.getLineNumber());
        }
    system.debug('Bana mesaj ver');
    return eposta;
}
    public static boolean dnm2(integer indexno,integer lmt){
        boolean posta;
            try{
           list <Contact> cnt=[SELECT Email,Id,LastName,Name FROM Contact WHERE Phone=NULL LIMIT:lmt];
            contact cnt1=cnt[indexno];
            posta=cnt1.Email.contains('@');
            return posta;
        }
        catch(ListException le){
            system.debug('List hatası ver' +le.getmessage());
            system.debug('List satır numarası ver'+le.getLineNumber());
        }
    system.debug('Bana mesaj ver');
return posta;
    }

}
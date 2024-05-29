public class denemeblok {
public static string dnm3(integer indexno,integer lmt){
        string eposta;
           
           list <Contact> cnt=[SELECT Email,Id,LastName,Name FROM Contact LIMIT:lmt];
            contact cnt1=cnt[indexno];
              eposta=cnt1.Email;
    verikontrolsayfa.metinkntrl('eposta');
           
            return eposta;
     
}
    }
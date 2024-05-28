public class Hasta {
    Public final string salutation = 'Hastahanemize hoş geldiniz. En kısa sürede sağlınıza kavuşmanız dileğile!!!';
    // default olarak bir variable private. Hiç bir şey yazılmadığında private olur. 
   
    public  string  acilHastaBilgi  ='Acil durum, lütfen bilgi giriniz.';
    private string  ad              ='Hastanın adı giriniz.';
    private string  soyad           ='Hastanın soyadı giriniz.';
    private integer yas             =0;
    private integer nabiz           =0;
    private decimal vucutSicakligi  =0;
    
    public decimal vucutKitleIndeksi=0;
    
    integer hastaSayisi             =0;// default private
    Static integer toplamHastaSayisi=0;
    
    
    public integer testSayisi       =0;
    public static integer toplamTestSayisi=0;
    
    
    
    // Hiç bir constructor yazılmadığı halde hasta kayıt açılabildi. 
    
    //default contstructor acil hasta bilgisi constructor oluşunca iptal olur.
    public Hasta(){
        
        hastaSayisi++;
        toplamHastaSayisi++; 
        System.debug('Hasta Sayisi              :' + hastaSayisi);   
        System.debug('Static Hasta Sayisi   :' + toplamHastaSayisi);
    }
    
    //Acil hasta kaydı. 
    //newConstructor mutlaka className ile aynı olmak zorundadır. 
    public Hasta (string acilHastaBilgi){
        this.acilHastaBilgi=acilHastaBilgi;
        
        hastaSayisi++;                  // constructor ile bir hasta recordu oluşturduğumda 1 artar
        toplamHastaSayisi++;            // constructor ile bir hasta recordu oluşturduğumda 1 artar
        System.debug(hastaSayisi +      ': hastaSayisi');
        System.debug(toplamHastaSayisi+ ': toplamHastaSayisi');
    }
    // normal hasta kaydı.
    public Hasta(string ad, string soyad, integer yas){
        valueCheck.strValue(ad);
        this.ad=ad;
        valueCheck.strValue(soyad);         
        this.soyad=soyad;
        valueCheck.numValue(yas);
        this.yas=yas;
        
        hastaSayisi++;                  // constructor ile bir hasta recordu oluşturduğumda 1 artar
        toplamHastaSayisi++;            // constructor ile bir hasta recordu oluşturduğumda 1 artar
        System.debug(hastaSayisi +      ': hastaSayisi');
        System.debug(toplamHastaSayisi+ ': toplamHastaSayisi');
    }
    
    // detaylı hasta kaydı.
    public Hasta(string ad, string soyad, integer yas, integer nabiz, decimal vucutSicakligi){
        valueCheck.strValue(ad);
        this.ad             =ad;
         valueCheck.strValue(soyad); 
        this.soyad          =soyad;
         valueCheck.numValue(yas);
        this.yas            =yas;
          valueCheck.numValue(yas);
        this.nabiz          =nabiz;
         valueCheck.numValue(yas);
        this.vucutSicakligi =vucutSicakligi;
        
        hastaSayisi++;                  // constructor ile bir hasta recordu oluşturduğumda 1 artar
        toplamHastaSayisi++;            // constructor ile bir hasta recordu oluşturduğumda 1 artar
        System.debug(hastaSayisi +      ': hastaSayisi');
        System.debug(toplamHastaSayisi+ ': toplamHastaSayisi');
    }
    
    // isimlendirmede özellikle get eklenilmesi anlaşılmasını kolaylaştırır.
    // getter method ile private veriye erişim sağlanması
    public string getAd(){
        return ad;
    }
    
    public string getSoyad(){
        return soyad;
    }
    
    public integer getYas(){
        return yas;
    }
    
    public integer getNabiz(){
        return nabiz;
    }
    
    public decimal getVucutSicakligi(){
        return vucutSicakligi;
    }
    
    //Setter method ile veriyi değiştirelim.
    Public void setNabiz(integer nabiz){ // void işlemi yap ama bana bir şey dönemene gerek yok. 
        this.nabiz=nabiz;
    }
    
    Public void setVucutSicakligi(decimal VucutSicakligi){
        this.vucutSicakligi=vucutSicakligi;
    }  
    
    // non-static object instance name üzerinden kullanılabilir.
    public String kanGrubuTest(string kanGrup){
        string sonuc='';
        string kanGruped=kanGrup.trim().toUpperCase();
        if(kanGruped.equalsIgnoreCase('A')){
            sonuc='A GRUBU; Kan Verebileceği Gruplar: A ve AB. Kan Alabileceği Gruplar: A ve 0.';
        }else if(kanGruped.equalsIgnoreCase('B')){
            sonuc='B GRUBU; Kan Verebileceği Gruplar: B ve AB. Kan Alabileceği Gruplar: B ve 0.';
        }else if(kanGruped.equalsIgnoreCase('AB')){
            sonuc='AB GRUBU; Kan Verebileceği Gruplar: AB. Kan Alabileceği Gruplar: A, B, AB ve 0.';
        }else if(kanGruped.equalsIgnoreCase('O')){
            sonuc='O GRUBU; Kan Verebileceği Gruplar: A, B, AB ve 0. Kan Alabileceği Gruplar: A ve 0.';
        }else{
            sonuc='Lütfen girilen kan grubu bilgisinin A, B, AB ve O gruplarında birisi olup olmadığını kontrol ediniz.';
        }
        
        testSayisi++;
        toplamTestSayisi++;
        System.debug(testSayisi +       ': Tek hastaya yapılan TESTSAYISI');
        System.debug(toplamTestSayisi+  ': Tüm hastalara yapılan TOPLAMTESTSAYISI');
        return sonuc;
    }
    // non-static method ornegi
    public void vucutKitleIndeksTest(decimal kilo, decimal boy){
        vucutKitleIndeksi=kilo/(boy*boy);
        
        testSayisi++;
        toplamTestSayisi++;
        System.debug(testSayisi +       ': Tek hastaya yapılan TESTSAYISI');
        System.debug(toplamTestSayisi+  ': Tüm hastalara yapılan TOPLAMTESTSAYISI');        
    }
    
    public decimal getVucutKitleIndeksi(){
        return VucutKitleIndeksi;
    }
    
    // static method orneği
    public static string acilKod(integer kodNo){
        string bilgNotu;
        SWITCH ON kodNo {
            WHEN 1 {
               bilgNotu='Ağır yaralı hasta';
            }
            WHEN 2 {
               bilgNotu='Yaralı hasta';
            } 
            WHEN 3 {
               bilgNotu='Bulaşıcı hastalık';
            }
            WHEN ELSE {
               bilgNotu='Lütfen 1, 2, 3 kodlarından birisini giriniz.';
            }
        }
        
       // hastaSayisi++;                    tek bir hastaya özgü değer alınmasına static method izin vermez.
        toplamHastaSayisi++;            
       // System.debug(hastaSayisi +        ': hastaSayisi');
        System.debug(toplamHastaSayisi+ ': toplamHastaSayisi');
        return bilgNotu;
    }
    
}
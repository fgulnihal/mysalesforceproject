public class Hastane {
   public string bolum='';
   public string acildoktor='';
    public string  normdoktor='';
   public integer hastasayisi=0;
   public integer girisucret=100;
    private decimal maas=0;
    public integer calismasaati=8;
    public static integer toplamcalismasaati=0;
    
   
    
       public Hastane(string bolum,string acildoktor,decimal maas){
        calismasaati++;
        toplamcalismasaati+=calismasaati;   
        this.bolum=bolum;
        this.acildoktor=acildoktor;
         this.maas=maas;
           
              
     }
       public Hastane(string bolum,string normdoktor,integer yenihs,decimal maas){
        
        calismasaati++;
        toplamcalismasaati+=calismasaati;   
        this.bolum=bolum;
        this.normdoktor=normdoktor;
        this.hastasayisi=hastasayisi;
        this.maas=maas;

       } 
    public decimal getmaas(){
        return maas;
    }
    
    public void setmaas(decimal maas){
        this.maas=maas;
        
    }
    
           
        public integer ucrethesaplama(integer ucret){
    
        integer hesapla=girisucret+ucret;
        return hesapla;
       } 
    
    public static void hosgeldinizmesaj(string name){
        system.debug(name +' '+'hoşgeldiniz');
        system.debug(name +' '+'hoşgeldiniz');
        }
}
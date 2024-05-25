public class Hasta {
 
public final string salutation='Hastanemize hoşgeldiniz.Enkısa sürede sağlığa kavuşmanız dileğiyle';
public  string  acilHastaBilgi='Lütfen bigi giriniz.';
  private string ad= 'Hasta adı giriniz';
  private string soyad='Hasta soyadı giriniz';
  private integer yas=0;
 private   integer nabiz=0;
  private  decimal vucutsicakligi=0;
public Hasta (string acilHastaBilgi){
        this.acilHastaBilgi=acilHastaBilgi;
    }
    public Hasta (string ad,string soyad,integer yas){
        this.acilHastaBilgi=acilHastaBilgi;
        this.ad=ad;
         this.soyad=soyad;
         this.yas=yas;
        
    }
  public Hasta (string ad,string soyad,integer yas,integer nabiz,decimal vucutsicakligi){
        this.acilHastaBilgi=acilHastaBilgi;
        this.ad=ad;
         this.soyad=soyad;
         this.yas=yas;
          this.nabiz=nabiz;
        this.vucutsicakligi=vucutsicakligi;
    }   
    
    
    
    public string getAd(){
        return ad;
      
    }  
     public string getSoyAd(){
    
        return soyad;

    } 
     public integer getYas(){
        
        return yas;
    } 
    }
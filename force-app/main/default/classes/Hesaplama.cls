public class Hesaplama {
    public integer k=1000;
    private integer ks=10000;
    public integer toplama(integer x,integer y){
    return x+y;
    }
    public decimal aritmetikortalama(decimal x,decimal y){
     decimal ao=(x+y)/2;
    return ao;
    }
     public decimal aritmetikortalama(decimal x,decimal y,decimal z){
     decimal ao=(x+y+z)/3;
    return ao;
    }
 
    public decimal dikdortgenAlan(decimal x, decimal y){
        decimal alan = x*y;
        return alan;
    }
    
    public decimal ucgenAlan(decimal tabanUzlunlugu, decimal yukseklik){
        decimal alan = (tabanUzlunlugu*yukseklik)/2;
        return alan;
    }
    Public static decimal dairealan(decimal r){
       final decimal pi=3.141592653589793238462643383279502884197169399375;
decimal alan=pi*r*r;
        return alan;
    }
    public static void message(string name){
        system.debug(name +'Merhaba!!!');
    }
    
    

public static void paraYatir(integer m){
    
}
}
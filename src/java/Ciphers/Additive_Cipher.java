/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ciphers;

/**
 *
 * @author Asrith Krishna
 */
public class Additive_Cipher {
    String[] letters={"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"};
    
    int getIndexByLetter(char c){
        String s=Character.toString(c);
        for(int i=0;i<letters.length;i++){
            if(s.equals(letters[i]))
                return i;
        }
        return 0;
    }
    public String encrypt(String pt, int k){
        pt=pt.toLowerCase();
        String ct="";
        for(int i=0;i<pt.length();i++){
            int index=0;
            index=getIndexByLetter(pt.charAt(i));
            index=index+k;
            index=index%26;
            ct+=letters[index];
        }
        return ct;
    }
    public String decrypt(String ct, int k){
        String pt="";
        for(int i=0;i<ct.length();i++){
            int index=0;
            index=getIndexByLetter(ct.charAt(i));
            index=index-k;
            if(index<0){
                index+=26;
            }else
                index=index%26;
            pt+=letters[index];
        }
        return pt;
    }
    public String[] blindDecryptor(String ct){
        String[] pt=new String[26];
        System.out.println("Cipher Text : "+ct+"\n");
        for(int i=1;i<26;i++){
            String ptext=decrypt(ct,i);
            pt[i]="Plain Text = "+ptext+"  Key = "+i;
            //System.out.println("Plain Text = "+ptext+"  Key = "+i);
        }
        return pt;
    }
//    public static void main(String args[]){
//        Additive_Cipher a=new Additive_Cipher();
//        String ct=a.encrypt("SECURITY", 20);
//        //System.out.println(a.decrypt(ct, 20));
//        String[] c=a.blindDecryptor(ct);
//        for(int i=0;i<26;i++){
//            System.out.println(c[i]);
//        }
//    }
    
}

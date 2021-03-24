/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ciphers;

/**
 *
 * @author DELL
 */
public class AffineCipher {
    String[] letters={"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"};
    int[] key={1,3,5,7,9,11,15,17,19,21,23,25};
    int[] kinv={1,9,21,15,3,19,7,23,11,5,17,25};
    int getInverseOfKey(int k){
        for(int i=0;i<key.length;i++){
            if(k==key[i])
                return kinv[i];
        }
        return 0;
    }
    int getIndexByLetter(char c){
        String s=Character.toString(c);
        for(int i=0;i<letters.length;i++){
            if(s.equals(letters[i]))
                return i;
        }
        return 0;
    }
    public String encrypt(String pt, int k1, int k2){
        pt=pt.toLowerCase();
        String ct="";
        for(int i=0;i<pt.length();i++){
            int index=0;
            index=getIndexByLetter(pt.charAt(i));
            index=(index*k2)+k1;
            index=index%26;
            ct+=letters[index];
        }
        return ct;
    }
    public String decrypt(String ct, int k1, int k2){
        String pt="";
        k2=getInverseOfKey(k2);
        for(int i=0;i<ct.length();i++){
            int index=0;
            index=getIndexByLetter(ct.charAt(i));
            index=(index-k1)*k2;
            if(index<0){
                index+=26;
            }else
                index=index%26;
            pt+=letters[index];
        }
        return pt;
    }
}

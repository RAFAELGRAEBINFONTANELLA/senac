/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package cadastro;

/**
 *
 * @author RAFAEL
 */
import java.util.Scanner;
public class Cadastro {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // Cadastro
        Scanner ler = new Scanner (System.in);
        System.out.println("Digite o nome: ");
        String nome = ler.next ();
        System.out.println("Bom dia "+nome);
    }
    
}

package org.japinator;

public class Cotizacion {

    public double sumarProductos(String[] codigosSeleccionados) {
        double total = 0.0;

        if(codigosSeleccionados != null) {
            for(String codigo : codigosSeleccionados){
                total += obtenerPrecioPorCodigo(codigo);
            }
        }

        return total;
    }

    private double obtenerPrecioPorCodigo(String codigo) {
        switch(codigo) {
            case "Laptop" : return 800.0;
            case "Smartphone" : return 500.0;
            case "Monitor" : return 250.0;
            case "Tablet" : return 300.0;
            case "Teclado Mecanico" : return 80.0;
            case "Auriculares Gamer" : return 60.0;

            default: return 0.0;
        }
    }
}

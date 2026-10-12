package org.japinator;

public class Cotizacion {
    //Variable estatica, no se reinica con cada cotizacion
    private static int contadorUnico = 1;

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

    public double obtenerDescuentoPorCargo(String cargo) {
        switch (cargo) {
            // Vendedor 15% de descuento
            case "vendedor":
                return 0.15;
            // Administrador 20% de descuento
            case "administrador":
                return 0.20;
            // Gerente 25% de descuento
            case "gerente":
                return 0.25;
            default:
                return 0;
        }
    }

    //Clase String para validar
    public boolean validarCorreo(String correo){
        //eliminando espacios en blanco y verificando que no entren textos vacios
        if(correo == null || correo.trim().isEmpty()){
            return false;
        }
        return correo.contains("@");
    }
    //Uso de la clase Math
    public String generarCodigoCotizacion(){
        // Math.random() genera un número decimal. Lo multiplicamos por 900 y sumamos 100
        // para asegurar siempre un número aleatorio de 3 dígitos (entre 100 y 999)
        int aleatorio =(int)(Math.random()*900)+100;
        // Capturamos el número único y lo incrementamos en 1 para la siguiente vez.
        int correlativo =contadorUnico++;
        // Retornamos el código combinando el correlativo de control y el aleatorio.
        return "TK-"+correlativo+"-"+aleatorio;
    }


}

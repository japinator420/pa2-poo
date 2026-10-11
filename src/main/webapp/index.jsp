<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>App PA2</title>
        <link href="styles.css" rel="stylesheet">
    </head>
    <body>
        <h1>Cotizaciones Colaboradores TechStore</h1>
        <form id="formulario-colaboradores" method="POST" action="">
                <!-- Nombre del colaborador -->
                <div>
                    <label for="nombre">Nombre del colaborador:</label><br>
                    <input type="text" id="nombre" name="nombre" required placeholder="Ej. Juan Pérez">
                </div>
                <br>

                <!-- Correo del cliente -->
                <div>
                    <label for="correo">Correo electrónico:</label><br>
                    <input type="email" id="correo" name="correo" required placeholder="correo@ejemplo.com">
                </div>
                <br>

                <!--  Cargo del cliente  -->
                <div>
                    <label for="cargo">Cargo:</label><br>
                    <select id="cargo" name="cargo">
                        <option value="vendedor">Vendedor</option>
                        <option value="administrador">Administrador</option>
                        <option value="gerente">Gerente</option>
                    </select>
                </div>
                <br>

                <!-- Productos -->
                <div>
                    <label>Selecciona los productos:</label><br>
                    <input type="checkbox" id="p1" name="productos" value="Laptop">
                    <label for="p1">Laptop ($800)</label><br>

                    <input type="checkbox" id="p2" name="productos" value="Smartphone">
                    <label for="p2">Smartphone ($500)</label><br>

                    <input type="checkbox" id="p3" name="productos" value="Monitor">
                    <label for="p3">Monitor 27" ($250)</label><br>

                    <input type="checkbox" id="p4" name="productos" value="Tablet">
                    <label for="p4">Tablet ($300)</label><br>

                    <input type="checkbox" id="p5" name="productos" value="Teclado Mecanico">
                    <label for="p5">Teclado Mecánico ($80)</label><br>

                    <input type="checkbox" id="p6" name="productos" value="Auriculares">
                    <label for="p6">Auriculares Gamer ($60)</label>
                </div>
                <br>

                <!-- Medio de pago -->
                <div>
                    <label>Medio de pago:</label><br>
                    <input type="radio" id="pagoTarjeta" name="medioPago" value="Tarjeta" checked>
                    <label for="pagoTarjeta">Tarjeta de Crédito/Débito</label><br>

                    <input type="radio" id="pagoTransferencia" name="medioPago" value="Transferencia">
                    <label for="pagoTransferencia">Transferencia Bancaria</label><br>

                    <input type="radio" id="pagoEfectivo" name="medioPago" value="Efectivo">
                    <label for="pagoEfectivo">Efectivo</label>
                </div>
                <br>

                <!-- Boton -->
                <button type="submit">Generar Cotización</button>
            </form>



            <!-- COTIZACION FINAL -->
            <div>
                <p>Cliente: <%= request.getParameter("nombre") %> </p>
                <p>Producto: <%= (request.getParameterValues("productos") != null) ? String.join(", ", request.getParameterValues("productos")) : "" %> </p>
                <p>Precio: S/ <%= request.getAttribute("precio") %></p>
                <p>Cantidad: <%= request.getAttribute("cantidad") %> </p>
                <p>Descuento: <%= request.getAttribute("descuento") %> % </p>
                <p> Monto descontado: S/ <%= request.getAttribute("montoDescontado") %> </p>

                <h3>Total a Pagar: S/ <%= request.getAttribute("totalPagar") %></h3>

                <p>El nombre del producto tiene <%= request.getAttribute("caracteresProducto") %> caracteres.</p>
                <br>
                <a href="">Nueva cotización</a>
            </div>
    </body>
</html>

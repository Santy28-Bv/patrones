import 'servicio-pago.dart' show ServicioPago;
import 'terminal-externa.dart';
import 'tienda.dart';

void main() {
  final tienda = Tienda(ServicioPago(), TerminalExterna());
  tienda.finalizarCompra(100.0, 'servicio'); // Pago en pesos
  tienda.finalizarCompra(100.0, 'terminalEcterna'); // Pago en
}

//La rienda mezcla si tarea de finalizar la compra 
//con la tarea de convertir pesos a dolares y pagar en la terminal externa.
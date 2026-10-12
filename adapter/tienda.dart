import 'servicio-pago.dart';
import 'terminal-externa.dart';

class Tienda {
  final ServicioPago servicioPago;
  final TerminalExterna terminalExterna; // Corregido a mayúscula

  Tienda(this.servicioPago, this.terminalExterna);

  void finalizarCompra(double monto, String medio) {
    // Se añadió 'medio' como parámetro si se va a evaluar
    if (medio == 'servicio') {
      servicioPago.pagar(monto); // Se cambió 'total' por 'monto'
    } else if (medio == 'terminalEcterna') {
      final totalDolares =
          monto / 18.25; // Suponiendo un tipo de cambio de 20 pesos por dólar
      terminalExterna.cobrar(totalDolares); // Se cambió 'totalD
    } else {
      print('Medio de pago no reconocido.');
    }
  }
}

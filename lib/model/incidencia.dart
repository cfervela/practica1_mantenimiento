class Incidencia {
  static const List<String> prioridades = ['Baja', 'Media', 'Alta'];

  static const String prioridadInicial = 'Media';

  static String normalizarPrioridad(String? valor) {
    return prioridades.contains(valor) ? valor! : prioridadInicial;
  }

  String id;
  String titulo;
  String descripcion;
  String cliente;
  String categoria;
  String estado;
  String prioridad;
  String fecha;

  Incidencia({
    required this.id,
    required this.titulo,
    required this.descripcion,
    required this.cliente,
    required this.categoria,
    required this.estado,
    required this.fecha,
    this.prioridad = prioridadInicial, // para agregar la prioridad en las incidencias existentes
  });

  factory Incidencia.desdeJson(Map<String, dynamic> m) {
    return Incidencia(
      id: m['id']?.toString() ?? '',
      titulo: m['titulo']?.toString() ?? '',
      descripcion: m['descripcion']?.toString() ?? '',
      cliente: m['cliente']?.toString() ?? '',
      categoria: m['categoria']?.toString() ?? 'Software',
      estado: m['estado']?.toString() ?? 'Pendiente',
      prioridad: normalizarPrioridad(m['prioridad']?.toString()),
      fecha: m['fecha']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'titulo': titulo,
      'descripcion': descripcion,
      'cliente': cliente,
      'categoria': categoria,
      'estado': estado,
      'prioridad': prioridad,
      'fecha': fecha,
    };
  }
}

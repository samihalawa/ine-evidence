# INE Evidence

Consulta observaciones de una serie oficial del INE y compara dos valores con periodo, unidad y cambio aritmético claramente identificado.

**Versión 0.6.3 · Conector MCP alojado e instrucciones complementarias · Sami Halawa · MIT**

## Instalación y uso

```bash
/plugin install ine-evidence --marketplace samihalawa/2026-MASTER-Marketplace-Plugins-Connectors-etc
```


Instala el paquete en un anfitrión compatible con plugins y MCP remoto. La configuración incluida conecta `https://aiplugins.megawebs.com/mcp/ine-evidence` mediante Streamable HTTP y expone `compare_spanish_official_statistics`. No necesitas Python local, instalar dependencias ni proporcionar una clave del editor. La disponibilidad de la conexión depende del anfitrión y de la fuente pública.

> Consulta las dos últimas observaciones disponibles de la serie INE IPC251852 e indica su periodo y unidad.

- Consulta ocho observaciones de la serie IPC251852 e identifica cuáles se usan en la comparación.
- Consulta seis observaciones de IPC251852. Distingue el cambio absoluto y porcentual de la tasa interanual oficial.

Lee [la habilidad](skills/ine-evidence/SKILL.md) para el procedimiento, [las fuentes](skills/ine-evidence/references/sources.md) y [el contrato de acceso](skills/ine-evidence/references/runtime.md). La herramienta realiza la consulta acotada descrita; la lectura de documentos, interpretación y creación de archivos usan capacidades adicionales del anfitrión. Conserva los identificadores, enlaces, fechas y límites realmente devueltos.

## Alcance

No presenta solicitudes u ofertas, no firma, no compra, no consulta datos protegidos ni activa vigilancia. Una respuesta parcial o fallida no prueba ausencia de registros. No se garantiza elegibilidad, resultado jurídico, titularidad ni financiación.

Los [ejemplos guardados](examples/demo.md) son capturas históricas de versiones anteriores, no consultas actuales. El historial de 0.5.0 conserva la edición de instrucciones; 0.6.0 añade una conexión remota explícita y no reetiqueta esas capturas. La aprobación en un directorio se verifica por separado.

[Producto e instalación](https://aiplugins.megawebs.com/plugins/ine-evidence) · [Privacidad](https://aiplugins.megawebs.com/plugins/ine-evidence/privacy) · [Condiciones](https://aiplugins.megawebs.com/plugins/ine-evidence/terms) · [Soporte](https://aiplugins.megawebs.com/plugins/ine-evidence/support)

![Icono de INE Evidence](assets/icon.png)

# INE Evidence

## La cifra correcta, con su contexto.

Encuentra series del INE y presenta sus cifras con periodo, unidad, definición y límites de comparación.

**Para:** Analistas, periodistas, docentes y consultoras.

**Fuente:** INE · **Sin cuenta adicional ni API key** · **Python 3.11+** · **MIT**

### Qué obtienes

- Descubre operaciones, tablas y series sin inventar códigos.
- Conserva los resultados dentro de cada página.
- Distingue periodo observado de fecha de consulta.

### Pruébalo con una pregunta

> Encuentra la serie adecuada para comparar el IPC y explica su base y periodo.

También: “Comprueba si esta serie sigue actualizada antes de llamarla el dato más reciente.”

[Ver el informe de ejemplo](examples/demo.md) · [Código de la página del producto](docs/index.html) · [Flujo completo](skills/ine-evidence/references/workflow.md)

La demostración es una **captura guardada de fuentes oficiales**, no una consulta actual. Conserva fecha, enlaces y alcance.

## Instalar el candidato 0.3.1 en Claude Code

```text
/plugin install ine-evidence --marketplace https://github.com/samihalawa/ine-evidence.git#release/v0.3.0-local
```

O desde terminal:

```bash
claude plugin marketplace add https://github.com/samihalawa/ine-evidence.git#release/v0.3.0-local
claude plugin install ine-evidence@ine-evidence
```

Después, pregunta en lenguaje natural o invoca `/ine-evidence:ine-evidence`.

## Ejemplo sin conexión

Pide al MCP declarado `ine-evidence` la herramienta `ine_evidence_demo`. El ejemplo conserva su fecha y sus fuentes; nunca se presenta como una consulta actual.

## Consulta e informe

El anfitrión invoca `ine_series_change` con los argumentos descritos en [Esquemas MCP](skills/ine-evidence/references/mcp-tools.json). Para obtener un informe determinista, utiliza `ine_evidence_report` con la operación elegida, sus argumentos y el formato `markdown`, `html` o `json`. La herramienta devuelve texto; no guarda archivos. El anfitrión puede guardar el resultado únicamente en la ruta solicitada por el usuario.

## Dónde funciona

| Entorno | Comportamiento |
|---|---|
| Claude Code con MCP habilitado y Python 3.11+ | Proceso MCP local declarado, adaptadores e informes. |
| Anfitrión sin MCP local | Solo navegación/archivos nativos autorizados; no se ejecutan scripts como alternativa ni se afirma haber ejecutado el adaptador. |
| Sin red | Herramienta de ejemplo guardado; no se inventan datos actuales. |

No hay servidor público, escucha de red ni instalación de dependencias. El único proceso de ejecución del plugin es el MCP declarado. Las instrucciones de desarrollo están separadas del flujo de uso.

## Alcance real

No ofrece previsiones ni asesoramiento de inversión. Una serie disponible puede estar discontinuada o usar una base antigua. No une series incompatibles ni infiere actualidad por disponibilidad.

## Verificación

[Desarrollo y pruebas](DEVELOPMENT.md). Las comprobaciones de instalación y protocolo no equivalen a aprobación del directorio ni a aceptación en todos los anfitriones.

[Mejoras y crítica](CHANGELOG.md) · [Evidencia versionada](evidence/) · [Revisión de Claude](SUBMISSION.md). Los tests no equivalen a adopción. `ci/validate.yml` es una plantilla inactiva.

**English:** An independent workflow for Spanish official data, with a self-contained Python adapter, offline example and readable reports. Answer language follows the user.

**Sami Halawa** · Software independiente; sin afiliación oficial. [Privacidad](PRIVACY.md) · [Condiciones](TERMS.md) · [Soporte](SUPPORT.md) · [Seguridad](SECURITY.md).

## Datos enviados a servicios externos

Las consultas en vivo envían únicamente los parámetros públicos necesarios de la consulta a los servicios oficiales identificados en [Fuentes y endpoints](skills/ine-evidence/references/sources.md). El proveedor recibe esos parámetros y la dirección de red del entorno que ejecuta la consulta. No se envían credenciales, adjuntos, perfiles personales ni el historial de conversación. Estos accesos se realizan desde el MCP local declarado o las herramientas nativas autorizadas del anfitrión; no existe un conector público alojado. Los proxies con credenciales heredadas se rechazan antes de realizar una conexión.

Las respuestas oficiales pueden contener nombres, direcciones u otros datos personales públicos. La caché local es solo de memoria, durante un máximo de cinco minutos mientras se ejecuta el proceso. Los resultados pueden permanecer en la conversación o en informes guardados explícitamente por el usuario; su conservación depende del anfitrión y del usuario. El editor no opera un servicio que reciba o almacene estos datos. Consulta [Privacidad](PRIVACY.md) para los detalles y los límites de reutilización.

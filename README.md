<p><img src="assets/icon.png" width="72" height="72" alt="Icono de INE Evidence"></p>

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

## Instalar en Claude Code

```text
/plugin install ine-evidence --marketplace samihalawa/ine-evidence
```

O desde terminal:

```bash
claude plugin marketplace add samihalawa/ine-evidence
claude plugin install ine-evidence@ine-evidence
```

Después, pregunta en lenguaje natural o invoca `/ine-evidence:ine-evidence`.

## Ver un resultado sin conexión

Desde una copia de este repositorio:

```bash
python3 skills/ine-evidence/scripts/run.py demo
python3 skills/ine-evidence/scripts/run.py demo --format html --output ejemplo.html
```

## Consultar y guardar un informe

```bash
python3 skills/ine-evidence/scripts/run.py report ine_series_change --json '{"series_code": "IPC251852", "last": 5}'
```

Añade `--format html --output informe.html` o `--format json`. No se sobrescriben archivos por defecto. `doctor` comprueba el entorno local sin consultar proveedores.

## Dónde funciona

| Entorno | Comportamiento |
|---|---|
| Claude Code / Codex con Python y red autorizada | Adaptadores e informes ejecutables. |
| ChatGPT con navegación/archivos | Flujo con herramientas nativas disponibles; no es un MCP alojado. |
| Sin red | Demo guardada o documentos aportados; no datos actuales inventados. |

## Alcance real

No ofrece previsiones ni asesoramiento de inversión. Una serie disponible puede estar discontinuada o usar una base antigua. No une series incompatibles ni infiere actualidad por disponibilidad.

## Verificación

```bash
python3 -m unittest discover -s tests -v
python3 scripts/check_package.py
claude plugin validate --strict .claude-plugin/plugin.json
claude plugin validate --strict .
```

[Mejoras y crítica](CHANGELOG.md) · [Evidencia versionada](evidence/) · [Revisión de Claude](SUBMISSION.md). Los tests no equivalen a adopción. `ci/validate.yml` es una plantilla inactiva.

**English:** An independent workflow for Spanish official data, with a self-contained Python adapter, offline example and readable reports. Answer language follows the user.

**Sami Halawa** · Software independiente; sin afiliación oficial. [Privacidad](PRIVACY.md) · [Condiciones](TERMS.md) · [Soporte](SUPPORT.md) · [Seguridad](SECURITY.md).

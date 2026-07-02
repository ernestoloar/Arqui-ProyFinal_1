# Proyecto Final – Fase 1  
## Datapath MIPS32 para instrucciones tipo R

### Objetivo general

Implementar y comprobar la primera versión de un datapath MIPS de 32 bits capaz de ejecutar instrucciones tipo R, utilizando Verilog y simulación HDL.

### Descripción general

En esta fase se debe avanzar en tres aspectos:

1. **Código Verilog**: implementación del datapath básico de MIPS32 para instrucciones tipo R.
2. **Reporte**: investigación y documentación del procesador MIPS32, su set de instrucciones y los módulos implementados.
3. **Programa ensamblador**: creación de un programa de prueba usando instrucciones tipo R, junto con su codificación en binario para precargar la memoria de instrucciones.

Esta versión de la actividad excluye instrucciones de multiplicación y división. No se deben usar `MUL`, `MULT`, `MULTU`, `DIV`, `DIVU`, `MFHI`, `MFLO` ni instrucciones relacionadas con registros `HI/LO`.

---

## Alcance de la fase

El sistema debe poder ejecutar instrucciones tipo R aritméticas y lógicas de MIPS32.

### Instrucciones permitidas

- `ADD`
- `SUB`
- `AND`
- `OR`
- `XOR`
- `NOR`
- `SLT`

---

## Módulos sugeridos en Verilog

El diseño puede organizarse en módulos independientes, por ejemplo:

- `instruction_memory.v`
- `register_file.v`
- `alu.v`
- `control_unit.v`
- `alu_control.v`
- `datapath_rtype.v`
- `datapath_rtype_tb.v`


---

## Archivos para evaluacion incluidos

Se proporcionan archivos de referencia para precargar memoria de instrucciones y banco de registros:

1. `mips_rtype_program.asm`  
   Programa en ensamblador con instrucciones tipo R.

2. `regfile_init_dec.txt`  
   Los mismos valores iniciales del banco de registros en formato decimal.

---

## Consideraciones para precarga

### Memoria de instrucciones

Cada línea del archivo `mips_rtype_instructions_bin.txt` representa una instrucción MIPS32 de 32 bits.

Ejemplo:

```text
00000000
00100010
01000000
00100000
```

La memoria de instrucciones puede precargarse con `$readmemb`.

Ejemplo:

```verilog
initial begin
    $readmemb("mips_rtype_instructions_bin.txt", instruction_memory);
end
```

### Banco de registros

El archivo `regfile_init_bin.txt` contiene 32 valores, uno por cada registro del banco de registros.

Se recomienda que el registro `$0` se mantenga siempre en cero, incluso si se intenta escribir sobre él.

Ejemplo de precarga:

```verilog
initial begin
    $readmemb("regfile_init_bin.txt", BR_mem);
end
```

---

## Entregables

El equipo deberá entregar:

1. Código Verilog completo y modular.
2. Testbench funcional.
3. Capturas de simulación.
4. Programa ensamblador utilizado.
5. Archivo binario de instrucciones.
6. Archivo de datos para precargar el banco de registros.
7. Reporte en PDF siguiendo la guía de reportes de la materia.

---

## Estructura del reporte

El reporte debe cumplir con los lineamientos de la guía de reportes e incluir:
(Vea la guia de reportes)

1. Introducción.
2. Objetivo general.
3. Objetivos particulares.
4. Desarrollo.
   - Descripción de los módulos implementados.
   - Explicación del datapath tipo R.
   - Explicación de la codificación de instrucciones.
   - Evidencia de simulación.
5. Conclusiones.
6. Referencias.

---

## Evidencia mínima de funcionamiento

La simulación debe mostrar:

- Lectura correcta de instrucciones desde la memoria de instrucciones.
- Lectura correcta de operandos desde el banco de registros.
- Ejecución correcta de operaciones en la ALU.
- Escritura correcta del resultado en el registro destino `rd`.
- Avance correcto entre instrucciones de prueba.

---

## Criterios de evaluación sugeridos

| Criterio | Porcentaje |
|---|---:|
| Implementación modular del datapath | 30% |
| Ejecución correcta de instrucciones tipo R | 30% |
| Precarga correcta de instrucciones y registros | 15% |
| Testbench y evidencias de simulación | 15% |
| Reporte y documentación | 10% |

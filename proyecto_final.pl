%Sistema experto de enfermedades 
%Para iniciar este sistema experto se debe de escribir la palabra "iniciar."
%Al ejecutarse, responder las preguntas con "si", "s", "no", "n"

iniciar :-
    repeat,
    write('Este es un sistema experto de salud'), nl,
    write('Seleccione una opción:'), nl,
    write('1. Diagnosticar enfermedad'), nl,
    write('2. Diagnosticar enfermedad mental'), nl,
    write('3. Listado de medicamentos'), nl,
    write('4. Salir'), nl,
    read(Opcion),
    ejecutar_opcion(Opcion),
    Opcion == 4,
    !.

% Ejecutar opción seleccionada
ejecutar_opcion(1) :- diagnosticar_enfermedad, !.
ejecutar_opcion(2) :- diagnosticar_enfermedad_mental, !.
ejecutar_opcion(3) :- lista_medicamentos, !.
ejecutar_opcion(4) :- write('Saliendo del programa...'), deshacer, nl.

%Enfermedad comunes
diagnosticar_enfermedad:-
    write('Diagnostico de enfermedad'),
    nl,
    analisis_enfermedad(Enfermedad),
    ((Enfermedad == desconocido) -> write('tu diagnostico es: '); write('es probable que tengas: '), true),
    write(Enfermedad),
    nl,
    write('Recuerda cuidar tu salud'),
    deshacer.

% Tipos de enfermedades que se evaluarán
analisis_enfermedad(resfrio) :- resfrio, !.
analisis_enfermedad(gripe) :- gripe, !.
analisis_enfermedad(amigdalitis) :- amigdalitis, !.
analisis_enfermedad(faringitis) :- faringitis, !.
analisis_enfermedad(laringitis) :- laringitis, !.
analisis_enfermedad(sinusitis) :- sinusitis, !.
analisis_enfermedad(desconocido). % Sin diagnóstico

% Reglas de identificación de enfermedad
resfrio :-
    verificar('Dolor de garganta'),
    verificar('Congestión nasal'),
    verificar('Estornudos'),
    verificar('Tos leve'),
    write('Consejos y sugerencias de tratamiento para el resfriado: '),
    nl,
    write('1: Descanso y mantenerse hidratado'),
    nl,
    write('2: Tomar analgesicos y medicamentos para la congestión nasal si es necesario'),
    nl,
    write('3: Gárgaras con agua salada para aliviar el dolor de garganta'),
    nl,
    write('Se recomienda consultar a un medico si los síntomas empeoran o persisten, porque .'),
    nl.

gripe :-
    verificar('Dolor de garganta'),
    verificar('Congestión nasal'),
    verificar('Estornudos'),
    verificar('Fiebre'),
    verificar('Dolor muscular'),
    write('Consejos y sugerencias de tratamiento para la gripe: '),
    nl,
    write('1: Descansar mucho y mantenerse hidratado'),
    nl,
    write('2: Tomar medicamentos para reducir la fiebre y aliviar el dolor'),
    nl,
    write('3: Consumir liquidos calientes y sopas para aliviar la congestion'),
    nl,
    write('Es importante consultar a un medico, especialmente si la fiebre es alta o persistente porque .'),
    nl.

amigdalitis :-
    verificar('Dolor de garganta'),
    verificar('Dificultad para tragar'),
    verificar('Fiebre'),
    verificar('Ganglios linfáticos inflamados'),
    write('Consejos y sugerencias de tratamiento para la amigdalitis: '),
    nl,
    write('1: Descanso y mantenerse hidratado'),
    nl,
    write('2: Tomar analgesicos y antiinflamatorios para reducir el dolor y la inflamacion'),
    nl,
    write('3: Consumir liquidos frios o helados para aliviar el dolor de garganta'),
    nl,
    write('Es recomendable consultar a un medico para determinar si se necesita tratamiento con antibioticos porque .'),
    nl.

faringitis :-
    verificar('Dolor de garganta'),
    verificar('Ronquera'),
    verificar('Tos seca'),
    verificar('Garganta irritada'),
    write('Consejos y sugerencias de tratamiento para la faringitis: '),
    nl,
    write('1: Descansar la voz y evitar el tabaco y el alcohol'),
    nl,
    write('2: Tomar líquidos tibios con miel y limon para aliviar la garganta'),
    nl,
    write('3: Gargaras con agua tibia y sal para reducir la inflamacion'),
    nl,
    write('Si los sintomas persisten mas de una semana o empeoran, se debe consultar a un medico porque .'),
    nl.

laringitis :-
    verificar('Ronquera'),
    verificar('Dolor de garganta'),
    verificar('Tos seca'),
    verificar('Dificultad para tragar'),
    write('Consejos y sugerencias de tratamiento para la laringitis: '),
    nl,
    write('1: Descansar la voz y evitar hablar en voz alta'),
    nl,
    write('2: Consumir líquidos tibios para aliviar la garganta'),
    nl,
    write('3: Evitar irritantes como el humo del tabaco'),
    nl,
    write('Es importante evitar esfuerzos en la voz hasta que los sintomas mejoren.'),
    nl.

sinusitis :-
    verificar('Congestión nasal'),
    verificar('Dolor facial'),
    verificar('Dolor de cabeza'),
    verificar('Secreción nasal'),
    write('Consejos y sugerencias de tratamiento para la sinusitis: '),
    nl,
    write('1: Utilizar humidificadores para mantener el aire humedo'),
    nl,
    write('2: Aplicar compresas calientes en la cara para aliviar el dolor'),
    nl,
    write('3: Usar descongestionantes nasales para reducir la congestion'),
    nl,
    write('Si los sintomas persisten más de una semana, se debe consultar a un medico.'),
    nl.

diagnosticar_enfermedad_mental:-
    write('Diagnostico de enfermedad mental'),
    nl,
    analisis(Enfermedad),
    ((Enfermedad == desconocido) -> write('tu diagnostico es: '); write('es probable que tengas: '), true),
    write(Enfermedad),
    nl,
    write('Recuerda cuidar tu salud mental'),
    deshacer.

%tipos de enfermedades que se evaluaran
analisis(anorexia) :- anorexia, !.
analisis(bulimia) :- bulimia, !.
analisis(dislexia) :- dislexia, !.
analisis(autismo) :- autismo, !.
analisis(depresion) :- depresion, !.
analisis(ansiedad) :- ansiedad, !.
analisis(esquizofrenia) :- esquizofrenia, !.
analisis(trastorno_bipolar) :- trastorno_bipolar, !.
analisis(trastorno_obsesivo_compulsivo) :- trastorno_obsesivo_compulsivo, !.
analisis(trastorno_por_deficit_de_atencion_con_hiperactividad) :- trastorno_por_deficit_de_atencion_con_hiperactividad, !.
analisis(desconocido). %sin diagnostico

%Reglas de identificacion de enfermedad
anorexia:-
    verificar('Perdida de peso excesiva'),
    verificar('Bajo peso'),
    verificar('Fatiga'),
    verificar('Distorsión de la imagen corporal'),
    write('Consejos y sugerencias de tratamiento: '),
    nl,
    write('1: plan de recuperacion del peso'),
    nl,
    write('2: tratamiento psiquiatrico'),
    nl,
    write('3: estudio y tratamiento de los problemas en la dieta'),
    nl,
    write('Sugerimos ir con un especialista y un seguimiento cercano porque'),
    nl.

bulimia:-
    verificar('Vive con miedo de aumentar de peso'),
    verificar('Distorsión de la imagen corporal'),
    verificar('Usa laxantes, diureticos o enemas despues de comer'),
    verificar('Fuerza el vomito o hacer demasiado ejercicio para no aumentar de peso'),
    write('Consejos y sugerencias de tratamiento: '),
    nl,
    write('1: psicoterapia '),
    nl,
    write('2: medicamentos para tratar la bulimia'),
    nl,
    write('3: educacion nutricional'),
    nl,
    write('Sugerimos ir con un especialista y un seguimiento cercano porque'),
    nl.

dislexia:-
    verificar('Dificultad y tardanza para aprender a hablar'),
    verificar('Tiene problemas para recordar o nombrar letras, números y colores'),
    verificar('Invierte los sonidos de las palabras o confundir palabras que suenan de forma parecida'),
    verificar('Problemas para formar palabras adecuadamente'),
    write('Consejos y sugerencias de tratamiento: '),
    nl,
    write('1: Abordar el problema temprano'),
    nl,
    write('2: Leer en voz alta a otra persona'),
    nl,
    write('3: Fomentar la lectura'),
    nl,
    write('Sugerimos buscar la ayuda de un psicologo para el tratamiento porque'),
    nl.

autismo:-
    verificar('Dificultad en la comunicación verbal y no verbal'),
    verificar('Dificultad y tardanza para aprender a hablar'),
    verificar('Patrones repetitivos de comportamiento, intereses o actividades'),
    verificar('Sensibilidad sensorial, como hipersensibilidad o hiposensibilidad a ciertos estimulos sensoriales'),
    write('Consejos y sugerencias de tratamiento: '),
    nl,
    write('1: terapias de comportamiento y comunicacion'),
    nl,
    write('2: medicamentos pueden ayudar a controlar los sintomas'),
    nl,
    write('3: terapias familiares'),
    nl,
    write('Sugerimos buscar la ayuda de un psicólogo para el tratamiento porque'),
    nl.

depresion:-
    verificar('Cambios de humor extremos'),
    verificar('Estado de ánimo triste o irritable'),
    verificar('Pérdida de interés o placer en actividades cotidianas'),
    verificar('Cambio significativo en el peso o el apetito'),
    verificar('Fatiga o pérdida de energía'),
    write('Consejos y sugerencias de tratamiento: '),
    nl,
    write('1: Terapia psicológica (psicoterapia)'),
    nl,
    write('2: Antidepresivos'),
    nl,
    write('3: Ejercicio regular'),
    nl,
    write('Sugerimos buscar la ayuda de un psicólogo o psiquiatra para el tratamiento porque.'),
    nl.

ansiedad:-
    verificar('Preocupación excesiva o ansiedad crónica'),
    verificar('Inquietud o sensación de estar nervioso'),
    verificar('Fatiga'),
    verificar('Dificultad para concentrarse'),
    write('Consejos y sugerencias de tratamiento: '),
    nl,
    write('1: Terapia cognitivo-conductual (TCC)'),
    nl,
    write('2: Medicamentos ansiolíticos o antidepresivos'),
    nl,
    write('3: Técnicas de relajación y respiración'),
    nl,
    write('Sugerimos buscar la ayuda de un psicólogo o psiquiatra para el tratamiento porque.'),
    nl.

esquizofrenia:-
    verificar('Alucinaciones (ver, oír o sentir cosas que no existen)'),
    verificar('Delirios (creencias falsas y fijas)'),
    verificar('Pensamiento desorganizado'),
    verificar('Comportamiento desorganizado o catatónico'),
    write('Consejos y sugerencias de tratamiento: '),
    nl,
    write('1: Medicamentos antipsicóticos'),
    nl,
    write('2: Terapia psicológica (psicoterapia)'),
    nl,
    write('3: Apoyo y educación familiar'),
    nl,
    write('Sugerimos buscar la ayuda de un psiquiatra para el tratamiento porque.'),
    nl.

trastorno_bipolar:-
    verificar('Cambios de humor extremos'),
    verificar('Episodios de depresión o manía'),
    verificar('Dificultad para concentrarse'),
    verificar('Cambios en el patrón de sueño y apetito'),
    write('Consejos y sugerencias de tratamiento: '),
    nl,
    write('1: Medicamentos estabilizadores del estado de ánimo'),
    nl,
    write('2: Terapia psicológica (psicoterapia)'),
    nl,
    write('3: Apoyo y educación familiar'),
    nl,
    write('Sugerimos buscar la ayuda de un psiquiatra para el tratamiento porque .'),
    nl.

trastorno_obsesivo_compulsivo:-
    verificar('Obsesiones recurrentes e intrusivas'),
    verificar('Compulsiones repetitivas'),
    verificar('Ansiedad o malestar significativo'),
    verificar('Dificultad para controlar los pensamientos o comportamientos obsesivos-compulsivos'),
    write('Consejos y sugerencias de tratamiento: '),
    nl,
    write('1: Terapia cognitivo-conductual (TCC)'),
    nl,
    write('2: Medicamentos antidepresivos o ansiolíticos'),
    nl,
    write('3: Terapia de exposición y prevención de respuesta (TEPT)'),
    nl,
    write('Sugerimos buscar la ayuda de un psicólogo o psiquiatra para el tratamiento porque .'),
    nl.

trastorno_por_deficit_de_atencion_con_hiperactividad:-
    verificar('Inatención'),
    verificar('Hiperactividad'),
    verificar('Impulsividad'),
    verificar('Dificultades para mantener la atención en las tareas'),
    write('Consejos y sugerencias de tratamiento: '),
    nl,
    write('1: Terapia conductual'),
    nl,
    write('2: Medicamentos estimulantes'),
    nl,
    write('3: Entrenamiento para padres y maestros'),
    nl,
    write('Sugerimos buscar la ayuda de un psicólogo o psiquiatra para el tratamiento  porque.'),
    nl.

lista_medicamentos:-
    repeat,
    write('Listado de medicamentos'), nl,
    write('Seleccione una opción:'), nl,
    write('1. ibuprofeno'), nl,
    write('2. paracetamol'), nl,
    write('3. amoxicilina'), nl,
    write('4. omeprazol'), nl,
    write('5. amoxicilina'), nl,
    write('6. omeprazol'), nl,
    write('7. amoxicilina'), nl,
    write('8. Salir'), nl,
    read(Opcion),
    medicamento(Opcion),
    Opcion == 8,
    !.

% Tipos de medicamentos
medicamento(1) :- ibuprofeno, !.
medicamento(2) :- paracetamol, !.
medicamento(3) :- amoxicilina, !.
medicamento(4) :- omeprazol, !.
medicamento(5) :- aspirina, !.
medicamento(6) :- dipirona, !.
medicamento(7) :- loratadina, !.
medicamento(8):- write('Saliendo...'), deshacer, nl. 

% Reglas de información sobre medicamentos
ibuprofeno :-
    write('El ibuprofeno es un medicamento analgésico y antiinflamatorio no esteroideo (AINE).'),
    nl,
    write('Se utiliza para aliviar el dolor leve o moderado, como el dolor de cabeza, dolor menstrual,'),
    nl,
    write('dolor de muelas, dolor muscular y dolor de articulaciones. También reduce la fiebre.'),
    nl,
    write('Es un medicamento de venta libre (sin necesidad de receta médica).'),
    nl,
    write('El precio aproximado varía dependiendo de la marca y la dosis, pero suele ser entre 3 y 10 dólares.'),
    nl.

paracetamol :-
    write('El paracetamol es un medicamento analgésico y antipirético.'),
    nl,
    write('Se utiliza para aliviar el dolor leve o moderado, como el dolor de cabeza, dolor de muelas,'),
    nl,
    write('dolor muscular, dolor de garganta y para reducir la fiebre.'),
    nl,
    write('Es un medicamento de venta libre (sin necesidad de receta médica).'),
    nl,
    write('El precio aproximado varía dependiendo de la marca y la dosis, pero suele ser entre 2 y 8 dólares.'),
    nl.

amoxicilina :-
    write('La amoxicilina es un antibiótico del grupo de las penicilinas.'),
    nl,
    write('Se utiliza para tratar una variedad de infecciones bacterianas, incluyendo infecciones del oído,'),
    nl,
    write('infecciones de la garganta, infecciones de los senos nasales, infecciones del tracto urinario y otras.'),
    nl,
    write('Requiere receta médica para su compra.'),
    nl,
    write('El precio aproximado varía dependiendo de la dosis y la cantidad de tabletas, pero suele ser entre 10 y 30 dólares.'),
    nl.

omeprazol :-
    write('El omeprazol es un medicamento inhibidor de la bomba de protones (IBP).'),
    nl,
    write('Se utiliza para tratar condiciones relacionadas con el ácido del estómago, como la acidez estomacal,'),
    nl,
    write('la enfermedad por reflujo gastroesofágico (ERGE) y úlceras gástricas y duodenales.'),
    nl,
    write('Puede estar disponible con receta médica o de venta libre en dosis más bajas.'),
    nl,
    write('El precio aproximado varía dependiendo de la marca y la dosis, pero suele ser entre 5 y 20 dólares.'),
    nl.

aspirina :-
    write('La aspirina es un medicamento analgésico, antipirético y antiinflamatorio.'),
    nl,
    write('Se utiliza para aliviar el dolor leve o moderado, reducir la fiebre y tratar la inflamación.'),
    nl,
    write('También se utiliza en dosis bajas para reducir el riesgo de ataques cardíacos y accidentes cerebrovasculares.'),
    nl,
    write('Es un medicamento de venta libre, pero en dosis altas puede requerir receta médica.'),
    nl,
    write('El precio aproximado varía dependiendo de la marca y la dosis, pero suele ser entre 3 y 10 dólares.'),
    nl.

dipirona :-
    write('La dipirona es un medicamento analgésico y antipirético.'),
    nl,
    write('Se utiliza para aliviar el dolor moderado a intenso y para reducir la fiebre.'),
    nl,
    write('Es especialmente efectiva en casos de dolor causado por espasmos musculares.'),
    nl,
    write('Requiere receta médica en algunos países debido a preocupaciones sobre sus efectos secundarios.'),
    nl,
    write('El precio aproximado varía dependiendo de la marca y la dosis, pero suele ser entre 3 y 15 dólares.'),
    nl.

loratadina :-
    write('La loratadina es un medicamento antihistamínico.'),
    nl,
    write('Se utiliza para aliviar los síntomas de la alergia, como la secreción nasal, estornudos, picazón en los ojos'),
    nl,
    write('y picazón en la piel. También puede aliviar los síntomas de la urticaria.'),
    nl,
    write('Es un medicamento de venta libre y no suele requerir receta médica.'),
    nl,
    write('El precio aproximado varía dependiendo de la marca y la cantidad de tabletas, pero suele ser entre 5 y 15 dólares.'),
    nl.

%Realizar las preguntas 
preguntar(Pregunta):-
    write('El paciente tiene alguno de estos sintomas: '),
    write(Pregunta),
    write('? '),
    read(Respuesta),
    nl,
    ((Respuesta == si ; Respuesta == s) -> assert(si(Pregunta)) ; assert(no(Pregunta)), fail).

%assert es una manera de crear hechos de manera dinamica, ya que se crea en base
%a lo que el usuario nos manda

:- dynamic si/1,no/1.

%verifica si existe algun sintoma que se haya evaluado anteriormente,
%en caso de que no, realiza una pregunta en relacion a dicho sintoma

verificar(S) :-
(si(S) -> true ; (no(S) -> fail ; preguntar(S))).

%Limpia la base de conocimiento de los sintomas evaluados previamente
deshacer:- retract(si(_)),fail.
deshacer:- retract(no(_)),fail.
deshacer.

%Limpia la pantalla en swi prolog (Windows)
cls :- write('\e[H\e[2J').
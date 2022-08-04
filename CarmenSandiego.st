!classDefinition: #CarmenSandiegoTest category: 'CarmenSandiego'!
TestCase subclass: #CarmenSandiegoTest
	instanceVariableNames: 'paisesLimitrofes portugal españa francia listaDeSopechosos listaDePaises ojosMarrones pistaOjosMarrones pistaPaisFrancia testigoConMismasPistas1 testigoConMismasPistas2 pistasIguales pistasIguales2 elBarto'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 6/29/2022 17:07:42'!
españa 

	|españa1|
	españa1 _ Pais nombre:'España' conObjetoDeValor: 'corona' conTestigos: {self testigoMoe . self testigoNed . self testigoOtto} conPaisesLimitrofes:{portugal . francia} yConDepartamentoDeMigraciones: 1*hour.	
	
	^ españa1 ! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 6/29/2022 17:26:19'!
francia 

	|francia1| 
	francia1 _  Pais nombre:'Francia' conObjetoDeValor: 'rubi' conTestigos: {self testigoMilhouse . self testigoLisa . self testigoMaggie} conPaisesLimitrofes:{españa} yConDepartamentoDeMigraciones: 1*hour.
	
	^ francia1! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'mb 6/11/2022 18:09:49'!
juego

	^ JuegoCarmenSandiego new! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 7/6/2022 17:40:38'!
partidaNuevaConDetectiveClasico

        |detective sospechosos tiempo paises partida ladron|
	ladron _  elBarto .
	detective _ DetectiveClasico ubicadoEn: francia . 
	sospechosos _ listaDeSopechosos. 
	paises _ listaDePaises. 
	tiempo _ 20 * hour. 
	partida _ Partida conDetective: detective paises: paises sospechosos: sospechosos tiempo: tiempo ladron: ladron.	 
	
	^ partida. 
	
	
	
	
	! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 7/6/2022 17:40:52'!
partidaNuevaConDetectiveInterpol

        |detective sospechosos tiempo paises partida ladron|
	ladron _ elBarto .
	detective _ DetectiveInterpol ubicadoEn: francia . 
	sospechosos _ listaDeSopechosos. 
	paises _ listaDePaises. 
	tiempo _ 20 * hour. 
	partida _ Partida conDetective: detective paises: paises sospechosos: sospechosos tiempo: tiempo ladron: ladron.	 
	
	^ partida. 
	
	
	
	
	! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 7/6/2022 17:41:03'!
partidaNuevaConDetectivePersuasivo

        |detective sospechosos tiempo paises partida ladron|
	ladron _  elBarto .
	detective _ DetectivePersuasivo ubicadoEn: francia . 
	sospechosos _ listaDeSopechosos. 
	paises _ listaDePaises. 
	tiempo _ 20 * hour. 
	partida _ Partida conDetective: detective paises: paises sospechosos: sospechosos tiempo: tiempo ladron: ladron.	 
	
	^ partida. 
	
	
	
	
	! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 6/22/2022 18:49:50'!
pistaSinInformacion 
 	
	^ PistaSinInformacion  new. ! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 6/29/2022 17:08:02'!
portugal 
 	
	|portugal1 |
	portugal1 _ Pais nombre:'Portugal' conObjetoDeValor: 'joyas' conTestigos: {self testigoHugo . self testigoBob . self testigoKrusty} conPaisesLimitrofes:{españa} yConDepartamentoDeMigraciones: 3*hour.
	
	^ portugal1! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 6/22/2022 21:42:44'!
sospechosoBart

	
	| bart cabello formaDePelo ojosNegros|
	cabello _ ColorDelCabello conCaracteristica: 'rubio'.
	formaDePelo _ FormaDelCabello conCaracteristica: 'lacio'.
	ojosNegros _ Ojos conCaracteristica: 'marron'.
	bart _ Sospechoso conNombre: 'Bart' cabelloDeColor: cabello yForma:formaDePelo conOjos: ojosNegros.
	
	^ bart. ! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 6/22/2022 21:43:01'!
sospechosoHomero
	
	| homero cabelloNegro formaDePelo ojosNegros|
	cabelloNegro _ ColorDelCabello conCaracteristica: 'negro'.
	formaDePelo _ FormaDelCabello conCaracteristica: 'pelado'.
	ojosNegros _ Ojos conCaracteristica: 'negros'.
	homero _ Sospechoso conNombre: 'Homero' cabelloDeColor: cabelloNegro yForma:formaDePelo conOjos: ojosNegros.
	
	^ homero. ! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 6/22/2022 21:43:14'!
sospechosoMarge
	
	| marge cabello formaDePelo ojos |
	cabello _ ColorDelCabello conCaracteristica: 'azul'.
	formaDePelo _ FormaDelCabello conCaracteristica: 'rulos'.
	ojos _ Ojos conCaracteristica: 'negros'.
	marge _ Sospechoso conNombre: 'Marge' cabelloDeColor: cabello yForma: formaDePelo conOjos: ojos.
	
	^ marge. ! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 7/6/2022 15:48:43'!
testigoBob

	| testigo pista1 pista2 pistas|
	pista1 _ self pistaSinInformacion .
	pista2 _ self pistaSinInformacion . 
	pistas _ OrderedCollection new.
	pistas add: pista1. pistas add: pista2. 
	testigo _ Testigo conPistas: pistas . 	
	
	^ testigo! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 7/6/2022 15:48:59'!
testigoHugo 

	| testigo pista1 pista2 colorDePelo pistas|
	colorDePelo _ ColorDelCabello conCaracteristica: 'rubio'.
	pista1 _ PistaConDescripcion conDescripcion: colorDePelo.
	pista2 _ PistaConPais conPais: francia. 
	pistas _ OrderedCollection new.
	pistas add: pista1. pistas add: pista2. .
	testigo _ Testigo conPistas: pistas . 	
	
	^ testigo! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 7/6/2022 15:51:44'!
testigoKrusty

	| testigo pista1 pista2 formaDePelo pistas|
	formaDePelo _ FormaDelCabello conCaracteristica: 'lacio'.
	pista1 _ PistaConDescripcion conDescripcion: formaDePelo.
	pista2 _ PistaConPais conPais: francia. 
	pistas _ OrderedCollection new.
	pistas add: pista1. pistas add: pista2. 
	testigo _ Testigo conPistas: pistas . 	
	
	^ testigo! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 7/6/2022 17:06:23'!
testigoLisa 

	| testigo pista1 pista2 colorDePelo pistas|
	colorDePelo _ ColorDelCabello conCaracteristica: 'rubio'.
	pista1 _ PistaConDescripcion conDescripcion: colorDePelo.
	pista2 _ PistaConPais conPais: españa. 
	pistas _ OrderedCollection new.
	pistas add: pista2. pistas add: pista1. 
	testigo _ Testigo conPistas: pistas . 	
	
	^ testigo! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 7/6/2022 15:51:55'!
testigoMaggie

	| testigo pista1 pista2 formaDePelo pistas|
	formaDePelo _ FormaDelCabello conCaracteristica: 'lacio'.
	pista1 _ PistaConDescripcion conDescripcion: formaDePelo.
	pista2 _ PistaConPais conPais: españa . 
	pistas _ OrderedCollection new.
	pistas add: pista1. pistas add: pista2. 
	testigo _ Testigo conPistas: pistas. 	
	
	^ testigo! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 7/6/2022 15:52:08'!
testigoMilhouse

	| testigo pista1 pista2 colorDeOjos pistas|
	colorDeOjos _ Ojos conCaracteristica: 'marron'.
	pista1 _ PistaConDescripcion conDescripcion: colorDeOjos .
	pista2 _ PistaConPais conPais: españa . 
	pistas _ OrderedCollection new.
	pistas add: pista1. pistas add: pista2. 
	testigo _ Testigo conPistas: pistas. 	
	
	^ testigo! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 7/6/2022 15:52:22'!
testigoMoe

	| testigo pista1 pista2 colorDeOjos pistas|
	colorDeOjos _ Ojos conCaracteristica: 'negros'.
	pista1 _ PistaConDescripcion conDescripcion: colorDeOjos .
	pista2 _ PistaConPais conPais: portugal . 
	pistas _ OrderedCollection new.
	pistas add: pista1. pistas add: pista2. 
	testigo _ Testigo conPistas: pistas . 	
	
	^ testigo! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 7/7/2022 16:03:44'!
testigoNed

	| testigo pista1 pista2 formaDePelo pistas|
	formaDePelo _ FormaDelCabello conCaracteristica: 'rulos'.
	pista1 _ PistaConDescripcion conDescripcion: formaDePelo .
	pista2 _ PistaConPais conPais: portugal . 
	pistas _ OrderedCollection new.
	pistas add: pista1. pistas add: pista2. 
	testigo _ Testigo conPistas: pistas . 	
	
	^ testigo! !

!CarmenSandiegoTest methodsFor: 'factory-methods' stamp: 'OM 7/7/2022 16:03:37'!
testigoOtto

	| testigo pista1 pista2 colorDelCabello pistas|
	colorDelCabello _ ColorDelCabello conCaracteristica: 'azul'.
	pista1 _ PistaConDescripcion conDescripcion: colorDelCabello .
	pista2 _ PistaConPais conPais: portugal . 
	pistas _ OrderedCollection new.
	pistas add: pista1. pistas add: pista2. 
	testigo _ Testigo conPistas: pistas . 	
	
	^ testigo! !


!CarmenSandiegoTest methodsFor: 'paisTest' stamp: 'OM 7/7/2022 16:22:48'!
test001_unPaisTieneTestigosUnNombreUnObjetoDeValorPaisesLimitrofesYunDepartamentoDeMigraciones

	| pais |
	pais _ españa.	
	
	Assert that: pais nombre isEqualTo: 'España'.
	Assert that: pais objetoRobado isEqualTo: 'corona'.
	Assert that: pais cantidadDeTestigos isEqualTo: 3.
	Assert that: pais cantidadDePaisesLimitrofes isEqualTo: 2.
	Assert that: pais tiempoDeMigraciones isEqualTo: 1*hour.! !

!CarmenSandiegoTest methodsFor: 'paisTest' stamp: 'OM 6/22/2022 19:02:58'!
test002_unPaisTieneTresTestigos
	
	| pais |
	pais _ francia.

	
	Assert that: pais cantidadDeTestigos isEqualTo: 3.
	! !

!CarmenSandiegoTest methodsFor: 'paisTest' stamp: 'OM 7/6/2022 17:13:06'!
test003_todoPaisTieneUnObjetoDeValorHistorico

	
	Assert isTrue: españa tieneObjetoDeValor ! !

!CarmenSandiegoTest methodsFor: 'paisTest' stamp: 'OM 7/6/2022 17:14:00'!
test004_cuandoUnPaisNoTieneUnObjetoDeValorHistorico

	|pais|
	pais _ Pais new. 
	
	Assert isFalse: pais tieneObjetoDeValor ! !

!CarmenSandiegoTest methodsFor: 'paisTest' stamp: 'OM 7/6/2022 16:34:18'!
test004_todoPaisSabeSiEsLimitrofeConOtro

 
	Assert isTrue: (francia esLimitrofeCon: españa ). 
	! !

!CarmenSandiegoTest methodsFor: 'paisTest' stamp: 'OM 7/6/2022 16:34:24'!
test005_todoPaisSabeSiNoEsLimitrofeConOtro

	
    
	Assert isFalse: (francia esLimitrofeCon: portugal ). 
	! !


!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 16:35:47'!
test001_unaPartidaSeInicializaConUnDetectiveUnaListaDeSospechososPaisesAViajarUnTiempoYUnLadron

	|juego detective sospechosos tiempo paises partida ladron|
	ladron _ self sospechosoBart .
	detective _ DetectiveClasico ubicadoEn: francia . 
	sospechosos _ listaDeSopechosos. 
	paises _ listaDePaises. 
	tiempo _ 20 * hour. 
	juego _ JuegoCarmenSandiego  new. 
	partida _ Partida conDetective: detective paises: paises sospechosos: sospechosos tiempo: tiempo ladron: ladron.
	 
	
	juego comenzarPartida: partida.  
	
	Assert that: partida detective isEqualTo: detective. 
	Assert that: partida cantidadDeSospechosos isEqualTo: 3. 
	Assert that: partida cantidadDePaises isEqualTo: 3. 
	Assert that: partida tiempoRestante isEqualTo: 20 * hour. 
	Assert that: partida ladron isEqualTo: ladron! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 16:36:05'!
test002_unaPartidaConoceQuienEsElLadron 

	|juego detective sospechosos tiempo paises partida ladron|
	ladron _ self sospechosoBart .
	detective _ DetectiveClasico ubicadoEn: francia . 
	sospechosos _ listaDeSopechosos. 
	paises _ listaDePaises. 
	tiempo _ 20 * hour. 
	juego _ JuegoCarmenSandiego  new. 
	partida _ Partida conDetective: detective paises: paises sospechosos: sospechosos tiempo: tiempo ladron: ladron. 
	
	juego comenzarPartida: partida.
	
	Assert that: partida ladron isEqualTo: ladron! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 16:41:06'!
test003_unaPartidaReduceSuTiempoCuandoUnDetectiveClasicoViajaAUnPaisLimitrofe

	|partida detective|
	partida _ self partidaNuevaConDetectiveClasico. 
	detective _ partida detective. 
	
	partida realizarViajePara: 	detective hacia: españa. 
	
	
	Assert that: partida tiempoRestante isEqualTo: 14 * hour. ! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 16:41:37'!
test004_unaPartidaReduceSuTiempoCuandoUnDetectiveClasicoViajaAUnPaisNoLimitrofe

	| detective partida|	
	partida _ self partidaNuevaConDetectiveClasico . 
	detective _ partida detective. 

	detective viajarA: portugal. 
	
	Assert that: partida tiempoRestante isEqualTo: 7 * hour.  

	! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 16:37:18'!
test005_unaPartidaReduceSuTiempoCuandoUnDetectiveInterpolViajaAUnPaisLimitrofe

	| detective partida|	
	partida _ self partidaNuevaConDetectiveInterpol . 
	detective _ partida detective. 

	detective viajarA: españa. 
	
	Assert that: partida tiempoRestante isEqualTo: 17 * hour.  

	! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 16:42:10'!
test006_unaPartidaReduceSuTiempoCuandoUnDetectiveInterpolViajaAUnPaisNoLimitrofe

	| detective partida|	
	partida _ self partidaNuevaConDetectiveInterpol . 
	detective _ partida detective. 

	detective viajarA: portugal. 
	
	Assert that: partida tiempoRestante isEqualTo: 14 * hour.  

	! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 16:38:58'!
test007_unaPartidaReduceSuTiempoCuandoUnDetectivePersuasivoViajaAUnPaisLimitrofe

	| detective partida|	
	partida _ self partidaNuevaConDetectivePersuasivo . 
	detective _ partida detective. 

	detective viajarA: españa. 
	
	Assert that: partida tiempoRestante isEqualTo: 15 * hour.  

	! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 16:41:56'!
test008_unaPartidaReduceSuTiempoCuandoUnDetectivePersuasivoViajaAUnPaisNoLimitrofe

	| detective partida|	
	partida _ self partidaNuevaConDetectivePersuasivo . 
	detective _ partida detective. 

	detective viajarA: portugal. 
	
	Assert that: partida tiempoRestante isEqualTo: 9 * hour.  

	! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 17:04:24'!
test009_cuandoUnDetectiveClasicoInterrogaAUnTestigoSeDecrementaElTiempoRestanteDeLaPartida

	| detective  testigo partida |
	partida _ self partidaNuevaConDetectiveClasico .
	detective _ partida detective. 
	testigo _ self testigoHugo .
	
	detective interrogarA: testigo. 
	
	Assert that: partida tiempoRestante isEqualTo: 18 * hour.  
	! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 17:04:24'!
test010_cuandoUnDetectiveInterpolInterrogaAUnTestigoSeDecrementaElTiempoRestanteDeLaPartida

	| detective  testigo partida |
	partida _ self partidaNuevaConDetectiveInterpol . 
	detective _ partida detective. 
	testigo _ self testigoHugo.
	
	detective interrogarA: testigo.
	
	Assert that: partida tiempoRestante isEqualTo: 18 * hour.  
	! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 17:21:07'!
test011_cuandoUnDetectivePersuasivoQuiereInterrogarAUnTestigoYNoLeQuedaTiempoSeTerminaLaPartida

	| detective partida testigo|
	partida _ self partidaNuevaConDetectivePersuasivo .
	detective _ partida detective. 
	testigo _ self testigoBob.
	
	detective viajarA: portugal.
	detective viajarA: francia. 

	Assert should: [partida realizarInterrogatorioPara: detective A: testigo .] signal: Error withDescription: Partida errorTeQuedasteSinTiempo. 
	! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 16:44:08'!
test012_cuandoUnDetectivePersuasivoInterrogaAUnTestigoSeDecrementaElTiempoRestanteDeLaPartida

	| testigo partida detective|
	partida _ self partidaNuevaConDetectivePersuasivo . 
	testigo _ self testigoHugo.
	detective _ partida detective.
	
	partida realizarInterrogatorioPara: detective A: testigo. 
	"detective interrogarParaObtenerDescripcionA: testigo."
	
	Assert that: partida tiempoRestante isEqualTo: 19 * hour.  
	! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 17:19:17'!
test013_cuandoUnDetectiveClasicoQuiereViajarHaciaUnDestinoYNoLeQuedaTiempoSeTerminaLaPartida

	| detective partida |
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective. 
	
	partida realizarViajePara: detective hacia: portugal.

	Assert should: [partida realizarViajePara: detective hacia: francia] signal: Error withDescription: Partida errorTeQuedasteSinTiempo. 
! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 17:19:23'!
test014_cuandoUnDetectiveInterpolQuiereViajarAUnDestinoYNoLeQuedaTiempoSeTerminaLaPartida

	| detective partida |
	partida _ self partidaNuevaConDetectiveInterpol.
	detective _ partida detective. 
	
	partida realizarViajePara: detective hacia: portugal.
	partida realizarViajePara: detective hacia: francia.

	Assert should: [partida realizarViajePara: detective hacia: portugal] signal: Error withDescription: Partida errorTeQuedasteSinTiempo. 
	! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 17:18:18'!
test015_cuandoUnDetectiveClasicoQuiereInterrogarAUnTestigoPorPaisYNoLeQuedaTiempoSeTerminaLaPartida

	| detective partida testigo|
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective. 
	testigo _ self testigoBob.
	
	detective viajarA: portugal.
	detective viajarA: españa. 

	Assert should: [partida realizarInterrogatorioPara: detective A: testigo .] signal: Error withDescription: Partida errorTeQuedasteSinTiempo. 
! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 17:19:31'!
test016_cuandoUnDetectivePersuasivoQuiereInterrogarAUnTestigoYNoLeQuedaTiempoSeTerminaLaPartida

	| detective partida testigo|
	partida _ self partidaNuevaConDetectivePersuasivo .
	detective _ partida detective. 
	testigo _ self testigoBob.
	
	detective viajarA: portugal.
	detective viajarA: francia. 

	Assert should: [partida realizarInterrogatorioPara: detective A: testigo .] signal: Error withDescription: Partida errorTeQuedasteSinTiempo. 
	! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/6/2022 17:19:44'!
test017_cuandoUnDetectiveClasicoQuiereInterrogarAUnTestigoPorDescripcionYNoLeQuedaTiempoSeTerminaLaPartida

	| detective partida testigo|
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective. 
	testigo _ self testigoBob.
	
	detective viajarA: portugal.
	detective viajarA: españa. 

	Assert should: [partida realizarInterrogatorioPara: detective A: testigo .] signal: Error withDescription: Partida errorTeQuedasteSinTiempo. 
! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/8/2022 15:40:53'!
test018_cuandoSeEmiteUnaOrdenDeArrestoExitosaLaPartidaImprimeUnEstadoFinal

	| detective partida posibleLadron estadoFinal ladron contenidoEsperado|
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective.  
	ladron _ partida ladron. 
	estadoFinal _ ArchivoFinal new. 
	contenidoEsperado _ 
'¡FELICITACIONES!!  ATRAPASTE AL LADRON CON EXITO.

Nombre del ladrón: Bart
Características:
   Color del cabello: rubio
   Color del ojos: marron
   Forma del cabello: lacio
Objeto robado: rubi
RutaDeEscape: España,Portugal,Francia,
Tiempo restante: 14 * hours'.
		
	ladron escaparA: españa. 
	ladron escaparA: portugal. 
	ladron escaparA: francia. 
	
	detective interrogarEnElPaisActual.
	detective filtrarSospechosos.
	posibleLadron _ partida posibleLadron.
		
	partida emitirOrdenDeArrestoPara: posibleLadron en: estadoFinal.
	
	Assert that:  estadoFinal fileContents isEqualTo: contenidoEsperado . 
! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/8/2022 14:59:55'!
test019_cuandoSeEmiteUnaOrdenDeArrestoFallidaLaPartidaImprimeUnEstadoFinal

	| detective partida posibleLadron estadoFinal ladron contenidoEsperado|
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective.  
	ladron _ partida ladron. 
	estadoFinal _ ArchivoFinal new. 
	contenidoEsperado _ 
'¡PERDISTE!! NO LORGRASTE ATRAPAR AL LADRON CON EXITO

Nombre del ladrón: Bart
Características:
   Color del cabello: rubio
   Color del ojos: marron
   Forma del cabello: lacio
Objeto robado: rubi
RutaDeEscape: España,Portugal,Francia,
Tiempo restante: 8 * hours'.
		
	ladron escaparA: españa. 
	detective viajarA: españa. 
	
	ladron escaparA: portugal. 
	ladron escaparA: francia. 
	
	detective interrogarEnElPaisActual.
	detective filtrarSospechosos.
	posibleLadron _ partida posibleLadron.
		
	partida emitirOrdenDeArrestoPara: posibleLadron en: estadoFinal.
	
	Assert that: estadoFinal fileContents isEqualTo: contenidoEsperado . 
! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/8/2022 15:01:44'!
test020_seImprimeElEstadoFinalDeLaPartidaPerdida
	"test para mostrar que imprimimos el archivo."

	| detective partida posibleLadron estadoFinal ladron |
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective.  
	ladron _ partida ladron. 
	estadoFinal _ ArchivoFinal new. 
	estadoFinal _ 'estadoFinalDeLaPartida.txt' asFileEntry.
		
	ladron escaparA: españa. 
	detective viajarA: españa. 
	
	ladron escaparA: portugal. 
	ladron escaparA: francia. 
	
	detective interrogarEnElPaisActual.
	detective filtrarSospechosos.
	posibleLadron _ partida posibleLadron.
		
	partida emitirOrdenDeArrestoPara: posibleLadron en: estadoFinal.
	 
! !

!CarmenSandiegoTest methodsFor: 'partidaTest' stamp: 'OM 7/8/2022 15:01:51'!
test021_seImprimeElEstadoFinalDeLaPartidaGanada

	| detective partida posibleLadron estadoFinal ladron |
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective.  
	ladron _ partida ladron. 
	estadoFinal _ ArchivoFinal new. 
	estadoFinal _ 'estadoFinalDeLaPartida.txt' asFileEntry.
		
	ladron escaparA: españa. 
	ladron escaparA: portugal. 
	ladron escaparA: francia. 
	
	detective interrogarEnElPaisActual.
	detective filtrarSospechosos.
	posibleLadron _ partida posibleLadron.
		
	partida emitirOrdenDeArrestoPara: posibleLadron en: estadoFinal.
	
! !


!CarmenSandiegoTest methodsFor: 'detectivePersuasivoTest' stamp: 'OM 6/16/2022 16:12:30'!
test001_cuandoUnDetectivePersuasivoArrancaLaPartidaNoTienePistasAnotadasEnSuPDA

	| juego partida |
	juego _ self juego. 
	partida _ self partidaNuevaConDetectivePersuasivo .
	
	juego comenzarPartida: partida. 
	
	Assert that: (partida detective) cantidadDePistas isEqualTo: 0.  
	! !

!CarmenSandiegoTest methodsFor: 'detectivePersuasivoTest' stamp: 'OM 7/6/2022 17:04:23'!
test002_cuandoUnDetectivePersuasivoInterrogaAUnTestigoObtieneDosPistasYLasAnotaEnSuPDA

	| detective  testigo partida|
	partida _ self partidaNuevaConDetectivePersuasivo .
	detective _ partida detective. 
	testigo _ self testigoHugo. 
	
	detective interrogarA: testigo.
	
	Assert that: detective cantidadDePistas isEqualTo: 2.  
	! !

!CarmenSandiegoTest methodsFor: 'detectivePersuasivoTest' stamp: 'OM 7/6/2022 17:04:23'!
test003_cuandoUnDetectivePersuasivoInterrogaAUnTestigoDeUnPaisDondeNoEstuvoElLadronEsteNoLeDaNingunaPista

	| detective testigo partida|
	partida _ self partidaNuevaConDetectivePersuasivo .
	detective _ partida detective. 
	testigo _ self testigoBob.
 
	detective interrogarA: testigo. 
	
	Assert that: detective cantidadDePistas isEqualTo: 0. 
	! !

!CarmenSandiegoTest methodsFor: 'detectivePersuasivoTest' stamp: 'OM 7/6/2022 16:33:41'!
test004_unDetectivePersuasivoConoceSuUbicacion

	| detective|	
	detective _ DetectivePersuasivo ubicadoEn: francia.	
	
	Assert that: detective ubicacion isEqualTo: francia.  
	! !

!CarmenSandiegoTest methodsFor: 'detectivePersuasivoTest' stamp: 'OM 7/6/2022 16:33:46'!
test005_cuandoUnDetectivePersuasivoViajaDeUnPaisAOtroCambiaSuUbicacion

	| detective partida|	
	partida _ self partidaNuevaConDetectivePersuasivo . 
	detective _ partida detective. 

	detective viajarA: portugal. 
	 
	Assert that: detective ubicacion isEqualTo: portugal .
	! !

!CarmenSandiegoTest methodsFor: 'detectivePersuasivoTest' stamp: 'OM 7/6/2022 16:33:52'!
test006_cuandoUnDetectivePersuasivoInterrogaATodosLosTestigosDelPaisDondeSeEncuentraAnotaLasPistasEnSuPDA

	| detective partida|
	partida _ self partidaNuevaConDetectivePersuasivo .
	detective _ partida detective. 

	
	detective interrogarEnElPaisActual.

	
	Assert that: detective cantidadDePistas isEqualTo: 6.

	! !

!CarmenSandiegoTest methodsFor: 'detectivePersuasivoTest' stamp: 'OM 7/6/2022 16:34:08'!
test007_cuandoUnDetectivePersuasivoTerminaDeInterrogarFiltraLaListaDeSospechosos

	| detective partida cantidadDeSopechosos|
	partida _ self partidaNuevaConDetectivePersuasivo.
	detective _ partida detective. 
	cantidadDeSopechosos _ partida cantidadDeSospechosos.
	
	detective interrogarEnElPaisActual.
	detective filtrarSospechosos.
	
	Assert isTrue: (partida tieneMenorCantidadDeSospechosos: cantidadDeSopechosos).

	! !


!CarmenSandiegoTest methodsFor: 'sospechosoTest' stamp: 'OM 6/22/2022 23:32:38'!
test001_unSospechosoTieneUnNombreUnaFormaYunColorDeCabelloYColorDeOjos
	
	| sospechoso cabelloNegro formaDePeloCorto ojosNegros|
	cabelloNegro _ ColorDelCabello conCaracteristica: 'negro'.
	formaDePeloCorto _ FormaDelCabello conCaracteristica: 'corto'.
	ojosNegros _ Ojos conCaracteristica: 'negros'.
	sospechoso _ Sospechoso conNombre: 'Gonzalo' cabelloDeColor: cabelloNegro yForma:formaDePeloCorto conOjos: ojosNegros.
	
	Assert that: sospechoso nombre isEqualTo: 'Gonzalo'.
	Assert that: sospechoso colorDeCabello isEqualTo: 'negro' . 
	Assert that: sospechoso formaDeCabello isEqualTo: 'corto' .
	Assert that: sospechoso colorDeOjos isEqualTo: 'negros' .
		! !

!CarmenSandiegoTest methodsFor: 'sospechosoTest' stamp: 'OM 7/6/2022 16:32:13'!
test002_cuandoUnLadronEscapaAUnPaisLoAgregaASuRutaDeEscape

	|ladron| 
	ladron _ self sospechosoBart .
	
	ladron escaparA: portugal.
	
	
	Assert isTrue: (ladron tieneEnSuRutaDeEscapeA: portugal).! !

!CarmenSandiegoTest methodsFor: 'sospechosoTest' stamp: 'OM 7/6/2022 16:32:30'!
test003_siUnLadronNoEscapaAUnPaisEsteNoLoAgregaASuRutaDeEscape

	|ladron| 
	ladron _ self sospechosoBart .	
	
	Assert isFalse: (ladron tieneEnSuRutaDeEscapeA: portugal).! !


!CarmenSandiegoTest methodsFor: 'juegoTest' stamp: 'OM 6/16/2022 16:33:49'!
test001_unJuegoSabeCuantasPartidasTieneEnCurso

	| juego |
	juego _ self juego.
	
	Assert that: juego cantidadDePartidas isEqualTo: 0.
	! !


!CarmenSandiegoTest methodsFor: 'detectiveInterpolTest' stamp: 'OM 6/16/2022 16:35:05'!
test001_cuandoUnDetectiveInterpolArrancaLaPartidaNoTienePistasAnotadasEnSuPDA

	| detective juego partida |
	juego _ self juego.
	partida _ self partidaNuevaConDetectiveInterpol. 
	detective _ partida detective. 
	
	juego comenzarPartida: partida. 
	
	Assert that: detective cantidadDePistas isEqualTo: 0.  
	! !

!CarmenSandiegoTest methodsFor: 'detectiveInterpolTest' stamp: 'OM 7/6/2022 17:04:24'!
test002_cuandoUnDetectiveInterpolInterrogaAUnTestigoYEsteLeDaUnaPistaNuevaLaAnotaEnSuPDA

	| detective  testigo partida|
	partida _ self partidaNuevaConDetectiveInterpol . 
	detective _ partida detective. 
	testigo _ self testigoHugo .
	
	detective interrogarA: testigo.
	
	Assert that: detective cantidadDePistas isEqualTo: 1.  
	! !

!CarmenSandiegoTest methodsFor: 'detectiveInterpolTest' stamp: 'OM 7/6/2022 16:31:34'!
test003_unDetectiveInterpolConoceSuUbicacion 

	| detective|
	detective _ DetectiveInterpol ubicadoEn: francia .	
	
	Assert that: detective ubicacion isEqualTo: francia .  
	! !

!CarmenSandiegoTest methodsFor: 'detectiveInterpolTest' stamp: 'OM 7/6/2022 16:31:41'!
test004_cuandoUnDetectiveInterpolViajaDeUnPaisAOtroCambiaSuUbicacion

	| detective partida|	
	partida _ self partidaNuevaConDetectiveInterpol . 
	detective _ partida detective. 

	detective viajarA: portugal. 
	 
	Assert that: detective ubicacion isEqualTo: portugal .
	! !


!CarmenSandiegoTest methodsFor: 'detectiveClasicoTest' stamp: 'OM 6/16/2022 16:34:59'!
test001_cuandoUnDetectiveClasicoArrancaLaPartidaNoTienePistasAnotadasEnSuPDA

	| detective juego partida |
	juego _ self juego. 
	partida _ self partidaNuevaConDetectiveClasico. 
	detective _ partida detective. 
	
	juego comenzarPartida: partida. 
	
	Assert that: detective cantidadDePistas isEqualTo: 0.  
	! !

!CarmenSandiegoTest methodsFor: 'detectiveClasicoTest' stamp: 'OM 7/6/2022 17:04:50'!
test002_cuandoUnDetectiveClasicoInterrogaAUnTestigoYEsteLeDaUnaPistaNuevaLaAnotaEnSuPDA

	| detective  testigo partida|
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective . 
	testigo _  self testigoHugo.
	
	detective interrogarA: testigo.
	
	Assert that: detective cantidadDePistas isEqualTo: 1.  
	! !

!CarmenSandiegoTest methodsFor: 'detectiveClasicoTest' stamp: 'OM 7/6/2022 17:04:23'!
test003_cuandoUnDetectiveClasicoInterrogaAUnTestigoYEsteLeDaUnaPistaRepetidaNoLaAnotaEnSuPDA

	| detective partida |
	partida _ self partidaNuevaConDetectiveClasico . 
	detective _ partida detective. 
	
	detective interrogarA: testigoConMismasPistas1 .
	detective interrogarA: testigoConMismasPistas2 .
	
	Assert that: detective cantidadDePistas isEqualTo: 1.  
	! !

!CarmenSandiegoTest methodsFor: 'detectiveClasicoTest' stamp: 'OM 7/6/2022 17:04:24'!
test004_cuandoUnDetectiveClasicoInterrogaAUnTestigoDeUnPaisDondeNoEstuvoElLadronEsteNoLeDaNingunaPista

	| detective  testigo partida|
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective. 
	testigo _ self testigoBob.
 
	detective interrogarA: testigo. 
	
	Assert that: detective cantidadDePistas isEqualTo: 0. 
	! !

!CarmenSandiegoTest methodsFor: 'detectiveClasicoTest' stamp: 'OM 7/6/2022 16:29:30'!
test005_unDetectiveClasicoConoceSuUbicacion 

	| detective |	
	detective _ DetectiveClasico ubicadoEn: francia.	
	
	Assert that: detective ubicacion isEqualTo: francia.  
	! !

!CarmenSandiegoTest methodsFor: 'detectiveClasicoTest' stamp: 'OM 7/6/2022 16:29:38'!
test006_cuandoUnDetectiveClasicoViajaDeUnPaisAOtroCambiaSuUbicacion

	| detective partida|	
	partida _ self partidaNuevaConDetectiveClasico . 
	detective _ partida detective. 

	detective viajarA: portugal. 
	 
	Assert that: detective ubicacion isEqualTo: portugal .
	! !

!CarmenSandiegoTest methodsFor: 'detectiveClasicoTest' stamp: 'OM 7/6/2022 17:04:57'!
test007_unDetectiveClasicoInterrogaAUnTestigoParaObtenerUnDestinoADondeViajar

	| detective  testigo partida|
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective . 
	testigo _  self testigoLisa.
	
	detective interrogarA: testigo.
	
	Assert that: detective proximoDestinoAViajar isEqualTo: españa.
	! !

!CarmenSandiegoTest methodsFor: 'detectiveClasicoTest' stamp: 'OM 7/6/2022 17:05:05'!
test008_unDetectiveClasicoLuegoDeInterrogarViajaAlPaisDondeEscapoElLadron

	| detective  testigo partida|
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective . 
	testigo _  self testigoLisa.
	
	detective interrogarA: testigo.
	detective viajarA: detective proximoDestinoAViajar.
	
	Assert that: detective ubicacion isEqualTo: españa.
	! !

!CarmenSandiegoTest methodsFor: 'detectiveClasicoTest' stamp: 'OM 7/6/2022 16:30:45'!
test009_cuandoUnDetectiveClasicoInterrogaATodosLosTestigosDelPaisDondeSeEncuentraAnotaLasPistasEnSuPDA

	| detective partida|
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective. 

	
	detective interrogarEnElPaisActual.

	
	Assert that: detective cantidadDePistas isEqualTo: 3.
	! !

!CarmenSandiegoTest methodsFor: 'detectiveClasicoTest' stamp: 'OM 7/6/2022 16:31:02'!
test010_cuandoUnDetectiveClasicoTerminaDeInterrogarFiltraLaListaDeSospechososYSeQuedaConMenosSospechososSegunSusDescripciones

	| detective partida cantidadDeSopechosos|
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective. 
	cantidadDeSopechosos _ partida cantidadDeSospechosos.
	
	detective interrogarEnElPaisActual.
	detective filtrarSospechosos.
	
	Assert isTrue: (partida tieneMenorCantidadDeSospechosos: cantidadDeSopechosos).! !

!CarmenSandiegoTest methodsFor: 'detectiveClasicoTest' stamp: 'OM 7/6/2022 16:31:07'!
test011_cuandoUnDetectiveClasicoTerminaDeInterrogarYNoRecibeNuevaInformacionYFiltraLaListaDeSospechososSeQuedaConLosMismosSospechososQueTenia

	| detective partida cantidadDeSopechosos|
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective. 
	
	detective interrogarEnElPaisActual.
	detective filtrarSospechosos.
	
	cantidadDeSopechosos _ partida cantidadDeSospechosos.
	
	detective interrogarEnElPaisActual.
	detective filtrarSospechosos.
	
	
	Assert isFalse: (partida tieneMenorCantidadDeSospechosos: cantidadDeSopechosos).! !

!CarmenSandiegoTest methodsFor: 'detectiveClasicoTest' stamp: 'OM 7/7/2022 16:34:43'!
test012_cuandoUnDetectiveClasicoRealizaUnaOrdenDeArrestoYAtrapaAlLadron

	| detective partida posibleLadron estadoFinal|
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective. 
	estadoFinal _ ArchivoFinal new. 
	
	detective interrogarEnElPaisActual.
	detective filtrarSospechosos.
	posibleLadron _ partida posibleLadron .
		
	detective realizarOrdenDeArrestoPara: posibleLadron en: estadoFinal.
	
	Assert isTrue: (detective atrapoCorrectamenteAlLadron: posibleLadron).! !

!CarmenSandiegoTest methodsFor: 'detectiveClasicoTest' stamp: 'OM 7/7/2022 16:38:07'!
test013_cuandoUnDetectiveClasicoRealizaUnaOrdenDeArrestoYNoAtrapaAlLadron

	| detective partida posibleLadron estadoFinal|
	partida _ self partidaNuevaConDetectiveClasico.
	detective _ partida detective. 
	estadoFinal _ ArchivoFinal new. 
	
	detective viajarA: españa. 
	detective interrogarEnElPaisActual.
	detective filtrarSospechosos.
	posibleLadron _ partida posibleLadron .
		
	detective realizarOrdenDeArrestoPara: posibleLadron en: estadoFinal.
	
	Assert isFalse: (detective atrapoCorrectamenteAlLadron: posibleLadron).! !


!CarmenSandiegoTest methodsFor: 'pistaTest' stamp: 'gz 6/20/2022 18:28:02'!
test001_unaPistaPuedeSerUnPaisAViajar
 	 
	|pista  |
	pista _ PistaConPais conPais: francia .
	
	Assert isTrue: pista esPistaPais.
	Assert isFalse: pista esPistaConDescripcion.
	Assert isFalse: pista esPistaSinInformacion.
	! !

!CarmenSandiegoTest methodsFor: 'pistaTest' stamp: 'OM 6/22/2022 21:45:43'!
test002_unaPistaPuedeSerUnaDescripcionDeUnSospechoso
 	 
	| pista ojosNegros|
	ojosNegros _ Ojos conCaracteristica: 'negro'.
	pista _ PistaConDescripcion conDescripcion: ojosNegros. 

	Assert isTrue: pista esPistaConDescripcion.
	Assert isFalse: pista  esPistaPais.
	Assert isFalse: pista esPistaSinInformacion.
	! !

!CarmenSandiegoTest methodsFor: 'pistaTest' stamp: 'gz 6/20/2022 18:29:20'!
test003_unaPistaPuedeSerSinInformacion
 	 
	| pista |
	pista _ PistaSinInformacion new.

	Assert isTrue: pista esPistaSinInformacion.
	Assert isFalse: pista esPistaPais .
	Assert isFalse: pista esPistaConDescripcion.
	! !


!CarmenSandiegoTest methodsFor: 'setup' stamp: 'OM 7/6/2022 17:41:31'!
setUp
	
	elBarto _ self sospechosoBart.
	portugal _ Pais nombre:'Portugal' conObjetoDeValor: 'joyas' conTestigos: {self testigoHugo . self testigoBob . self testigoKrusty} conPaisesLimitrofes:{self españa} yConDepartamentoDeMigraciones: 3*hour.
	españa _ Pais nombre:'España' conObjetoDeValor: 'corona' conTestigos: {self testigoMoe . self testigoNed . self testigoOtto} conPaisesLimitrofes:{self portugal . self francia } yConDepartamentoDeMigraciones: 1*hour.	
	francia _  Pais nombre:'Francia' conObjetoDeValor: 'rubi' conTestigos: {self testigoMilhouse . self testigoLisa . self testigoMaggie} conPaisesLimitrofes:{self españa} yConDepartamentoDeMigraciones: 1*hour.
	listaDeSopechosos _ {self sospechosoHomero . self sospechosoMarge . elBarto}.
	listaDePaises _ {francia . portugal . españa}.
	ojosMarrones _ Ojos conCaracteristica: 'marron'.
	pistaOjosMarrones _ PistaConDescripcion conDescripcion: ojosMarrones.
	pistasIguales _ OrderedCollection new. 
	pistasIguales add: pistaOjosMarrones . pistasIguales add: pistaOjosMarrones . 
	testigoConMismasPistas1 _ Testigo conPistas: pistasIguales .
	testigoConMismasPistas2 _ Testigo conPistas: pistasIguales .
	
	
	
	! !


!classDefinition: #ArchivoFinal category: 'CarmenSandiego'!
Object subclass: #ArchivoFinal
	instanceVariableNames: 'contenido'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!ArchivoFinal methodsFor: 'initialization' stamp: 'OM 7/7/2022 14:37:16'!
initialize
	
	contenido _ ReadWriteStream on: ''.! !


!ArchivoFinal methodsFor: 'action' stamp: 'OM 7/7/2022 14:37:38'!
forceWriteStreamDo: aBlockClosure 
	
	aBlockClosure value: contenido .! !


!ArchivoFinal methodsFor: 'accessing' stamp: 'OM 7/7/2022 14:38:41'!
fileContents
	^ contenido contents.! !


!classDefinition: #Caracteristica category: 'CarmenSandiego'!
Object subclass: #Caracteristica
	instanceVariableNames: 'descripcion'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!Caracteristica methodsFor: 'accessing' stamp: 'OM 6/22/2022 22:43:36'!
descripcion
	^ descripcion ! !


!Caracteristica methodsFor: 'initialization' stamp: 'OM 6/22/2022 21:40:40'!
conCaracteristica: unaCaracteristica
	descripcion _ unaCaracteristica ! !


!Caracteristica methodsFor: 'testing' stamp: 'OM 6/30/2022 13:39:12'!
coincideConAlgunaDescripcionDe: unSospechoso 
	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Caracteristica class' category: 'CarmenSandiego'!
Caracteristica class
	instanceVariableNames: ''!

!Caracteristica class methodsFor: 'instance creation' stamp: 'OM 6/22/2022 21:40:40'!
conCaracteristica: unaCaracteristica 

	^self new conCaracteristica: unaCaracteristica ! !


!classDefinition: #ColorDelCabello category: 'CarmenSandiego'!
Caracteristica subclass: #ColorDelCabello
	instanceVariableNames: 'colorDeCabello'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!ColorDelCabello methodsFor: 'testing' stamp: 'OM 6/30/2022 13:41:13'!
coincideConAlgunaDescripcionDe: unSospechoso 
	^ unSospechoso colorDeCabello  = self descripcion ! !


!classDefinition: #FormaDelCabello category: 'CarmenSandiego'!
Caracteristica subclass: #FormaDelCabello
	instanceVariableNames: 'formaDeCabello'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!FormaDelCabello methodsFor: 'testing' stamp: 'OM 6/30/2022 13:41:05'!
coincideConAlgunaDescripcionDe: unSospechoso 
	^ unSospechoso formaDeCabello  = self descripcion ! !


!classDefinition: #Ojos category: 'CarmenSandiego'!
Caracteristica subclass: #Ojos
	instanceVariableNames: 'colorDeOjos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!Ojos methodsFor: 'testing' stamp: 'OM 6/30/2022 13:41:20'!
coincideConAlgunaDescripcionDe: unSospechoso 
	^ unSospechoso colorDeOjos = self descripcion ! !


!classDefinition: #Detective category: 'CarmenSandiego'!
Object subclass: #Detective
	instanceVariableNames: 'personalDigitalAssistant ubicacion partida proximoDestinoAViajar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!Detective methodsFor: 'accessing' stamp: 'OM 6/8/2022 17:29:04'!
cantidadDePistas
	^ personalDigitalAssistant  size! !

!Detective methodsFor: 'accessing' stamp: 'OM 6/30/2022 14:52:44'!
descripcionDeLasPistas
	^ self pistasConDescripcion collect: [:pista | pista descripcion]! !

!Detective methodsFor: 'accessing' stamp: 'OM 6/22/2022 20:22:13'!
pistas
	^ personalDigitalAssistant ! !

!Detective methodsFor: 'accessing' stamp: 'OM 7/6/2022 17:10:40'!
pistasConDescripcion

	^ self pistas select: [:pista | pista esPistaConDescripcion]! !

!Detective methodsFor: 'accessing' stamp: 'gz 6/20/2022 17:44:41'!
proximoDestinoAViajar
	^proximoDestinoAViajar! !

!Detective methodsFor: 'accessing' stamp: 'OM 6/16/2022 16:19:05'!
tiempoInterrogando
	^ 2 * hour ! !

!Detective methodsFor: 'accessing' stamp: 'OM 6/8/2022 17:52:08'!
ubicacion
	
	^ubicacion! !


!Detective methodsFor: 'initialization' stamp: 'OM 7/6/2022 14:18:51'!
initialize 

	personalDigitalAssistant _ Set new. 
	! !

!Detective methodsFor: 'initialization' stamp: 'OM 6/16/2022 16:01:18'!
partida: unaPartida 
	partida _ unaPartida ! !

!Detective methodsFor: 'initialization' stamp: 'OM 6/8/2022 17:51:15'!
ubicadoEn: unPais 
	ubicacion _ unPais.! !


!Detective methodsFor: 'action' stamp: 'gz 6/20/2022 17:52:00'!
agregarProximoDestino: unaPistaPais
	proximoDestinoAViajar _ unaPistaPais pais! !

!Detective methodsFor: 'action' stamp: 'OM 6/8/2022 17:28:45'!
anotarPista: unaPista 
	personalDigitalAssistant add: unaPista.! !

!Detective methodsFor: 'action' stamp: 'OM 6/30/2022 13:24:04'!
filtradoDeSospechosos

	^ self sospechosos select: [:sospechoso | sospechoso coincideConAlgunaDescripcionDe: self descripcionDeLasPistas]! !

!Detective methodsFor: 'action' stamp: 'OM 6/22/2022 20:20:43'!
filtrarSospechosos
	partida conSospechososFiltrados: self filtradoDeSospechosos! !

!Detective methodsFor: 'action' stamp: 'OM 7/6/2022 17:04:23'!
interrogarA: unTestigo 
	|tiempoNecesarioParaInterrogar |
	tiempoNecesarioParaInterrogar  _ self tiempoInterrogando . 
       
	unTestigo darPistaA: self.
	partida decrementarTiempo: tiempoNecesarioParaInterrogar.
	! !

!Detective methodsFor: 'action' stamp: 'OM 7/6/2022 17:05:26'!
interrogarEnElPaisActual

	|testigos testigo1 testigo2 testigo3|
	testigos _ ubicacion testigos. 
	testigo1 _ testigos at: 1. 
	testigo2 _ testigos at: 2.
	testigo3 _ testigos at: 3. 
	
	self interrogarA: testigo1. 
	self interrogarA: testigo2.
	self interrogarA: testigo3. 
	
	! !

!Detective methodsFor: 'action' stamp: 'OM 6/30/2022 12:14:40'!
noAnotaPista
 	"no anota la pista"! !

!Detective methodsFor: 'action' stamp: 'OM 7/7/2022 15:57:36'!
realizarOrdenDeArrestoPara: posibleLadron en: estadoFinal 

	partida emitirOrdenDeArrestoPara: posibleLadron en: estadoFinal.! !

!Detective methodsFor: 'action' stamp: 'OM 6/22/2022 20:33:18'!
sospechosos

	^ partida sospechosos! !

!Detective methodsFor: 'action' stamp: 'OM 7/6/2022 16:23:29'!
viajarA: unPais 
       
	|tiempoNecesarioParaViajar |
	tiempoNecesarioParaViajar  _ ((unPais tipoDeViajePara: ubicacion) tiempoDeViajePara: self) + unPais tiempoDeMigraciones . 
       
       partida decrementarTiempo: tiempoNecesarioParaViajar. 
	ubicacion _ unPais.
	! !


!Detective methodsFor: 'testing' stamp: 'OM 7/7/2022 16:37:27'!
atrapoCorrectamenteAlLadron: unSospechoso 
	
	^ partida elLadronEs: unSospechoso.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Detective class' category: 'CarmenSandiego'!
Detective class
	instanceVariableNames: ''!

!Detective class methodsFor: 'instance creation' stamp: 'OM 6/8/2022 17:50:09'!
ubicadoEn: unPais 
	
	^self new ubicadoEn: unPais ! !


!classDefinition: #DetectiveClasico category: 'CarmenSandiego'!
Detective subclass: #DetectiveClasico
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!DetectiveClasico methodsFor: 'accessing' stamp: 'gz 6/20/2022 15:54:07'!
tiempoViajando

	^ 10 * hour! !


!classDefinition: #DetectiveInterpol category: 'CarmenSandiego'!
Detective subclass: #DetectiveInterpol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!DetectiveInterpol methodsFor: 'action' stamp: 'OM 7/6/2022 16:23:53'!
viajarA: unPais 
       
	|tiempoNecesarioParaViajar |
	tiempoNecesarioParaViajar  _ ((unPais tipoDeViajePara: ubicacion) tiempoDeViajePara: self) . 
       
       partida decrementarTiempo: tiempoNecesarioParaViajar. 
	ubicacion _ unPais.
   ! !


!DetectiveInterpol methodsFor: 'accessing' stamp: 'gz 6/20/2022 16:47:09'!
tiempoViajando
	^ 6 * hour! !


!classDefinition: #DetectivePersuasivo category: 'CarmenSandiego'!
Detective subclass: #DetectivePersuasivo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!DetectivePersuasivo methodsFor: 'action' stamp: 'OM 7/6/2022 17:04:23'!
interrogarA: unTestigo 
	|tiempoNecesarioParaInterrogar |
	tiempoNecesarioParaInterrogar  _ self tiempoInterrogando . 
       
	unTestigo darPistaA:  self. 
	unTestigo darPistaA:  self. 
	partida decrementarTiempo: tiempoNecesarioParaInterrogar . ! !


!DetectivePersuasivo methodsFor: 'accessing' stamp: 'OM 6/13/2022 18:01:38'!
tiempoInterrogando
	^ 1 * hour! !

!DetectivePersuasivo methodsFor: 'accessing' stamp: 'gz 6/20/2022 17:05:17'!
tiempoViajando
	^ 8 * hour! !


!classDefinition: #JuegoCarmenSandiego category: 'CarmenSandiego'!
Object subclass: #JuegoCarmenSandiego
	instanceVariableNames: 'partidas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!JuegoCarmenSandiego methodsFor: 'initialization' stamp: 'OM 6/16/2022 16:05:16'!
initialize 
	partidas _ OrderedCollection new. 
	! !


!JuegoCarmenSandiego methodsFor: 'action' stamp: 'OM 6/16/2022 16:04:44'!
comenzarPartida: unaPartida 
	partidas add: unaPartida. ! !


!JuegoCarmenSandiego methodsFor: 'accessing' stamp: 'OM 6/16/2022 16:34:09'!
cantidadDePartidas
	^ partidas size. ! !


!classDefinition: #OrdenDeArresto category: 'CarmenSandiego'!
Object subclass: #OrdenDeArresto
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!OrdenDeArresto methodsFor: 'as yet unclassified' stamp: 'OM 7/8/2022 14:32:33'!
emitirOrdenPara: unaPartida en: estadoFinal 
	
	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OrdenDeArresto class' category: 'CarmenSandiego'!
OrdenDeArresto class
	instanceVariableNames: ''!

!OrdenDeArresto class methodsFor: 'accessing' stamp: 'OM 7/8/2022 14:25:31'!
tipoDeOrdenDeArrestoPara: unaPartida con: unSospechoso 
	
	^ (self subclasses detect: [:tipoDeOrden | tipoDeOrden puedeEmitirOrden: unaPartida con: unSospechoso]) new.! !


!OrdenDeArresto class methodsFor: 'testing class hierarchy' stamp: 'OM 7/8/2022 14:32:50'!
puedeEmitirOrden: unaPartida con: unPosibleLadron 
	
	self subclassResponsibility ! !


!classDefinition: #OrdenDeArrestoExitosa category: 'CarmenSandiego'!
OrdenDeArresto subclass: #OrdenDeArrestoExitosa
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!OrdenDeArrestoExitosa methodsFor: 'action' stamp: 'OM 7/8/2022 14:28:39'!
emitirOrdenPara: unaPartida en: estadoFinal 
	
	unaPartida imprimirTriunfoEn: estadoFinal ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OrdenDeArrestoExitosa class' category: 'CarmenSandiego'!
OrdenDeArrestoExitosa class
	instanceVariableNames: ''!

!OrdenDeArrestoExitosa class methodsFor: 'testing' stamp: 'OM 7/8/2022 14:32:58'!
puedeEmitirOrden: unaPartida con: unPosibleLadron 
	
	^ unaPartida ladron = unPosibleLadron ! !


!classDefinition: #OrdenDeArrestoFallida category: 'CarmenSandiego'!
OrdenDeArresto subclass: #OrdenDeArrestoFallida
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!OrdenDeArrestoFallida methodsFor: 'as yet unclassified' stamp: 'OM 7/8/2022 14:32:21'!
emitirOrdenPara: unaPartida en: estadoFinal 
	
	unaPartida imprimirDerrotaEn: estadoFinal ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OrdenDeArrestoFallida class' category: 'CarmenSandiego'!
OrdenDeArrestoFallida class
	instanceVariableNames: ''!

!OrdenDeArrestoFallida class methodsFor: 'testing' stamp: 'OM 7/8/2022 14:33:23'!
puedeEmitirOrden: unaPartida con: unPosibleLadron 
	
	^ (unaPartida ladron = unPosibleLadron) not ! !


!classDefinition: #Pais category: 'CarmenSandiego'!
Object subclass: #Pais
	instanceVariableNames: 'testigos objetoDeValor tiempoDeMigraciones nombre paisesLimitrofes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!Pais methodsFor: 'initialization' stamp: 'OM 6/22/2022 20:26:31'!
conNombre: unNombre objetoDeValor: nombreDeobjeto testigos: losTestigos paisesLimitrofes: losPaisesLimitrofes yTiempoDelDepartamentoDeMigraciones: cantidadDeTiempo 
	nombre  _ unNombre.
	objetoDeValor _ nombreDeobjeto.
	testigos _ losTestigos.
	paisesLimitrofes _ losPaisesLimitrofes.
	tiempoDeMigraciones _ cantidadDeTiempo! !

!Pais methodsFor: 'initialization' stamp: 'mb 6/15/2022 16:50:55'!
initialize
	testigos _ Array ofSize: 3.  
	paisesLimitrofes _ Set new. ! !


!Pais methodsFor: 'accessing' stamp: 'mb 6/15/2022 17:47:35'!
cantidadDePaisesLimitrofes
	^ paisesLimitrofes size.! !

!Pais methodsFor: 'accessing' stamp: 'mb 6/11/2022 18:42:55'!
cantidadDeTestigos

	^ testigos size.! !

!Pais methodsFor: 'accessing' stamp: 'mb 6/15/2022 17:47:10'!
nombre
	
	^nombre! !

!Pais methodsFor: 'accessing' stamp: 'OM 7/7/2022 16:22:47'!
objetoRobado
	
	^objetoDeValor! !

!Pais methodsFor: 'accessing' stamp: 'mb 6/22/2022 14:38:25'!
testigos

	^testigos! !

!Pais methodsFor: 'accessing' stamp: 'OM 6/22/2022 20:26:31'!
tiempoDeMigraciones
	^ tiempoDeMigraciones ! !


!Pais methodsFor: 'testing' stamp: 'OM 6/29/2022 17:15:45'!
esLimitrofeCon: unPais 
	^ paisesLimitrofes anySatisfy: [:pais | pais tieneElNombre: unPais nombre]. ! !

!Pais methodsFor: 'testing' stamp: 'OM 6/29/2022 17:16:23'!
tieneElNombre: unNombreDePais 
	^ self nombre = unNombreDePais ! !

!Pais methodsFor: 'testing' stamp: 'gz 6/20/2022 15:36:19'!
tieneObjetoDeValor
	^ (objetoDeValor isEmptyOrNil) not
	! !

!Pais methodsFor: 'testing' stamp: 'OM 7/6/2022 16:25:21'!
tipoDeViajePara: unPais 
	^ ProveedorDeTipoDeViaje tipoDeViajeParaViajarA: unPais desde: self . ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Pais class' category: 'CarmenSandiego'!
Pais class
	instanceVariableNames: ''!

!Pais class methodsFor: 'instance creation' stamp: 'OM 6/22/2022 20:26:04'!
nombre: unNombre conObjetoDeValor: unObjeto conTestigos: testigos conPaisesLimitrofes: paisesLimitrofes yConDepartamentoDeMigraciones: unaCantidadDeTiempo 
	
	^self new conNombre: unNombre objetoDeValor: unObjeto testigos: testigos paisesLimitrofes: paisesLimitrofes yTiempoDelDepartamentoDeMigraciones: unaCantidadDeTiempo ! !


!classDefinition: #Partida category: 'CarmenSandiego'!
Object subclass: #Partida
	instanceVariableNames: 'tiempoRestante detective paises sospechosos delincuente objetoRobado'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!Partida methodsFor: 'initialization' stamp: 'OM 7/7/2022 14:59:51'!
conDetective: unDetective paises: losPaisesAViajar sospechosos: losSospechosos tiempo: unLimiteDeTiempo ladron: unLadron  
	detective _ unDetective. 
	paises _ losPaisesAViajar. 
	sospechosos _ losSospechosos.
	tiempoRestante _ unLimiteDeTiempo. 
	delincuente _ unLadron. 
	objetoRobado _ self objetoDeValorRobado. 
	unDetective partida: self. ! !


!Partida methodsFor: 'accessing' stamp: 'OM 6/16/2022 17:03:18'!
cantidadDePaises
	^ paises size. ! !

!Partida methodsFor: 'accessing' stamp: 'OM 6/16/2022 17:03:02'!
cantidadDeSospechosos
	^ sospechosos size.! !

!Partida methodsFor: 'accessing' stamp: 'OM 6/16/2022 16:12:44'!
detective
	
	^detective! !

!Partida methodsFor: 'accessing' stamp: 'OM 7/6/2022 15:26:40'!
ladron
	^ delincuente ! !

!Partida methodsFor: 'accessing' stamp: 'OM 7/7/2022 16:22:48'!
objetoDeValorRobado

	^ detective ubicacion objetoRobado ! !

!Partida methodsFor: 'accessing' stamp: 'OM 7/7/2022 16:22:47'!
objetoRobado
	^ objetoRobado ! !

!Partida methodsFor: 'accessing' stamp: 'OM 7/7/2022 15:52:07'!
posibleLadron 
	^ self sospechosos at: 1 ! !

!Partida methodsFor: 'accessing' stamp: 'mb 6/22/2022 16:11:22'!
sospechosos
	^sospechosos! !

!Partida methodsFor: 'accessing' stamp: 'OM 6/13/2022 17:30:34'!
tiempoRestante
	
	^tiempoRestante! !


!Partida methodsFor: 'action' stamp: 'mb 6/22/2022 16:48:41'!
conSospechososFiltrados: sospechososFiltrados 
 	sospechosos _ sospechososFiltrados ! !

!Partida methodsFor: 'action' stamp: 'OM 6/13/2022 17:59:48'!
decrementarTiempo: unaCantidadDeTiempo 
	tiempoRestante _ tiempoRestante - unaCantidadDeTiempo ! !

!Partida methodsFor: 'action' stamp: 'OM 7/7/2022 15:44:50'!
elLadronEs: posibleLadron

	^ self ladron = posibleLadron! !

!Partida methodsFor: 'action' stamp: 'OM 7/8/2022 14:23:38'!
emitirOrdenDeArrestoPara: posibleLadron en: estadoFinal 

	(OrdenDeArresto tipoDeOrdenDeArrestoPara: self con: posibleLadron) emitirOrdenPara: self en: estadoFinal.

	! !

!Partida methodsFor: 'action' stamp: 'OM 7/8/2022 15:34:14'!
imprimirDerrotaEn: estadoFinal
	 
	estadoFinal forceWriteStreamDo: [:unStream | 		
		unStream nextPutAll: '¡PERDISTE!! NO LORGRASTE ATRAPAR AL LADRON CON EXITO'. 
		unStream newLine.
		unStream newLine.
		self imprimirEstadoFinalEn: unStream. 
		]. ! !

!Partida methodsFor: 'action' stamp: 'OM 7/8/2022 15:31:38'!
imprimirEstadoFinalEn: unStream

	unStream nextPutAll: 'Nombre del ladrón: '. unStream nextPutAll: self ladron nombre. 
		unStream newLine.
		unStream nextPutAll: 'Características:'. 
		unStream newLine. 
		unStream nextPutAll: '   Color del cabello: '. unStream nextPutAll: self ladron colorDeCabello. 							
		unStream newLine.			
		unStream nextPutAll: '   Color del ojos: '. unStream nextPutAll: 			self ladron colorDeOjos.
		unStream newLine.
		unStream nextPutAll: '   Forma del cabello: '. unStream nextPutAll: self ladron formaDeCabello. 
		unStream newLine. 
		unStream nextPutAll: 'Objeto robado: '. unStream nextPutAll: self objetoRobado .
		unStream newLine. 
		unStream nextPutAll: 'RutaDeEscape: '. ((self ladron rutaDeEscape) do: [:pais | unStream nextPutAll: pais nombre. unStream nextPutAll: ',']). 
		unStream newLine. 
		unStream nextPutAll: 'Tiempo restante: '. unStream nextPutAll: self tiempoRestante asString! !

!Partida methodsFor: 'action' stamp: 'OM 7/8/2022 15:41:05'!
imprimirTriunfoEn: estadoFinal

	estadoFinal forceWriteStreamDo: [:unStream | 		
		unStream nextPutAll: '¡FELICITACIONES!!  ATRAPASTE AL LADRON CON EXITO.'.
		unStream newLine. 
		unStream newLine.
		self imprimirEstadoFinalEn: unStream. 
		]. ! !

!Partida methodsFor: 'action' stamp: 'OM 7/6/2022 17:23:22'!
realizarInterrogatorioPara: unDetective A: unTestigo 
	|tiempoNecesarioParaInterrogar |
	tiempoNecesarioParaInterrogar  _ unDetective tiempoInterrogando . 
       
       (tiempoNecesarioParaInterrogar <= self tiempoRestante) ifTrue: [unDetective interrogarA: unTestigo]   ifFalse: [self error: Partida errorTeQuedasteSinTiempo. ]
   ! !

!Partida methodsFor: 'action' stamp: 'OM 7/6/2022 17:23:33'!
realizarViajePara: unDetective hacia: unPais 
	|tiempoNecesarioParaViajar |
	tiempoNecesarioParaViajar  _ ((unPais tipoDeViajePara: unDetective ubicacion) tiempoDeViajePara: unDetective) + unPais tiempoDeMigraciones . 
       
       (tiempoNecesarioParaViajar <= self tiempoRestante) ifTrue: [unDetective viajarA: unPais]  ifFalse: [self error: Partida errorTeQuedasteSinTiempo. ]! !


!Partida methodsFor: 'testing' stamp: 'OM 6/30/2022 15:17:03'!
tieneMenorCantidadDeSospechosos: unaCantidadDeSospechosos
   	
	^ self cantidadDeSospechosos <  unaCantidadDeSospechosos! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Partida class' category: 'CarmenSandiego'!
Partida class
	instanceVariableNames: ''!

!Partida class methodsFor: 'instance creation' stamp: 'OM 7/6/2022 15:20:17'!
conDetective: unDetective paises: paises sospechosos: sospechosos tiempo: unLimiteDeTiempo ladron: ladron  
	
	^self new conDetective: unDetective paises: paises sospechosos: sospechosos tiempo: unLimiteDeTiempo ladron: ladron ! !


!Partida class methodsFor: 'accessing' stamp: 'OM 7/6/2022 17:18:51'!
errorTeQuedasteSinTiempo
	^ 'Te quedaste sin tiempo. Fin de la partida'! !


!classDefinition: #Pista category: 'CarmenSandiego'!
Object subclass: #Pista
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!Pista methodsFor: 'testing' stamp: 'gz 6/20/2022 18:25:12'!
esPistaConDescripcion
	^false! !

!Pista methodsFor: 'testing' stamp: 'gz 6/20/2022 18:25:02'!
esPistaPais
	^false! !

!Pista methodsFor: 'testing' stamp: 'gz 6/20/2022 18:25:27'!
esPistaSinInformacion
	^false! !


!Pista methodsFor: 'accessing' stamp: 'mb 6/22/2022 16:32:41'!
informacion
	self subclassResponsibility .! !


!Pista methodsFor: 'action' stamp: 'OM 6/29/2022 17:39:24'!
darInformacionA: unDetective 
	unDetective anotarPista: self! !


!classDefinition: #PistaConDescripcion category: 'CarmenSandiego'!
Pista subclass: #PistaConDescripcion
	instanceVariableNames: 'descripcion'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!PistaConDescripcion methodsFor: 'initialization' stamp: 'OM 6/30/2022 14:52:29'!
conDescripcion: unaDescripcion 
	descripcion _ unaDescripcion. ! !


!PistaConDescripcion methodsFor: 'testing' stamp: 'OM 6/16/2022 16:39:26'!
esPistaConDescripcion
	^true.! !


!PistaConDescripcion methodsFor: 'accessing' stamp: 'OM 6/30/2022 14:52:44'!
descripcion
	^descripcion! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PistaConDescripcion class' category: 'CarmenSandiego'!
PistaConDescripcion class
	instanceVariableNames: ''!

!PistaConDescripcion class methodsFor: 'instance creation' stamp: 'mb 6/15/2022 15:59:49'!
conDescripcion: unaDescripcion 
	
	^self new conDescripcion: unaDescripcion ! !


!classDefinition: #PistaConPais category: 'CarmenSandiego'!
Pista subclass: #PistaConPais
	instanceVariableNames: 'pais'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!PistaConPais methodsFor: 'initialization' stamp: 'mb 6/15/2022 15:49:58'!
conPais: unPais
	pais _ unPais! !


!PistaConPais methodsFor: 'testing' stamp: 'mb 6/15/2022 15:52:03'!
esPistaPais
	^true.! !


!PistaConPais methodsFor: 'accessing' stamp: 'gz 6/20/2022 17:52:16'!
pais
	^pais! !


!PistaConPais methodsFor: 'action' stamp: 'OM 6/29/2022 17:58:39'!
darInformacionA: unDetective 
	
	unDetective agregarProximoDestino: self.
	super darInformacionA: unDetective ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PistaConPais class' category: 'CarmenSandiego'!
PistaConPais class
	instanceVariableNames: ''!

!PistaConPais class methodsFor: 'instance creation' stamp: 'mb 6/15/2022 15:49:03'!
conPais: pais 
	
	^self new conPais: pais ! !


!classDefinition: #PistaSinInformacion category: 'CarmenSandiego'!
Pista subclass: #PistaSinInformacion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!PistaSinInformacion methodsFor: 'action' stamp: 'OM 6/30/2022 12:14:06'!
darInformacionA: unDetective 
 	unDetective noAnotaPista! !


!PistaSinInformacion methodsFor: 'accessing' stamp: 'gz 6/20/2022 13:42:33'!
esPistaSinInformacion
	^ true! !


!classDefinition: #ProveedorDeTipoDeViaje category: 'CarmenSandiego'!
Object subclass: #ProveedorDeTipoDeViaje
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!ProveedorDeTipoDeViaje methodsFor: 'accessing' stamp: 'OM 7/6/2022 14:22:52'!
tiempoDeViajePara: unDetective 
	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ProveedorDeTipoDeViaje class' category: 'CarmenSandiego'!
ProveedorDeTipoDeViaje class
	instanceVariableNames: ''!

!ProveedorDeTipoDeViaje class methodsFor: 'accessing' stamp: 'gz 6/20/2022 17:06:25'!
tipoDeViajeParaViajarA: paisDestino desde: paisOrigen 
	^ (self allSubclasses detect: [:tipoDeViaje | tipoDeViaje viajeA: paisDestino desde: paisOrigen ]) new! !


!classDefinition: #ViajeAPaisLimitrofe category: 'CarmenSandiego'!
ProveedorDeTipoDeViaje subclass: #ViajeAPaisLimitrofe
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!ViajeAPaisLimitrofe methodsFor: 'accessing' stamp: 'gz 6/20/2022 16:33:34'!
tiempoDeViajePara: unDetective 
	^ unDetective tiempoViajando / 2! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ViajeAPaisLimitrofe class' category: 'CarmenSandiego'!
ViajeAPaisLimitrofe class
	instanceVariableNames: ''!

!ViajeAPaisLimitrofe class methodsFor: 'testing' stamp: 'gz 6/20/2022 16:29:48'!
viajeA: paisDestino desde: paisOrigen 
	^ paisOrigen esLimitrofeCon: paisDestino ! !


!classDefinition: #ViajeAPaisNoLimitrofe category: 'CarmenSandiego'!
ProveedorDeTipoDeViaje subclass: #ViajeAPaisNoLimitrofe
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!ViajeAPaisNoLimitrofe methodsFor: 'accessing' stamp: 'gz 6/20/2022 16:42:17'!
tiempoDeViajePara: unDetective 
	^unDetective tiempoViajando ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ViajeAPaisNoLimitrofe class' category: 'CarmenSandiego'!
ViajeAPaisNoLimitrofe class
	instanceVariableNames: ''!

!ViajeAPaisNoLimitrofe class methodsFor: 'testing' stamp: 'gz 6/20/2022 16:41:37'!
viajeA: paisDestino desde: paisOrigen 
	^ (paisOrigen esLimitrofeCon: paisDestino) not! !


!classDefinition: #Sospechoso category: 'CarmenSandiego'!
Object subclass: #Sospechoso
	instanceVariableNames: 'nombre colorDeCabello formaDeCabello colorDeOjos objetoDeValor rutaDeEscape'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!Sospechoso methodsFor: 'initialization' stamp: 'mb 6/22/2022 15:46:18'!
conNombre: nombreSospechoso cabelloDeColor: colorDelCabello yForma: formaDelCabello conOjos: colorDeLosOjos 
	nombre _ nombreSospechoso.
	colorDeCabello _ colorDelCabello.
	formaDeCabello _ formaDelCabello.
	colorDeOjos _ colorDeLosOjos.! !

!Sospechoso methodsFor: 'initialization' stamp: 'OM 7/6/2022 15:33:10'!
initialize 
	rutaDeEscape _ OrderedCollection new.! !


!Sospechoso methodsFor: 'accessing' stamp: 'OM 6/22/2022 23:31:28'!
colorDeCabello
	
	^colorDeCabello descripcion ! !

!Sospechoso methodsFor: 'accessing' stamp: 'OM 6/22/2022 23:31:35'!
colorDeOjos
	
	^colorDeOjos descripcion ! !

!Sospechoso methodsFor: 'accessing' stamp: 'OM 6/22/2022 23:31:41'!
formaDeCabello
	
	^formaDeCabello descripcion ! !

!Sospechoso methodsFor: 'accessing' stamp: 'mb 6/11/2022 20:21:27'!
nombre

	^nombre! !

!Sospechoso methodsFor: 'accessing' stamp: 'OM 7/7/2022 15:01:26'!
rutaDeEscape 
	^ rutaDeEscape . ! !


!Sospechoso methodsFor: 'testing' stamp: 'OM 6/30/2022 15:32:57'!
coincideConAlgunaDescripcionDe: descripciones  
	^ descripciones allSatisfy: [:descripcion | descripcion coincideConAlgunaDescripcionDe: self]! !

!Sospechoso methodsFor: 'testing' stamp: 'gz 6/20/2022 18:10:46'!
tieneEnSuRutaDeEscapeA: unPais 
	^rutaDeEscape includes: unPais! !


!Sospechoso methodsFor: 'action' stamp: 'gz 6/20/2022 18:10:02'!
escaparA: unPais 
	rutaDeEscape add: unPais.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Sospechoso class' category: 'CarmenSandiego'!
Sospechoso class
	instanceVariableNames: ''!

!Sospechoso class methodsFor: 'instance creation' stamp: 'mb 6/11/2022 20:19:02'!
conNombre: nombreDelSospechoso cabelloDeColor: colorDelCabello yForma: formaDelCabello conOjos: colorDeOjos 

	^self new conNombre: nombreDelSospechoso cabelloDeColor: colorDelCabello yForma: formaDelCabello conOjos: colorDeOjos ! !


!classDefinition: #Testigo category: 'CarmenSandiego'!
Object subclass: #Testigo
	instanceVariableNames: 'pistas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CarmenSandiego'!

!Testigo methodsFor: 'initialization' stamp: 'OM 7/6/2022 15:42:46'!
conPistas: lasPistas   
	pistas _ lasPistas. 
! !


!Testigo methodsFor: 'action' stamp: 'OM 7/6/2022 16:03:09'!
darPistaA: unDetective
	|pista|
	pista _ pistas first.
	pista darInformacionA: unDetective.
	pistas remove: pista. ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Testigo class' category: 'CarmenSandiego'!
Testigo class
	instanceVariableNames: ''!

!Testigo class methodsFor: 'instance creation' stamp: 'OM 7/6/2022 15:40:32'!
conPistas: pistas   

	^self new conPistas: pistas! !

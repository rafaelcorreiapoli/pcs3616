JP INICIO
@	/0
DOIS K /0002
INI_LISTA K /0400
8MIL K /8000

@	/10					; Define que o endereço é 0x010
OPCODE K /0				; Variavel OPCODE
MNEM K 	/0				; Variavel MNEM


@ /100					; Define que o endereço é 0x100
OP2MNEM K /0			; Subrotina OP2MNEM
	LD OPCODE			; Carrega o valor de OPCODE
	*_ DOIS				; Multiplica por 2
	+_ INI_LISTA		; Soma com o inicio da lista
	+_ 8MIL				; Soma com a instrução para carregar
	MM X				; Escreve na proxima instrução
X   K /0				; Irá carregar MNEM
SC	OP2MNEM				; Retorno da subrotina

@ /200					; Define que o endereço é 0x200
MNEM2OP K /0			;Subrotina MNEM2OP

@ /300
INICIO K /0


@ /400					; Define que o endereço é 0x400
JP K 'JP				; Tabela de Mnemônicos
JZ K 'JZ	
JN K 'JN
LV K 'LV
+_ K '+_
-_ K '-_
*_ K '*_
/_ K '/_
LD K 'LD
MM K 'MM
SC K 'SC
RS K 'RS
HM K 'HM
GD K 'GD
PD K 'PD
OS K 'OS
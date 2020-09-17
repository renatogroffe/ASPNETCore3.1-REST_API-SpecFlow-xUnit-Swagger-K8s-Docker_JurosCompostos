Funcionalidade: Cálculo de Juros Compostos

Cenário: SimulacaoJurosCompostos01
	Dado que o valor o valor do empréstimo é de R$ 10.000,00
	E que este empréstimo será por 12 meses
	E que a taxa de juros é de 2,00% ao mês
	Quando eu solicitar o cálculo do valor total a ser pago ao final do período
	Então o resultado será 12.682,42

Cenário: SimulacaoJurosCompostos02
	Dado que o valor o valor do empréstimo é de R$ 11.937,28
	E que este empréstimo será por 24 meses
	E que a taxa de juros é de 4,00% ao mês
	Quando eu solicitar o cálculo do valor total a ser pago ao final do período
	Então o resultado será 30.598,88

Cenário: SimulacaoJurosCompostos03
	Dado que o valor o valor do empréstimo é de R$ 15.000,00
	E que este empréstimo será por 36 meses
	E que a taxa de juros é de 6,00% ao mês
	Quando eu solicitar o cálculo do valor total a ser pago ao final do período
	Então o resultado será 122.208,78

Cenário: SimulacaoJurosCompostos04
	Dado que o valor o valor do empréstimo é de R$ 20.000,00
	E que este empréstimo será por 36 meses
	E que a taxa de juros é de 6,00% ao mês
	Quando eu solicitar o cálculo do valor total a ser pago ao final do período
	Então o resultado será 162.945,04

Cenário: SimulacaoJurosCompostos05
	Dado que o valor o valor do empréstimo é de R$ 25.000,00
	E que este empréstimo será por 48 meses
	E que a taxa de juros é de 6,00% ao mês
	Quando eu solicitar o cálculo do valor total a ser pago ao final do período
	Então o resultado será 409.846,79

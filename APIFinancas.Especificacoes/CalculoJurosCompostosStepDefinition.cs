using Xunit;
using TechTalk.SpecFlow;

namespace APIFinancas.Especificacoes
{
    [Binding]
    public class CalculoJurosCompostosStepDefinition
    {
        private double _valorEmprestimo;
        private int _numMeses;
        private double _percTaxa;
        private double _valorCalculado;

        [Given(@"que o valor o valor do empréstimo é de R\$ (.*)")]
        public void PreencherValorEmprestimo(double valorEmprestimo)
        {
            _valorEmprestimo = valorEmprestimo;
        }
        
        [Given(@"que este empréstimo será por (.*) meses")]
        public void PreencherNumeroMeses(int numMeses)
        {
            _numMeses = numMeses;
        }
        
        [Given(@"que a taxa de juros é de (.*)% ao mês")]
        public void PreencherPercentualTaxa(double percTaxa)
        {
            _percTaxa = percTaxa;
        }
        
        [When(@"eu solicitar o cálculo do valor total a ser pago ao final do período")]
        public void ProcessarCalculoJurosCompostos()
        {
            _valorCalculado = CalculoFinanceiro
                .CalcularValorComJurosCompostos(
                    _valorEmprestimo, _numMeses, _percTaxa);
        }
        
        [Then(@"o resultado será (.*)")]
        public void ValidarResultado(double valorFinalEmprestimo)
        {
            Assert.Equal(valorFinalEmprestimo, _valorCalculado);
        }
    }
}
// Declarando as variáveis (let, var, const)
let valorInicial = 0;
let valorMensal = 0;
let taxaJuros = 0;
let qtdMeses = 0;
let resultado = 0;
let resultadoTotalInvestido = 0;
let resultadoTotalJuros = 0;

// Função para pegar os dados do html
function getValueElement(id) {
    var elemento = document.getElementById(id);
    return elemento.value;
}

// Pegar os dados 
function getDados() {
    valorInicial = getValueElement("valor-inicial");
    valorMensal = getValueElement("valor-mensal");
    taxaJuros = getValueElement("taxa-juros");
    qtdMeses = getValueElement("periodo");        
    
    resultado = valorInicial * Math.pow( (1+taxaJuros/100), qtdMeses/12);
    var totalFinalElemento = document.getElementById("total-final");
    totalFinalElemento.innerText = resultado.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});

    resultadoTotalInvestido = parseFloat(valorInicial);
    var totalInvestidoElemento = document.getElementById("total-investido");
    totalInvestidoElemento.innerText = resultadoTotalInvestido.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});
    
    resultadoTotalJuros = resultado - valorInicial;
    var totalJurosElemento = document.getElementById("total-juros");
    totalJurosElemento.innerText = resultadoTotalJuros.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});
}

// Função
function calcular() {
    getDados();
    
}

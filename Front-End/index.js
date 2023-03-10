// Declarando as variáveis (let, var, const)
let valorInicial = 0;
let valorMensal = 0;
let taxaJuros = 0;
let qtdMeses = 0;
let resultado = 0;

function getValueElement(id) {
    var elemento = document.getElementById("valor-inicial");
    return elemento.value;
}

// Função para pegar os dados do 
function getDados() {
    valorInicial = getValueElement("valor-inicial");
    valorMensal = getValueElement("valor-mensal");
    taxaJuros = getValueElement("taxa-juros");
    qtdMeses = getValueElement("periodo");                
}

// Função
function calcular() {
    getDados();
    
}

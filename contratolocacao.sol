pragma solidity 0.5.12;
//comentario nao colocar acentos nas palavras
contract Locacao {
    
   string private locador;
   
   // qualificacao
   
   string private locatario;
   
   // qualificacao
   
   string public imovel;

    // descricao

    uint private valor;
    
    string public indicedereajuste;
    
    string public prazoreajuste;
    
    string public prazolocacao;
    
    string public solucaocontroversia;
    
    constructor(string memory qualificacaolocador, string memory qualificacaolocatario, uint valordoaluguel)
    
    public {
        
        locador = qualificacaolocador;
        locatario = qualificacaolocatario;
        valor = valordoaluguel;
        
    }
    
    function valordoaluguel() public view returns (uint) {
        return valor;
   
    }
    
    function simulamulta (uint mesesrestantes, 
                        uint totalmesescontrato)
    public
    view
    returns (uint valormulta) {
        
        valormulta = valor*3;
        valormulta = valormulta/totalmesescontrato;
        valormulta = valormulta*mesesrestantes;
        
        return valormulta; 
        
    }
    
}










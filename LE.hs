module LE where 

-- Na linguagem de expressoes (LE), 
-- a versao inicial suporta apenas 
-- expressoes envolvendo numeros inteiros 
-- e os operadores de soma e subtracao. 


data Expressao = Valor Int
               | Soma Expressao Expressao
               | Subtracao Expressao Expressao 
               | Multiplicacao Expressao Expressao
               | Divisao Expressao Expressao 
 deriving(Show, Eq)

-- O interpretador da linguagem LE eh 
-- basicamente um avaliador de expressoes. 
-- A implementacao eh baseada em casamento de 
-- padroes. 

avaliar :: Expressao -> Int
avaliar (Valor n) = n
avaliar (Soma e d) =  avaliar e + avaliar d
avaliar (Subtracao e d) = avaliar  e - avaliar d
avaliar (Multiplicacao e d) =  avaliar e * avaliar d 
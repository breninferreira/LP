module LLE where 

-- A linguagem LLE suporta tanto 
-- expressoes identificadas (LET) quanto 
-- identificadores e expressoes

type Id = String

data Expressao = Valor Int
               | Soma Expressao Expressao
               | Subtracao Expressao Expressao 
               | Multiplicacao Expressao Expressao
               | Divisao Expressao Expressao 
               | Let Id Expressao Expressao       
               | Ref Id 
 deriving(Show, Eq)

-- O interpretador da linguagem LLE eh 
-- basicamente um avaliador de expressoes, mas 
-- com suporte a substituicao. 

avaliar :: Expressao -> Int
avaliar (Valor n) = n
avaliar (Soma e d) =  avaliar e + avaliar d
avaliar (Subtracao e d) = avaliar  e - avaliar d
avaliar (Multiplicacao e d) =  avaliar e * avaliar d 

substituicao :: Id -> Int -> Expressao -> Expressao
substituicao i v (Valor n) = Valor n
substituicao i v (Soma e1 e2) = 
 let se1 = substituicao i v e1 
     se2 = substituicao i v e2 
 in Soma se1 se2 

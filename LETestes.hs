module LETestes where 

import LE

import Test.HUnit

v5 = Valor 5
v3 = Valor 3 

s1 = Soma v5 v3

s2 = Soma s1 v3 

teste1 = TestCase (assertEqual "avaliar 5" 5 (avaliar v5))

teste2 = TestCase (assertEqual "avaliar 5 + 3" 8 (avaliar s1))

teste3 = TestCase (assertEqual "avaliar (5 + 3) + 3" 11 (avaliar s2))

todosOsTestes = TestList [ teste1
                         , teste2
                         , teste3
                         ]

type Nome =String
type Idade=Int
type Linguagem=String
type Pessoa=(Nome, Idade, Linguagem)

pessoa :: Pessoa

pessoa=("joao",20,"haskel")
my_fst:: Pessoa->Nome
my_fst (n,i,l)=n
print my_fst
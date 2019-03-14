--GHC
--P/entrar cmd e digite gchi
--P/ carregar arquivo :l {nome arquivo}
--P/ sair do ghci :q
--P/ limpar tela CTRL + L
--P/ recarregar :r
--HASKELL
-- O = representa uma definição
-- A função ++ representa concatenação de lista
-- head extrai o primeiro da lista
-- last extrai o ultimo da lista
-- tail extrai tudo sem o primeiro da lista
-- reverse inverte a ordem da lista

--FATORIAL
fatorial 0 = 1
fatorial n = fatorial(n-1)*n

--MOSTRAR NUMERO EQUIVALENTE A SEQUENCIA DE FIBONACCI
fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib(n-2)

--UTILIZANDO GUARDA(CONDIÇÃO LÓGICA A SER VERDADEIRA) o | indica a GUARDA
guarda x | (x == 0) = 0
         | (x == 1) = 1
         | otherwise = 10

-- VARIÁVEL ANÔNIMA indicada pelo  _

my_and :: Bool -> Bool -> Bool
my_and False _ = False
my_and _ False = False
my_and True True = True

-- TUPLAS (CONJUNTO DE DADOS HETEROGÊNEOS)
func :: (Int, Int) -> (Int, Int) -> (Int, Int)
func (a,b) (c,d) = (a+c, b+d)

--EXTRAIR DADOS DE TUPLAS
nomes :: (String, String, String)
nomes = ("Luigi", "Mario", "Princess")

selec_prim (x, _, _) = x
selec_sec (_, y, _) = y
selec_ter (_, _, z) = z

--Função type definindo tipos

type Nome = String
type Idade = Int
type Linguagem = String
type Pessoa = (Nome, Idade, Linguagem)

pessoa :: Pessoa
pessoa = ("Luigi", 21, "haskell")

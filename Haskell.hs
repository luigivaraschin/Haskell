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

-- FUNÇÃO QUE RECEBE DUAS LISTAS DE INTEIRO E VERIFICA SE AS LISTAS
--TEEM O MESMO NUMERO DE ELEMENTOS, OS MESMOS ELEMENTOS E SE OS ELEMENTOS
--ESTÃO NA MESMA POSIÇÃO

comparaLista :: [Int] -> [Int] -> Bool
comparaLista [] [] = True
comparaLista [] _ = False
comparaLista _ [] = False
comparaLista (a:b) (c:d) | (a == c) = comparaLista b d
                         | otherwise = False


--Função que recebe lista e retorna o inverso da mesma utilizaremos o
-- [t] para generalizar o tipo recebido


inverteLista :: [t] -> [t]
inverteLista [] = []
inverteLista (x:xs) = inverteLista xs ++ [x]


--Verificar se um elemento pertence a uma lista

pertence :: [Int] -> Int -> Bool
pertence [] _ = False
pertence (x:xs) n | (x == n) = True
                  | otherwise = pertence xs n



-- Verificar o maior elemento da lista

maior :: [Int] -> Int
maior [x] = x
maior (x:xs) | (x > maior xs) = x
             | otherwise = maior xs

-- Função para receber uma lista e verificar se todos os elementos
-- são pares

todosPares :: [Int] -> Bool
todosPares [] = True
todosPares (x:xs) | (mod x 2 == 0) = False
                  | otherwise = todosPares xs



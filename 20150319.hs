multiplica :: Int -> Int 
multiplica n = (*) n 2

double :: [Int] -> [Int]
double list = map multiplica list

member :: [Int] -> Int -> Bool
member list n 
		| list == [] = False
		| head list == n = True
		| otherwise   = member (tail list) n 


verifica :: Char -> Bool 
verifica element 
		| (element >= '0') && (element <='9') = True
		| otherwise    = False
		
digits :: String -> String
digits  nome 
		| nome == [] = [] 
		| verifica (head nome) == True = head nome : digits(tail nome)
		| otherwise       = digits(tail nome) 
		
sumPairs :: [Int] -> [Int] -> [Int]	
sumPairs list1 list2 
			| (list1 == []) && (list2 == []) = []
			| list1 == [] = [head list2] : sumPairs [] (tail list2)
			| list2 == [] = [head list1] : sumPairs (tail list1) [] 
			| otherwise      = (head list1 + head list2) : sumPairs (tail list1) (tail list2) 
 
		
		
		
		
		
git config --global user.name "marciojr"

git config --global user.email "mmcj@cin.ufpe.br"

cd Desktop

git clone https://github.com/marciojr/if686

git add 20150319.hs
git status
git commit -m "uma mensagem do commit"
git push origin master

e seja feliz

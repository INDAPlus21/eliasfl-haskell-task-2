# eliasfl-haskell-task-2

From kattis problem: [Uppvärmning](https://kth.kattis.com/problems/kth.progp.warmup)

Solutions are found in the [`F1`](F1.hs) module

## Proof

![Submission proof](proof.png)

## Text question answers (in swedish)

1. För att haskell är lazy-evaluated och skapar inte en oändlig lista med tal fören du ska ta från den.
2. Rekursion: att en funktion kallar på sig själv. När funktionsdefinitionen innehåller/kör sig själv.
3. För att javascript har en maximum call stack size vilket gör att rekursionen inte kan vara för djup. Haskell hanterar detta genom att inte ha något max för detta men utnyttjar också tail-recursion som gör att funktionen inte bokstavligen behöver initieras igen utan det tidigare returvärdet matas bara in i funktionen igen.

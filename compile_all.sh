#!/usr/bin/env bash
declare -a arr=("OpAlg_WS15/operatoralgebren")
for i in "${arr[@]}"
do
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf -dvi- -ps- -cd -silent -f -interaction=nonstopmode "$i.tex";
done

# declare -a arr2=("Fima_WS14/Fima_WS14" "EinfAlg_WS14/Einf_Algebra" "ModRed_WS15/Modellreduktion")
# for i in "${arr2[@]}"
# do
# 	latexmk -pdflatex="pdflatex --shell-escape %O %S" -pdf -dvi- -ps- -cd -silent -f -interaction=nonstopmode "$i.tex";
# done
exit 0


# Generated from trgen <version>
rm -f *.interp
files=()
<tool_grammar_tuples:{x |
files+=( `java -jar "<antlr_tool_path>" -depend -encoding <antlr_encoding> -Dlanguage=TypeScript <x.AntlrArgs> <antlr_tool_args:{y | <y> } > <x.GrammarFileNameTarget> | awk '{print $1\}' | grep -v ':'` )
} >
for i in ${files[*]}
do
    rm -f $i
done
rm -rf node_modules package-lock.json
exit 0

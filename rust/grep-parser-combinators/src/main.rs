use parser_combinators::parsers::elem;
use std::io as io;


use grep_parser_combinators::regex_parser::parse_expression;
use grep_parser_combinators::transformers::expression_parser_factory;

fn main() {
    //let mut stream = String::new();
    //let mut stdin = io::stdin();
    //stdin.read_line(&mut stream).unwrap();

    let regex = "ab(c|d)*";

    let (expr, tail) = parse_expression(regex).unwrap();
    let parser = expression_parser_factory(&expr);
    
    let result = parser("abcccccccc");
    println!("{:?}", result);
}

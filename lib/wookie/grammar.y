class WookieParser

token NEWLINE
token NUMBER
token STRING
token TRUE FALSE
token IDENTIFIER

prechigh
  left  '*' '/'
  left  '+' '-'
  right '='
preclow

rule
  Program:
    /*nothing*/ { result = Nodes.new([]) }
  | Expressions { result = val[0] }
  ;

  Expressions:
    Expression                         { result = Nodes.new(val) }
  | Expressions Terminator Expression  { result = val[0] << val[2] }
  | Expressions Terminator             { result = val[0] }
  | Terminator                         { result = Nodes.new([]) }
  ;

  Terminator:
    NEWLINE
  | ";"
  ;

  Expression:
    Literal
  | Operator
  | GetLocal
  | SetLocal
  ;

  Literal:
    NUMBER                        { result = NumberNode.new(val[0]) }
  | STRING                        { result = StringNode.new(val[0]) }
  | TRUE                          { result = TrueNode.new }
  | FALSE                         { result = FalseNode.new }
  ;

  Operator:
  | Expression '+'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '-'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '*'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '/'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  ;

  GetLocal:
    IDENTIFIER                    { result = GetLocalNode.new(val[0]) }
  ;

  SetLocal:
    IDENTIFIER "=" Expression     { result = SetLocalNode.new(val[0], val[2]) }
  ;

---- header
  require "wookie/lexer"
  require "wookie/nodes"

---- inner
  def parse(code, show_tokens=false)
    @tokens = ::WookieLexer.new.tokenize(code) # Tokenize the code using our lexer
    puts @tokens.inspect if show_tokens
    do_parse # Kickoff the parsing process
  end

  def next_token
    @tokens.shift
  end

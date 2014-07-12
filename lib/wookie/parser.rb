#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.11
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require "wookie/lexer"
  require "wookie/nodes"

class WookieParser < Racc::Parser

module_eval(<<'...end grammar.y/module_eval...', 'grammar.y', 77)
  def parse(code, show_tokens=false)
    @tokens = ::WookieLexer.new.tokenize(code) # Tokenize the code using our lexer
    puts @tokens.inspect if show_tokens
    do_parse # Kickoff the parsing process
  end

  def next_token
    @tokens.shift
  end
...end grammar.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    -1,     5,    18,     5,    12,    13,    14,    15,    16,    17,
    23,    24,    21,    22,    27,     6,    19,     6,    18,     5,
    12,    13,    14,    15,    16,    17,     5,    34,    25,    23,
    24,    21,    22,     6,    37,    23,    24,    21,    22,    18,
     6,    12,    13,    14,    15,    16,    17,    23,    24,   -19,
   -19,   -19,   -19,    18,   nil,    12,    13,    14,    15,    16,
    17,    18,   nil,    12,    13,    14,    15,    16,    17,    18,
   nil,    12,    13,    14,    15,    16,    17,    18,   nil,    12,
    13,    14,    15,    16,    17,    18,   nil,    12,    13,    14,
    15,    16,    17,    18,   nil,    12,    13,    14,    15,    16,
    17,    23,    24,    21,    22,    23,    24 ]

racc_action_check = [
     0,     2,     0,     0,     0,     0,     0,     0,     0,     0,
     3,     3,     3,     3,    19,     2,     1,     0,    34,    34,
    34,    34,    34,    34,    34,    34,    36,    26,    17,    26,
    26,    26,    26,    34,    36,    33,    33,    33,    33,    20,
    36,    20,    20,    20,    20,    20,    20,    30,    30,    20,
    20,    20,    20,    23,   nil,    23,    23,    23,    23,    23,
    23,    24,   nil,    24,    24,    24,    24,    24,    24,    18,
   nil,    18,    18,    18,    18,    18,    18,    21,   nil,    21,
    21,    21,    21,    21,    21,    22,   nil,    22,    22,    22,
    22,    22,    22,    25,   nil,    25,    25,    25,    25,    25,
    25,    28,    28,    28,    28,    29,    29 ]

racc_action_pointer = [
     0,    16,    -2,    -2,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    12,    67,    14,
    37,    75,    83,    51,    59,    91,    17,   nil,    89,    93,
    35,   nil,   nil,    23,    16,   nil,    23,   nil ]

racc_action_default = [
   -19,   -28,    -2,    -3,    -6,    -7,    -8,    -9,   -10,   -11,
   -12,   -13,   -14,   -15,   -16,   -17,   -18,   -24,   -19,   -28,
    -5,   -19,   -19,   -19,   -19,   -19,   -28,    38,    -4,   -20,
   -21,   -22,   -23,   -25,   -19,   -27,   -28,   -26 ]

racc_goto_table = [
    20,     2,    26,     1,    28,    29,    30,    31,    32,    33,
    35,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    20,    36 ]

racc_goto_check = [
     4,     2,     3,     1,     3,     3,     3,     3,     3,     3,
    10,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,     4,     2 ]

racc_goto_pointer = [
   nil,     3,     1,   -16,    -2,   nil,   nil,   nil,   nil,   nil,
   -16 ]

racc_goto_default = [
   nil,   nil,   nil,     3,     4,     7,     8,     9,    10,    11,
   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 19, :_reduce_1,
  1, 19, :_reduce_2,
  1, 20, :_reduce_3,
  3, 20, :_reduce_4,
  2, 20, :_reduce_5,
  1, 20, :_reduce_6,
  1, 22, :_reduce_none,
  1, 22, :_reduce_none,
  1, 21, :_reduce_none,
  1, 21, :_reduce_none,
  1, 21, :_reduce_none,
  1, 21, :_reduce_none,
  1, 21, :_reduce_none,
  1, 23, :_reduce_14,
  1, 23, :_reduce_15,
  1, 23, :_reduce_16,
  1, 23, :_reduce_17,
  1, 23, :_reduce_18,
  0, 24, :_reduce_none,
  3, 24, :_reduce_20,
  3, 24, :_reduce_21,
  3, 24, :_reduce_22,
  3, 24, :_reduce_23,
  1, 25, :_reduce_24,
  3, 26, :_reduce_25,
  3, 28, :_reduce_26,
  3, 27, :_reduce_27 ]

racc_reduce_n = 28

racc_shift_n = 38

racc_token_table = {
  false => 0,
  :error => 1,
  :IF => 2,
  :NEWLINE => 3,
  :NUMBER => 4,
  :STRING => 5,
  :TRUE => 6,
  :FALSE => 7,
  :NIL => 8,
  :IDENTIFIER => 9,
  :INDENT => 10,
  :DEDENT => 11,
  "*" => 12,
  "/" => 13,
  "+" => 14,
  "-" => 15,
  "=" => 16,
  ";" => 17 }

racc_nt_base = 18

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "IF",
  "NEWLINE",
  "NUMBER",
  "STRING",
  "TRUE",
  "FALSE",
  "NIL",
  "IDENTIFIER",
  "INDENT",
  "DEDENT",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "\"=\"",
  "\";\"",
  "$start",
  "Program",
  "Expressions",
  "Expression",
  "Terminator",
  "Literal",
  "Operator",
  "GetLocal",
  "SetLocal",
  "If",
  "Block" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammar.y', 18)
  def _reduce_1(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 19)
  def _reduce_2(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 23)
  def _reduce_3(val, _values, result)
     result = Nodes.new(val) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 24)
  def _reduce_4(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 25)
  def _reduce_5(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 26)
  def _reduce_6(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

module_eval(<<'.,.,', 'grammar.y', 43)
  def _reduce_14(val, _values, result)
     result = NumberNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 44)
  def _reduce_15(val, _values, result)
     result = StringNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 45)
  def _reduce_16(val, _values, result)
     result = TrueNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 46)
  def _reduce_17(val, _values, result)
     result = FalseNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 47)
  def _reduce_18(val, _values, result)
     result = NilNode.new 
    result
  end
.,.,

# reduce 19 omitted

module_eval(<<'.,.,', 'grammar.y', 51)
  def _reduce_20(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 52)
  def _reduce_21(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 53)
  def _reduce_22(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 54)
  def _reduce_23(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 58)
  def _reduce_24(val, _values, result)
     result = GetLocalNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 62)
  def _reduce_25(val, _values, result)
     result = SetLocalNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 65)
  def _reduce_26(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 68)
  def _reduce_27(val, _values, result)
     result = IfNode.new(val[1], val[2]) 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class WookieParser

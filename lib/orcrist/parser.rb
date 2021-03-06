#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.11
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require "orcrist/lexer"
  require "orcrist/nodes"

class OrcristParser < Racc::Parser

module_eval(<<'...end grammar.y/module_eval...', 'grammar.y', 111)
  def parse(code, show_tokens=false)
    @tokens = ::OrcristLexer.new.tokenize(code) # Tokenize the code using our lexer
    puts @tokens.inspect if show_tokens
    do_parse # Kickoff the parsing process
  end

  def next_token
    @tokens.shift
  end
...end grammar.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    21,    20,     5,    14,    15,    16,    17,    18,    19,    45,
    56,    27,    28,    25,    26,     5,     6,    24,    -5,    42,
    21,    20,    -5,    14,    15,    16,    17,    18,    19,     6,
    -5,    31,    57,    58,    30,    -1,    -5,    21,    20,     5,
    14,    15,    16,    17,    18,    19,    27,    28,    25,    26,
    50,    51,    24,     6,    21,    20,     5,    14,    15,    16,
    17,    18,    19,    45,    36,    27,    28,    25,    26,    24,
     6,    24,    47,    21,    20,    24,    14,    15,    16,    17,
    18,    19,    21,    20,    54,    14,    15,    16,    17,    18,
    19,    21,    20,    30,    14,    15,    16,    17,    18,    19,
    21,    20,    22,    14,    15,    16,    17,    18,    19,    21,
    20,    32,    14,    15,    16,    17,    18,    19,    21,    20,
    34,    14,    15,    16,    17,    18,    19,    21,    20,    45,
    14,    15,    16,    17,    18,    19,    27,    28,    25,    26,
    60,   nil,    24,    27,    28,    25,    26,   nil,   nil,    24,
    27,    28,    25,    26,    27,    28,    24,    27,    28,   nil,
    24,   nil,   nil,    24 ]

racc_action_check = [
    30,    30,    52,    30,    30,    30,    30,    30,    30,    33,
    52,    33,    33,    33,    33,     2,    52,    33,    23,    30,
    23,    23,    23,    23,    23,    23,    23,    23,    23,     2,
    23,    19,    53,    53,    19,     0,    23,     0,     0,     0,
     0,     0,     0,     0,     0,     0,    41,    41,    41,    41,
    43,    43,    41,     0,    45,    45,    45,    45,    45,    45,
    45,    45,    45,    32,    24,    55,    55,    55,    55,    40,
    45,    55,    32,    21,    21,    39,    21,    21,    21,    21,
    21,    21,    51,    51,    47,    51,    51,    51,    51,    51,
    51,    31,    31,    36,    31,    31,    31,    31,    31,    31,
    25,    25,     1,    25,    25,    25,    25,    25,    25,    26,
    26,    20,    26,    26,    26,    26,    26,    26,    27,    27,
    22,    27,    27,    27,    27,    27,    27,    28,    28,    57,
    28,    28,    28,    28,    28,    28,    44,    44,    44,    44,
    58,   nil,    44,    35,    35,    35,    35,   nil,   nil,    35,
     3,     3,     3,     3,    38,    38,     3,    37,    37,   nil,
    38,   nil,   nil,    37 ]

racc_action_pointer = [
    35,   102,    11,   137,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    14,
   101,    71,   120,    18,    54,    98,   107,   116,   125,   nil,
    -2,    89,    52,    -2,   nil,   130,    73,   144,   141,    56,
    50,    33,   nil,    29,   123,    52,   nil,    74,   nil,   nil,
   nil,    80,    -2,    11,   nil,    52,   nil,   118,   130,   nil,
   nil ]

racc_action_default = [
   -28,   -42,    -2,    -3,    -6,    -7,    -8,    -9,   -10,   -11,
   -12,   -13,   -14,   -15,   -16,   -17,   -18,   -19,   -20,   -33,
   -42,   -28,   -42,   -28,   -42,   -28,   -28,   -28,   -28,   -21,
   -28,   -28,   -42,   -42,    61,    -4,   -23,   -29,   -30,   -31,
   -32,   -26,   -24,   -42,   -34,   -28,   -36,   -38,   -41,   -22,
   -25,   -28,   -42,   -42,   -39,   -27,   -35,   -42,   -42,   -37,
   -40 ]

racc_goto_table = [
    23,     2,    33,    29,    35,     1,    37,    38,    39,    40,
    43,    41,    44,    46,    48,    53,   nil,   nil,   nil,   nil,
    49,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    55,   nil,   nil,   nil,   nil,   nil,    59,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    52,   nil,   nil,   nil,
    23 ]

racc_goto_check = [
     4,     2,     3,    12,     3,     1,     3,     3,     3,     3,
    13,     3,     3,    14,    14,    15,   nil,   nil,   nil,   nil,
    12,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,     3,   nil,   nil,   nil,   nil,   nil,    14,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,     2,   nil,   nil,   nil,
     4 ]

racc_goto_pointer = [
   nil,     5,     1,   -19,    -2,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   -16,   -20,   -19,   -32 ]

racc_goto_default = [
   nil,   nil,   nil,     3,     4,     7,     8,     9,    10,    11,
    12,    13,   nil,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 24, :_reduce_1,
  1, 24, :_reduce_2,
  1, 25, :_reduce_3,
  3, 25, :_reduce_4,
  2, 25, :_reduce_5,
  1, 25, :_reduce_6,
  1, 27, :_reduce_none,
  1, 27, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 28, :_reduce_16,
  1, 28, :_reduce_17,
  1, 28, :_reduce_18,
  1, 28, :_reduce_19,
  1, 28, :_reduce_20,
  2, 29, :_reduce_21,
  4, 29, :_reduce_22,
  3, 29, :_reduce_23,
  2, 35, :_reduce_24,
  3, 35, :_reduce_25,
  1, 36, :_reduce_26,
  3, 36, :_reduce_27,
  0, 30, :_reduce_none,
  3, 30, :_reduce_29,
  3, 30, :_reduce_30,
  3, 30, :_reduce_31,
  3, 30, :_reduce_32,
  1, 31, :_reduce_33,
  3, 32, :_reduce_34,
  3, 37, :_reduce_35,
  3, 33, :_reduce_36,
  6, 33, :_reduce_37,
  0, 38, :_reduce_38,
  1, 38, :_reduce_39,
  3, 38, :_reduce_40,
  3, 34, :_reduce_41 ]

racc_reduce_n = 42

racc_shift_n = 61

racc_token_table = {
  false => 0,
  :error => 1,
  :IF => 2,
  :DEF => 3,
  :NEWLINE => 4,
  :NUMBER => 5,
  :STRING => 6,
  :TRUE => 7,
  :FALSE => 8,
  :NIL => 9,
  :IDENTIFIER => 10,
  :INDENT => 11,
  :DEDENT => 12,
  "*" => 13,
  "/" => 14,
  "+" => 15,
  "-" => 16,
  "=" => 17,
  ";" => 18,
  "." => 19,
  "(" => 20,
  ")" => 21,
  "," => 22 }

racc_nt_base = 23

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
  "DEF",
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
  "\".\"",
  "\"(\"",
  "\")\"",
  "\",\"",
  "$start",
  "Program",
  "Expressions",
  "Expression",
  "Terminator",
  "Literal",
  "Call",
  "Operator",
  "GetLocal",
  "SetLocal",
  "Def",
  "If",
  "Arguments",
  "ArgList",
  "Block",
  "ParamList" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammar.y', 19)
  def _reduce_1(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 20)
  def _reduce_2(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 24)
  def _reduce_3(val, _values, result)
     result = Nodes.new(val) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 25)
  def _reduce_4(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 26)
  def _reduce_5(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 27)
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

# reduce 14 omitted

# reduce 15 omitted

module_eval(<<'.,.,', 'grammar.y', 46)
  def _reduce_16(val, _values, result)
     result = NumberNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 47)
  def _reduce_17(val, _values, result)
     result = StringNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 48)
  def _reduce_18(val, _values, result)
     result = TrueNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 49)
  def _reduce_19(val, _values, result)
     result = FalseNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 50)
  def _reduce_20(val, _values, result)
     result = NilNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 54)
  def _reduce_21(val, _values, result)
     result = CallNode.new(nil, val[0], val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 56)
  def _reduce_22(val, _values, result)
     result = CallNode.new(val[0], val[2], val[3]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 57)
  def _reduce_23(val, _values, result)
     result = CallNode.new(val[0], val[2], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 61)
  def _reduce_24(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 62)
  def _reduce_25(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 66)
  def _reduce_26(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 67)
  def _reduce_27(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

# reduce 28 omitted

module_eval(<<'.,.,', 'grammar.y', 72)
  def _reduce_29(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 73)
  def _reduce_30(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 74)
  def _reduce_31(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 75)
  def _reduce_32(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 79)
  def _reduce_33(val, _values, result)
     result = GetLocalNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 83)
  def _reduce_34(val, _values, result)
     result = SetLocalNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 86)
  def _reduce_35(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 90)
  def _reduce_36(val, _values, result)
     result = DefNode.new(val[1], [], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 92)
  def _reduce_37(val, _values, result)
     result = DefNode.new(val[1], val[3], val[5]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 96)
  def _reduce_38(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 97)
  def _reduce_39(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 98)
  def _reduce_40(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 102)
  def _reduce_41(val, _values, result)
     result = IfNode.new(val[1], val[2]) 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class OrcristParser

printstyled("------     |          -------     ---------      |     |  |  ------", color=:light_yellow                      );println("");printstyled("|     |    |          |      |    |              |    |      |   ", color=:light_yellow);println("");printstyled("|     |    |          |      |    |              |   |       |     ", color=:light_yellow);println("");printstyled("|-----     |          |      |    |              |----       ------" , color=:light_yellow       );println("");printstyled("|     |    |          |      |    |              |   |              |", color=:light_yellow);println("");printstyled("|     |    |          |      |    |              |    |             |", color=:light_yellow);println("");printstyled("-------    --------   --------    ---------      |     |      ------", color=:light_yellow);println("");
printstyled("|           |        ----------      ---------        |             ------      "              , color=:light_yellow        );println("");printstyled("|           |        |        |      |        |       |             |      |", color=:light_yellow);println("");printstyled("|           |        |        |      |        |       |             |      |"    , color=:light_yellow);println("");printstyled("|           |        |        |      |--------        |             |      |"        , color=:light_yellow);println("");printstyled("|     |     |        |        |      |        |       |             |      |", color=:light_yellow);println("");printstyled("|     |     |        |        |      |         |      |             |      |", color=:light_yellow);println("");printstyled("-------------        ----------      |          |     -----------   -----", color=:light_yellow)
println("")
println("PRESS ENTER TO START!")
readline()

println("")
printstyled("**********************************ARTIFICIAL INTELLIGENCE SUPPLEMENTARY ASSIGNMENT*********************************", color=:light_yellow)


printstyled("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~PART 1:BLOCKS WORLD PLANNER BASED ON USER INPUT~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", color=:light_yellow)
println("")

box = 1
blocks = 5
tables = 4
block1 = "A"
block2 = "B"
block3 = "C"
block4 = "D"
block5 = "E"

table1 ="Elise"
table2 = "Milo"
table3 = "Bibi"
table4 = "Donut"

if true
    println("Block is in box")
else
    println("Block is on table")
end

if false
    println("Block is in box")
else
    println("Block is on table")
end

blocklimitpertable = 5

action1 = "put block A on table"
action2 =  "put a block A on top of another block B"
action3 = "move a block from any table to the box"

println(" ")


function blockschoice(B=Int64,msg="how many blocks would you like?:")
    print("$msg")
    if B == String
        return readline()
    else
        try
            return parse(B, readline())
        catch
            println("Blocks world does not support this input :-(")
            blockschoice(B, msg)
            readline()
        end
    end
end

b=blockschoice(Int64, "how many blocks would you like? **block selection rules: please select a number from 2, 3 or 4 orelse final layout will not be accurate ~hint: try to remember this number as you will need it later: ");println(b);


function tableschoice(T=Int64,msg="how many tables would you like?(*table selection rules: please select 2 if you selected 2 blocks, 4 if you selected 3 blocks, 1 if you selected 4 blocks) final layout will not be accurate ~hint: try to remember this number as you will need it later: ")
    print("$msg")
    if T == String
        return readline()
    else
        try
            return parse(T, readline())
        catch
            println("Blocks world does not support this type :-( Please enter a type int of value: 2, 4 or 1 according to *table selection rules")
            tableschoice(T, msg)
            readline()
        end
    end
end

t=tableschoice(Int64, "how many tables would you like?(*table selection rules: please select 2 if you selected 2 blocks, 4 if you selected 3 blocks, 1 if you selected 4 blocks orelse final layout will not be accurate) ~hint: try to remember this number as you will need it later: ");println(t);

function layoutchoice(L=Int64,msg="which layout would you like?(*layout selection rules: please enter 1 for two_blocks_stacked_on_1table if you selected 2 blocks and two tables, please enter 2 for LAYOUT-twoblocksstackedon1table&oneblockon1table if you selected 3 blocks and 4 tables, please enter 3 for LAYOUT-four_blocks_on_1table if you selected 4 blocks and 1 table) orelse final layout will not be accurate: ")
    print("$msg")
    if L == String
        return readline()
    else
        try
            return parse(L, readline())
        catch
            println("Blocks world does not support this type :-( Please enter a type int of value: 1, 2 or 3 according to *layout selection rules")
            layoutchoice(L, msg)
            readline()
        end
    end
end

l=layoutchoice(Int64, "which layout would you like?(*layout selection rules: please enter 1 for LAYOUT1:two_blocks_stacked_on_1table if you selected 2 blocks and two tables, please enter 2 for LAYOUT2-twoblocksstackedon1table&oneblockon1table if you selected 3 blocks and 4 tables, please enter 3 for LAYOUT3-four_blocks_on_1table if you selected 4 blocks and 1 table) orelse final layout will not be accurate: ");println(l);using TerminalMenus


using TerminalMenus

chooseyourworld=["world1:(2blocks.2tables)*two_blocks_stacked_on_1table","world2:(3blocks.4tables)*twoblocksstackedon1table&oneblockon1table", "world3:(4blocks.1table)*four_blocks_on_1table"]

menu =  RadioMenu(chooseyourworld, pagesize = 3)
userdecision = request("define your layout//goal *indicated by asterisk* based on the number of blocks and tables which you chose before: ", menu);if userdecision == 1

    println("");println("yourworldgoal:", chooseyourworld[userdecision], "*");println("Initial state: all blocks in box");println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("---");println("|B|       |");println("---");println("---------");println(" ");println("step1: Move BlockB from box to Bibitable");println("");println("  ---");println("  |B|");println("  ---");println("__________  __________    ");println("table_Bibi  tableDonut");println(" ");println(" ");println("step2: Move BlockA from box to top of BlockB");println("");println("  ---");println("  |A|");println("  ---");println("  ---");println("  |B|");println("  ---");println("__________     __________ ");println("table_Bibi    tableDonut");println(" ");readline();

elseif userdecision == 2
    println("yourworldgoal:", chooseyourworld[userdecision], "*");println("");println("Initial state: all blocks in box");println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("---");println("|B|       |");println("---");println("---");println("|C|       |");println("---");println("----------");println("");println("step1: Move BlockB from box to Elisetable");println("");println("  ---");println("  |B|");println("  ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println(" ");println("");println("step2: Move BlockA from box to top of BlockB");println("");println("  ---");println("  |A|");println("  ---");println("  ---");println("  |B|");println("  ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println("");println("step3: Move BlockC from box to table_Milo");println("");println("  ---");println("  |A|");println("  ---");println("  ---                ---");println("  |B|                |C|");println("  ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println("step4: Move BlockA to table_Bibi");println("");println("  ---                ---                ---");println("  |B|                |C|                |A|");println("  ---                ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println("step5: Move BlockB to top of BlockC");println("                     ---");println("                     |B|");println("                     ---                ---");println("                     |C|                |A|");println("                     ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println("step6: Move BlockB to table_Donut");println("");println("                     ---                ---                ---");println("                     |C|                |A|                |B|");println("                     ---                ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println("step7: Move BlockC to top of BlockB");println("");println("                                                        ---");println("                                                        |C|");println("                                     ---                ---");println("                                     |A|                |B|");println("                                     ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println("step8: Move BlockA to table_Milo");println("");println("                                                        ---");println("                                                        |C|");println("                    ---                                 ---");println("                    |A|                                 |B|");println("                    ---                                 ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");readline();

else userdecision == 3
    println("Initial state: all blocks in box");println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("---");println("|B|       |");println("---");println("---");println("|C|       |");println("---");println("---");println("|D|       |");println("---");println("---------")
    println("step1: Move BlockD from box to Donut table");println("");println("  ---");println("  |D|");println("  ---");println("__________       ");println("table_Donut");println(" ");
    println(" ");println("step2: Move BlockA to top of BlockD");println("");println("  ---");println("  |A|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");
    println("step3: Move BlockA to box");println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("----------")
    println(" ");println("step4: Move BlockC to top of BlockD");println("");println("  ---");println("  |C|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");
    println(" ");println("step5: Move BlockA to top of BlockC");println("");println("  ---");println("  |A|");println("  ---");println("  ---");println("  |C|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");
    println("");println("step6: Move BlockA to box");println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("----------")
    println(" ");println("step7: Move BlockB to top of BlockC");println("");println("  ---");println("  |B|");println("  ---");println("  ---");println("  |C|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");
    println(" ");println("step8: Move BlockA from box to top of BlockB");println("");println("  ---");println("  |A|");println("  ---");println("  ---");println("  |B|");println("  ---");println("  ---");println("  |C|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");readline();

end

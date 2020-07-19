printstyled("**********************************ARTIFICIAL INTELLIGENCE SUPPLEMENTARY ASSIGNMENT*********************************", color=:light_yellow)

printstyled("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~PART 1:BLOCKS WORLD PLANNER BASED ON USER INPUT~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", color=:light_yellow)

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

println(" ")


using TerminalMenus

chooseyourworld=["world1:(2blocks.2tables)two_blocks_stacked_on_1table","world2:(3blocks.4tables)twoblocksstackedon1table&oneblockon1table", "world3:(4blocks.1table)four_blocks_on_1table"]

menu =  RadioMenu(chooseyourworld, pagesize = 3)
userdecision = request("define your world:", menu);if userdecision == 1

    println("");println("yourworldgoal:", chooseyourworld[userdecision], "*");println("Initial state: all blocks in box");println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("---");println("|B|       |");println("---");println("---------");println(" ");println("step1: Move BlockB from box to Bibitable");println("");println("  ---");println("  |B|");println("  ---");println("__________  __________    ");println("table_Bibi  tableDonut");println(" ");println(" ");println("step2: Move BlockA from box to top of BlockB");println("");println("  ---");println("  |A|");println("  ---");println("  ---");println("  |B|");println("  ---");println("__________     __________ ");println("table_Bibi    tableDonut");println(" ")

elseif userdecision == 2
    println("yourworldgoal:", chooseyourworld[userdecision], "*");println("");println("Initial state: all blocks in box");println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("---");println("|B|       |");println("---");println("---");println("|C|       |");println("---");println("----------");println("");println("step1: Move BlockB from box to Elisetable");println("");println("  ---");println("  |B|");println("  ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println(" ");println("");println("step2: Move BlockA from box to top of BlockB");println("");println("  ---");println("  |A|");println("  ---");println("  ---");println("  |B|");println("  ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println("");println("step3: Move BlockC from box to table_Milo");println("");println("  ---");println("  |A|");println("  ---");println("  ---                ---");println("  |B|                |C|");println("  ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println("step4: Move BlockA to table_Bibi");println("");println("  ---                ---                ---");println("  |B|                |C|                |A|");println("  ---                ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println("step5: Move BlockB to top of BlockC");println("                     ---");println("                     |B|");println("                     ---                ---");println("                     |C|                |A|");println("                     ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println("step6: Move BlockB to table_Donut");println("");println("                     ---                ---                ---");println("                     |C|                |A|                |B|");println("                     ---                ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println("step7: Move BlockC to top of BlockB");println("");println("                                                        ---");println("                                                        |C|");println("                                     ---                ---");println("                                     |A|                |B|");println("                                     ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println("step8: Move BlockA to table_Milo");println("");println("                                                        ---");println("                                                        |C|");println("                    ---                                 ---");println("                    |A|                                 |B|");println("                    ---                                 ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");

else userdecision == 3
    println("Initial state: all blocks in box");println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("---");println("|B|       |");println("---");println("---");println("|C|       |");println("---");println("---");println("|D|       |");println("---");println("---------")
    println("step1: Move BlockD from box to Donut table");println("");println("  ---");println("  |D|");println("  ---");println("__________       ");println("table_Donut");println(" ");
    println(" ");println("step2: Move BlockA to top of BlockD");println("");println("  ---");println("  |A|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");
    println("step3: Move BlockA to box");println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("----------")
    println(" ");println("step4: Move BlockC to top of BlockD");println("");println("  ---");println("  |C|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");
    println(" ");println("step5: Move BlockA to top of BlockC");println("");println("  ---");println("  |A|");println("  ---");println("  ---");println("  |C|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");
    println("");println("step6: Move BlockA to box");println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("----------")
    println(" ");println("step7: Move BlockB to top of BlockC");println("");println("  ---");println("  |B|");println("  ---");println("  ---");println("  |C|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");
    println(" ");println("step8: Move BlockA from box to top of BlockB");println("");println("  ---");println("  |A|");println("  ---");println("  ---");println("  |B|");println("  ---");println("  ---");println("  |C|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");

end;
println("");

printstyled("~~~~~~~~~~~~~~~~~~~~~~PART II: BLOCKS WORLD GOAL FROM INITIAL CONFIGURATION~~~~~~~~~~~~~~~~",color=:light_yellow);println("")

using TerminalMenus

options = ["current:world1 -GOAL:1blockon1table 2blockson1table","current:world2 -GOAL:1 blockper2tables 2blockson1table", "current:world3 -GOAL:2 blockson1table, 3blockson1table"]
menu = RadioMenu(options, pagesize = 2);

choice = request("choose new structure based on your previous option (e.g if you chose world1 before, choose world1 again)", menu);if choice == 1

println("**PLAN");println("step1: Move BlockA to table Milo");println("step2: Move BlockB to table Elise");println("step3: Move BlockA to table Bibi");println("step4: Move BlockC from box to table Milo");println("step5: Move Block B from table Elise to top of C");println("");println("FINAL LOOK");printstyled("               |B|", color=:light_black);println("");printstyled("               |C|          |A|", color=:blue);println("");printstyled("              _Milo_       _Bibi_    ", color=:light_yellow);println("");println("")println("")

elseif choice == 2
    println("**PLAN:");println("step1: Move BlockA to Elise_table");println("step2: Move BlockC to Milo");println("step3:Move BlockD from box to top of BlockB");println("step4: Move BlockD from top of BlockB to Bibi");println("step5: Move BlockC from Milo to top of BlockD");println("step6: Move BlockB from Donut to Milo");println("step7: Move BlockC from top of BlockD to Donut");println("step8: Move BlockD from Bibi to top of BlockB");println("step9: Move BlockC to Bibi");println("step10: Move BlockD to top of BlockC");println("FINAL LOOK");printstyled("                            |D|", color=:red);println("");printstyled("   |A|         |B|          |C|", color=:light_blue);println("");printstyled(" _Elise_      _Milo_       _Bibi_       _Donut_", color=:yellow);println("");

else choice == 3
    println("**PLAN:");println("step1: Move BlockA to Elise_table");println("step2: Move BlockC to Milo");println("step3:Move BlockB to top of BlockA");println("step4: Move BlockE from box to Bibi");println("step5: Move BlockD from box to top of BlockE");println("step6: Move BlockC from Milo to top of D");println("step7: Move BlockB to Milo");println("step8: Move BlockA to top of BlockB");println("");printstyled("**FINAL LOOK");println("");printstyled("                            |C|",color=:light_blue);println("");printstyled("            |A|             |D|",color=:light_green);println("");printstyled("            |B|             |E|",color=:green);println("");printstyled("           _Milo_          _Bibi_",color=:light_red);println("");
end

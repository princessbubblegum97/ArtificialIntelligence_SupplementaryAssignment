printstyled("**********************************ARTIFICIAL INTELLIGENCE SUPPLEMENTARY ASSIGNMENT*********************************", color=:light_yellow)

printstyled("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~PART 1:BLOCKS WORLD PLANNER BASED ON USER INPUT~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", color=:light_yellow)

box = 1
blocks = 4
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
    printstyled("Block is in box")
else
    println("Block is on table")
end

println(" ")


using TerminalMenus

chooseyourworld=["two_blocks_stacked_on_Milotable","two_blocks_stacked_on_Donut_table_&_one_block_on-Milotable", "triple_blocks_on_table_Donut"]

menu =  RadioMenu(chooseyourworld, pagesize = 3)
userdecision = request("define your world:", menu);if userdecision == 1
    println("yourworldgoal:", chooseyourworld[userdecision], "!");println("Initial state: all blocks in box");
    println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("---");println("|B|       |");println("---");println("---------");println(" ")
    println("step1: Move BlockB from box to Elisetable");println("");println("  ---");println("  |B|");println("  ---");
    println("__________        __________       __________");println("table_Elise       table_Milo       table_Bibi");println(" ");println(" ");println("step2: Move BlockA to top of BlockB");println("");
    println("  ---");println("  |A|");println("  ---");println("  ---");println("  |B|");println("  ---");println("__________        __________       __________");println("table_Elise       table_Milo       table_Bibi");println(" ");
    println(" ");println("step3: Move BlockA from top of BlockB to table_Bibi");println("  ");println("  ---                                    ---");println("  |B|                                    |A|");println("  ---                                    ---");println("__________        __________       __________");println("table_Elise       table_Milo       table_Bibi");println(" ");
    println(" ");println("step4: Move BlockB from table_Elise to table_Milo");
    println("                     ---               ---");println("                     |B|               |A|");println("                     ---               ---");println("__________        __________       __________");println("table_Elise       table_Milo       table_Bibi");println(" ");
println("  ");println("step5: Move BlockA to top of BlockB");
    println("                     ---");println("                     |A|");println("                     ---               ");println("                     |B|               ");println("                     ---               ");println("__________        __________       __________");println("table_Elise       table_Milo       table_Bibi");
    println(" ")

elseif userdecision == 2
    println("yourworldgoal:", chooseyourworld[userdecision], "!");
    println("Initial state: all blocks in box");println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("---");println("|B|       |");println("---");println("---");println("|C|       |");println("---");println("----------");
    println("");println("step1: Move BlockB from box to Elisetable");println("");println("  ---");println("  |B|");println("  ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println(" ");
    println("");println("step2: Move BlockA from box to top of BlockB");println("");println("  ---");println("  |A|");println("  ---");println("  ---");println("  |B|");println("  ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");
    println("");println("step3: Move BlockC from box to table_Milo");println("");println("  ---");println("  |A|");println("  ---");println("  ---                ---");println("  |B|                |C|");println("  ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");
    println("step4: Move BlockA to table_Bibi");println("");println("  ---                ---                ---");println("  |B|                |C|                |A|");println("  ---                ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");
    println("step5: Move BlockB to top of BlockC");println("                     ---");println("                     |B|");println("                     ---                ---");println("                     |C|                |A|");println("                     ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");
    println("step6: Move BlockB to table_Donut");println("");println("                     ---                ---                ---");println("                     |C|                |A|                |B|");println("                     ---                ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");
    println("step7: Move BlockC to top of BlockB");println("");println("                                                        ---");println("                                                        |C|");println("                                     ---                ---");println("                                     |A|                |B|");println("                                     ---                ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");println("step8: Move BlockA to table_Milo");println("");println("                                                        ---");println("                                                        |C|");println("                    ---                                 ---");println("                    |A|                                 |B|");println("                    ---                                 ---");println("__________        __________       __________      __________");println("table_Elise       table_Milo       table_Bibi      table_Donut");

else userdecision == 3
    println("Initial state: all blocks in box");println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("---");println("|B|       |");println("---");println("---");println("|C|       |");println("---");println("---");println("|D|       |");println("---");println("---------")
    println("step1: Move BlockD from box to Donut table");println("");println("  ---");println("  |D|");println("  ---");println("__________       ");println("table_Donut");println(" ");
    println(" ");println("step2: Move BlockA to top of BlockD");println("");println("  ---");println("  |A|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");
    println("step3: Move BlockA to box");println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("----------")
    println(" ");println("step4: Move BlockC to top of BlockD");println("");println("  ---");println("  |C|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");
    println(" ");println("step5: Move BlockA to top of BlockC");println("");println("  ---");println("  |A|");println("  ---");println("  ---");println("  |C|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");
    println("");println("step6: Move BlockA to box");println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("----------")
    println(" ");println("step7: Move BlockB to top of BlockC");println("");println("  ---");println("  |B|");println("  ---");println("  ---");println("  |C|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");
    println(" ");println("step8: Move BlockA to top of BlockB");println("");println("  ---");println("  |A|");println("  ---");println("  ---");println("  |B|");println("  ---");println("  ---");println("  |C|");println("  ---");println("  |D|");println("__________");println("table_Donut");println(" ");

end

println("~~~~~~~~~~~~~~~~~~~~~~PART II: BLOCKS WORLD GOAL FROM INITIAL CONFIGURATION~~~~~~~~~~~~~~~~")
using TerminalMenus

options = ["CURRENT CONFIGURATION: 2_blocks_stacked_on_Milo--GOAL-Double blocks per Elise&Milo","CURRENT CONFIGURATION: 2_blocks_stacked_on_Donut&_1block_on-Milo//GOAL-1 block on Elise, 1 block on Milo, 2 blocks on Bibi", "CURRENTCONFIGURATION:4blocksontableDonut//GOAL-2 blocksonMilo, 3 blocks on Donut"]
menu = RadioMenu(options, pagesize = 2);

choice = request("choose", menu);if choice == 1
    println("**STEPS:");
    Dict(1=>"Move BlockD to Elise_table", 2=>"Move BlockC to top of Block D")

elseif choice == 2
    println("**STEPS:")
    Dict(1=>"Move BlockA to Elise_table", 2=>"Move BlockC to Milo", 3=>"Move BlockC to top of BlockB", 4=>"Move Block")

else choice == 3
    println("**STEPS:")
    Dict(34=>"Move BlockA to box", 35=>"Move BlockB to box", 36=>"Move BlockB to tableMilo", 45=>"Move BlockC to", 58=>"Move BlockD to box", 67=>"Move BlockB to Milo", 77=>"Move BlockA to top of B", 89=>"Move BlockE to Donut", 9=>"Move BlockD to top of E", 170=>"Move BlockC to top of D");

end

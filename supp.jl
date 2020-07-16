using TerminalMenus

chooseyourworld=["two_blocks_stacked_on_Milotable","two_blocks_stacked_on_Donut_table_&_one_block_on-Milotable", "orange"]

menu =  RadioMenu(chooseyourworld, pagesize = 3)
userdecision = request("define your world:", menu);if userdecision == 1
    println("yourworldgoal:", chooseyourworld[userdecision], "!");println("Initial state: all blocks in box");
    println(" ");println("----------");println("| *box*   |");println("---");println("|A|       |");println("---");println("---");println("|B|       |");println("---");println("---------");
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
    println("hjk")
end

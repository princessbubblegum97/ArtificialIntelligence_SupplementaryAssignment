printstyled("~~~~~~~~~~~~~~~~~~~~~~PART II: BLOCKS WORLD GOAL FROM INITIAL CONFIGURATION~~~~~~~~~~~~~~~~",color=:light_yellow);println("")

function secondblockchoice(B=Int64,msg="how many blocks would you like? **block selection rules: please select a number from 3, 4 or 5 orelse final layout will not be accurate: ")
    print("$msg")
    if B == String
        return readline()
    else
        try
            return parse(B, readline())
        catch
            println("Blocks world does not support this type. Please enter a type int of value: 3, 4 or 5 according to **block selection rules :-(")
            secondblockchoice(B, msg)
            readline()
        end
    end
end

b=secondblockchoice(Int64, "how many blocks would you like? **block selection rules: please select 3 if you selected 2 before, 4 if you selected 3 before, 5 if you selected 4 before orelse final layout will not be accurate: ");println(b);

function secondtablechoice(T=Int64,msg="how many tables would you like? **table selection rules: please select 2 if you selected 3 blocks, 3 if you selected 4 blocks, 2 if you selected 5 blocks orelse final layout will not be accurate: ")
    print("$msg")
    if T == String
        return readline()
    else
        try
            return parse(T, readline())
        catch
            println("Blocks world does not support this type :-( Please enter a type int of value: 2 or 3  according to **table selection rules")
            secondtablechoice(T, msg)
            readline()
        end
    end
end

t=secondtablechoice(Int64, "how many tables would you like? **table selection rules: please select 2 if you selected 3 blocks, 3 if you selected 4 blocks, 2 if you selected 5 blocks orelse final layout will not be accurate: ");println(t)

using TerminalMenus

options = ["currentlayout:world1 -NEWGOAL1:1blockon1table 2blockson1table","currentlayout:world2 -NEWGOAL2:1 blockper2tables 2blockson1table", "currentlayout:world3 -NEWGOAL3:2 blockson1table, 3blockson1table"]
menu = RadioMenu(options, pagesize = 2);

choice = request("choose new layout//goal based on your blocks and tables:  NEWGOAL1 for 3 blocks and 1 table (where currentlayout:two_blocks_stacked_on_1table), NEWGOAL2 for 4 blocks and 3 tables (where currentlayout: twoblocksstackedon1table&oneblockon1table), NEWGOAL3 for 5 blocks and 2 tables (where currentlayout:four_blocks_on_1table) orelse final layout will not be accurate) :", menu);if choice == 1

println("**PLAN");println("step1: Move BlockA to table Milo");push!(["  A  "], "_Milo_");println("step2: Move BlockB to table Elise");push!(["  B  "], "_Elise_");println("step3: Move BlockA to table Bibi");push!(["  A  "], "_Bibi_");println("step4: Move BlockC from box to table Milo");pushfirst!(["  _Milo_  "], "  C  ");println("step5: Move Block B from table Elise to top of C");pushfirst!([ "  _Milo_  "], "   B  ", "   C  ");println("");println("FINAL LOOK");printstyled("               |B|", color=:light_black);println("");printstyled("               |C|          |A|", color=:blue);println("");printstyled("              _Milo_       _Bibi_    ", color=:light_yellow);println("");println("");println("");readline();

elseif choice == 2
    println("**PLAN:");println("step1: Move BlockA to Elise_table");push!(["  A  "], "_Elise_");println("step2: Move BlockC to Milo");push!(["  C  "], "_Milo_");println("step3:Move BlockD from box to top of BlockB");pushfirst!([ "  _Donut_  "], "   D  ", "   B  ");
    println("step4: Move BlockD from top of BlockB to Bibi");pushfirst!([ " _Elise_  _Milo_  _Bibi_ _Donut_  "], "    A       C      D      B");println("step5: Move BlockC from Milo to top of BlockD");pushfirst!([ "  _Bibi_"], "   C  ", "   D  ");println("step6: Move BlockB from Donut to Milo");push!(["  B  "], "_Milo_");println("step7: Move BlockC from top of BlockD to Donut");push!(["  C  "], "_Donut_");println("step8: Move BlockD from Bibi to top of BlockB");pushfirst!([ "  _Milo_"], "   D  ", "   B  ");println("step9: Move BlockC to Bibi");pushfirst!([ "  _Bibi_"], "    C  ");println("step10: Move BlockD to top of BlockC");println("FINAL LOOK");printstyled("                            |D|", color=:yellow);println("");printstyled("   |A|         |B|          |C|", color=:light_blue);println("");printstyled(" _Elise_      _Milo_       _Bibi_       _Donut_", color=:yellow);println("");readline();

else choice == 3
    println("**PLAN:");println("step1: Move BlockA to Elise_table");pushfirst!([ "  _Elise_"], "    A  ");println("step2: Move BlockC to Milo");pushfirst!([ "  _Milo_"], "    C  ");println("step3:Move BlockB to top of BlockA");pushfirst!([ "  _Elise_"], "    B  ", "    A");println("step4: Move BlockE from box to Bibi");pushfirst!([ "  _Bibi_"], "    E");println("step5: Move BlockD from box to top of BlockE");pushfirst!([ "  _Bibi_"], "    D"    ,"    E   ");println("step6: Move BlockC from Milo to top of D");pushfirst!([ "  _Bibi_"], "    C   ","    D    "  ,  "    E   ");println("step7: Move BlockB to Milo");push!(["  B  "], "_Milo_");println("step8: Move BlockA to top of BlockB");push!(["  A  " , "  B  "], "_Milo_");println("");printstyled("**FINAL LOOK");println("");printstyled("                            |C|",color=:light_blue);println("");printstyled("            |A|             |D|",color=:light_green);println("");printstyled("            |B|             |E|",color=:green);println("");printstyled("           _Milo_          _Bibi_",color=:light_red);println("");readline();
end

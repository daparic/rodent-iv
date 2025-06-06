cmake_minimum_required(VERSION 3.22.1)

project("milanovzki")

set(CMAKE_STRIP llvm-strip)
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -s")

add_executable(${CMAKE_PROJECT_NAME} 
    src/attacks.cpp
    src/bitboard.cpp
    src/book.cpp
    src/book.h
    src/chessheapclass.h
    src/data.cpp
    src/edata.cpp
    src/eval.cpp
    src/eval.h
    src/eval_draw.cpp
    src/eval_patterns.cpp
    src/eval_pawn.cpp
    src/gen.cpp
    src/init.cpp
    src/legal.cpp
    src/magicmoves.cpp
    src/magicmoves.h
    src/main.cpp
    src/mask.cpp
    src/movedo.cpp
    src/moveundo.cpp
    src/next.cpp
    src/params.cpp
    src/popcnt_ssse3.h
    src/quiesce.cpp
    src/recognize.cpp
    src/rodent.h
    src/rodenthome.cpp
    src/search.cpp
    src/setboard.cpp
    src/stringfunctions.cpp
    src/stringfunctions.h
    src/swap.cpp
    src/taunt.cpp
    src/trans.cpp
    src/tuning.cpp
    src/uci.cpp
    src/uci_options.cpp
    src/util.cpp
    src/ph-botvinnik2.bin.c
    src/rodent.bin.c
)

# target_link_libraries(${CMAKE_PROJECT_NAME} android log)

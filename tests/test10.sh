#!/bin/bash

function test_10() {
    create_env
    print_yeallow 'Running Test #10: Interactive option'
    FILE1='file1'
    FILE2='file2'
    FILE3='file3'
    DIR1='dir1'
    EXIT_CODE=1
    mkdir ${TEST_DIR}/${DIR1} &&
    crete_random_file ${TEST_DIR}/${FILE1} 0 &&
    crete_random_file ${TEST_DIR}/${FILE2} 1 &&
    crete_random_file ${TEST_DIR}/${FILE3} 2 &&
    crete_random_file ${TEST_DIR}/${DIR1}/${FILE1} 3 &&
    crete_random_file ${TEST_DIR}/${DIR1}/${FILE2} 4 &&
    EXIT_CODE=0
    if [ ${EXIT_CODE} -eq 0 ]; then
        EXIT_CODE=1
        echo -e "y\nn" | ${PROGRAM} ${TEST_DIR}/${FILE1} ${TEST_DIR}/${FILE2} ${TEST_DIR}/${FILE3} ${TEST_DIR}/${DIR1} -i >& /dev/null  &&
        get_checksum ${TEST_DIR}/${DIR1}/${FILE1} 5 &&
        get_checksum ${TEST_DIR}/${DIR1}/${FILE2} 6 &&
        get_checksum ${TEST_DIR}/${DIR1}/${FILE3} 7 &&
        [[ -d ${TEST_DIR}/${DIR1} ]] &&
        [[ ! -f ${TEST_DIR}/${FILE1} ]] &&
        [[ ! -f ${TEST_DIR}/${FILE3} ]] &&
        [[ ${CHECKSUMS[0]} == ${CHECKSUMS[5]} ]] &&
        [[ ${CHECKSUMS[2]} == ${CHECKSUMS[7]} ]] &&
        [[ ${CHECKSUMS[4]} == ${CHECKSUMS[6]} ]] &&
        EXIT_CODE=0
        print_cyan 'Test 10' n
        [[ ${EXIT_CODE} -eq 0 ]] && print_ok 23 || print_fail 23
    else
        print_red 'Can not prepare test!'
    fi
    clean_env
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/PolicyScore.sol";

contract PolicyScoreTest {
    function test_case_1() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(89, 88, 8, 9, 12);
        require(scorer.score(signal) == 274, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
    function test_case_2() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(80, 75, 19, 21, 5);
        require(scorer.score(signal) == 138, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
    function test_case_3() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(68, 82, 25, 8, 9);
        require(scorer.score(signal) == 181, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import "../src/MoodDiary.sol";

contract MoodDiaryTest is Test {
    MoodDiary moodDiary;

    function setUp() public {
        moodDiary = new MoodDiary();
    }

    function testSetMood() public {
        moodDiary.setMood("Happy");
        assertEq(moodDiary.getMood(), "Happy");
    }

    function testFailSetMood() public {
        moodDiary.setMood("Sad");
        assertEq(moodDiary.getMood(), "Happy"); // This test is designed to fail
    }

    function testEvent() public {
        vm.expectEmit(true, true, true, true);
        emit MoodDiary.MoodUpdated("Excited");
        moodDiary.setMood("Excited");
    }
}

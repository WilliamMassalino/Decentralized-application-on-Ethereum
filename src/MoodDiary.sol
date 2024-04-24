// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MoodDiary {
    string private mood;

    event MoodUpdated(string newMood);

    function setMood(string calldata _mood) public {
        mood = _mood;
        emit MoodUpdated(mood);
    }

    function getMood() public view returns (string memory) {
        return mood;
    }
}

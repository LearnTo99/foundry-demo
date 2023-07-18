// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/Counter.sol";

contract CounterTest is Test {

    Counter counter;
    function setUp() public {
        counter = new Counter(2);
    }

    function testGetCount() public {
        int value = counter.getCount();
        assertEq(value, 2);
    }


    function testIncrementCount() public {
        counter.incrementCount();
        int value = counter.getCount();
        assertEq(value, 3);
    }

    function testIncrementCountFail() public {
        vm.prank(address(0));
        vm.expectRevert("Unauthorized");
        counter.incrementCount();
    }

    function testDecrementCount() public {
        counter.decrementCount();
        int value = counter.getCount();
        assertEq(value, 1);
    }

    function testDecrementCountFail() public {
        vm.prank(address(0));
        vm.expectRevert("Unauthorized");
        counter.decrementCount();
    }
}
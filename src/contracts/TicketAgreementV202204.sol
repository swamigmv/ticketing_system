// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.6 < 0.9.0;

import "./TicketAgreementBase.sol";

/**
 * @title Ticket agreement version 202204
 */
contract TicketAgreementV202204 is TicketAgreementBase {
    
    SharedStructs.TicketData private ticketData;

    /**
     * @notice Settles the account for the associated ticket
     * @return True on success
     * @return Summary of the operation
     */
    function settleAccounts() external override pure returns(bool, string memory) {
        string memory message;
        /* TODO: Apply penelty and refund policies to calculate the amount to be paid to the buyer and to the airline.
           Then settle both accounts. */
        return (true, message);
    }

}
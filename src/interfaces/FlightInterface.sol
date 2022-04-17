// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.6 < 0.9.0;

import "../libraries/SharedStructs.sol";

/**
 * @title Interface for the flight contract
 */
interface FlightInterface {
    /**
    * @notice Books the ticket for the flight
    * @param buyer - Buyer information
    * @param numberOfSeatsRequired - Number of seats to be booked
    * @param ticketAgreementAddress - Address of the ticket agreement contract bound to the ticket
    * @return Ticket number
    * @return Ticket address
    * @return Message giving the summary the execution
    */
    function bookTicket(SharedStructs.Buyer calldata buyer, uint16 numberOfSeatsRequired, address payable ticketAgreementAddress) external payable 
    returns (uint16, address, string memory);

    /**
    * @notice Cancels the ticket for the flight
    * @return Total number of tickets cancelled
    * @return Message giving the summary the execution
    */
    function cancel() external returns (uint16, string memory);

    /**
    * @notice Updates the depature time of the flight
    * @param newDepartureDateTime - New departure date time of the flight
    * @return Status of the flight depending on the new departure date time
    * @return Message giving the summary the execution
    */
    function updateDeparture(uint256 newDepartureDateTime) external returns (SharedStructs.FlightStatuses, string memory);

    /**
    * @notice Marks the flight as complete
    * @return Number of tickets settled
    * @return Message giving the summary the execution
    */
    function complete() external returns (uint16, string memory);

    /**
    * @notice Gets the flight status
    * @return Status of the flight
    * @return New or actual departure date time
    */
    function getStatus() external returns (SharedStructs.FlightStatuses, uint256);
}
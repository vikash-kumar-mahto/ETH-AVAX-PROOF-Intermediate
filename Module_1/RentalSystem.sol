// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract RentalSystem {
    enum VehicleType { Bike, Car }

    struct Rental {
        VehicleType vehicleType;
        uint256 rentalAmount;
    }

    mapping(address => Rental) public rentals;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner has access");
        _;
    }

    function setRate(address _renter, uint256 _rentalAmount) public onlyOwner {
        // Ensure the renter address is valid
        assert(_renter != address(0));

        // Determine vehicle type based on rental amount
        VehicleType vehicleType;
        if (_rentalAmount >= 500 && _rentalAmount < 1000) {
            vehicleType = VehicleType.Bike;
        } else if (_rentalAmount >= 1000 && _rentalAmount <= 5000) {
            vehicleType = VehicleType.Car;
        } else {
            revert("Rental amount must be between 500 and 5000");
        }

        rentals[_renter] = Rental(vehicleType, _rentalAmount);
    }

    function getRate(address _renter) public view returns (VehicleType, uint256) {
        // Ensure the renter address is valid
        assert(_renter != address(0));

        Rental memory rental = rentals[_renter];
        
        // Check if the renter has been assigned a rental
        require(rental.rentalAmount != 0, "Renter has not been assigned a rental");

        return (rental.vehicleType, rental.rentalAmount);
    }

    function checkRentalStatus(address _renter) public view returns (string memory) {
        // Ensure the renter address is valid
        assert(_renter != address(0));

        Rental memory rental = rentals[_renter];
        
        // Check if the renter has been assigned a rental
        if (rental.rentalAmount == 0) {
            revert("Renter has not been assigned a rental");
        }

        if (rental.vehicleType == VehicleType.Bike) {
            return "Bike rental is set";
        } else if (rental.vehicleType == VehicleType.Car) {
            return "Car rental is set";
        } else {
            return "No rental set";
        }
    }
}


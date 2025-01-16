
class JPricingCalculator {
  /// Calculate Price based on TAX and Shipping
  static double calculateTotalPrice (double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;

    return totalPrice;
  }

  /// Calculate Shipping cost
  static String calculateShippingCost (double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// Calculate Tax
  static String calculateTax (double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation (String location) {
    // Lookup the tax rate for the given location from a tax rate based on API.
    //Return appropriate tax rate.
    return 0.18; // Example of tax rate of 18%
  }

  static double getShippingCost (String location) {
    // Lookup the shipping cost for the given location using a shipping rate API.
    //Calculate the shipping cost based on the various factors like distance, weight etc.
    return 5.00; // Example of shipping cost of $5
  }

}
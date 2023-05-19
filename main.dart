import 'package:intl/intl.dart';

import 'slabs.dart';

void main() {
  double investment = 25 + 11 + 18;
  double currentCapital = 51.30;
  int currentSlabValue = Slabs.beginner.personalFundInUsd;

  double minimumAmountReleasable = 25;
  double networkFeeForTransaction = 1;
  double currentDayProfitPercentage = 2.3;
  DateTime currentDate = DateTime.now().add(Duration(days: 1));

  print("Initial Investment : $investment USD");
  print("Current Capital : $currentCapital USD");
  print("---------------------------------");

  calculationsForReleasingCurrentInvestment(
      investment: investment,
      currentCapital: currentCapital,
      currentSlabValue: currentSlabValue,
      minimumAmountReleasable: minimumAmountReleasable,
      networkFeeForTransaction: networkFeeForTransaction,
      currentDayProfitPercentage: currentDayProfitPercentage,
      currentDate: currentDate);
}

void calculationsForReleasingCurrentInvestment({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required double minimumAmountReleasable,
  required double networkFeeForTransaction,
  required double currentDayProfitPercentage,
  required DateTime currentDate,
}) {
  print("Calculations for releasing current investment");

  double nextCapital = 0;
  double releasedAmount = 0;

  while (releasedAmount < investment) {
    if (currentCapital >= (currentSlabValue + minimumAmountReleasable)) {
      double amountToRelease = minimumAmountReleasable;
      if ((releasedAmount +
              (minimumAmountReleasable - networkFeeForTransaction)) >
          investment) {
        amountToRelease =
            (investment - releasedAmount) + networkFeeForTransaction;
      }
      print("-----------------------------------------------");
      print(
          "From Capital ${currentCapital.toStringAsFixed(2)} USD, $amountToRelease USD will released to wallet");
      currentCapital = currentCapital - amountToRelease;
      print("New Capital is ${currentCapital.toStringAsFixed(2)} USD");
      releasedAmount =
          releasedAmount + (amountToRelease - networkFeeForTransaction);
      print("Released Amount Till the Date is $releasedAmount USD");
      if (releasedAmount < investment) {
        print(
            "To Catch up the Investment, We need ${investment - releasedAmount} USD");
      }
      print("---------------------------------");
    }

    String datePattern =
        "${DateFormat.DAY}/${DateFormat.NUM_MONTH}/${DateFormat.YEAR}, ${DateFormat.WEEKDAY}";
    var formattedCurrentDate = DateFormat(datePattern).format(currentDate);
    if ((currentDate.weekday != DateTime.saturday) &&
        (currentDate.weekday != DateTime.sunday)) {
      nextCapital = currentCapital +
          (currentSlabValue * (currentDayProfitPercentage / 100));
      print(
          "$formattedCurrentDate : ${currentCapital.toStringAsFixed(2)} + ($currentSlabValue*($currentDayProfitPercentage/100)) = ${nextCapital.toStringAsFixed(2)}");
      currentCapital = nextCapital;
    } else {
      print("$formattedCurrentDate : -");
    }
    currentDate = currentDate.add(Duration(days: 1));
  }
}

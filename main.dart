import 'dart:io';

import 'package:dartx/dartx.dart';
import 'package:intl/intl.dart';

import 'slabs.dart';

String datePattern =
    "${DateFormat.DAY}/${DateFormat.NUM_MONTH}/${DateFormat.YEAR}, ${DateFormat.WEEKDAY}";

void main() {
  //All in USDT Currency
  double investment = (25 + 11 + 18) - 24.24;
  double currentCapital = 27.72;
  int currentSlabValue = Slabs.beginner.personalFundInUsd;

  double minimumAmountReleasable = 25;
  double networkFeeForTransaction = 1;
  double currentDayProfitPercentage = 2.3;
  DateTime currentDate = DateTime.now();
  // DateTime currentDate = DateTime.now().add(Duration(days: 1));

  printHeader(investment, currentCapital, currentSlabValue);

  bool continueProgram = true;
  while (continueProgram) {
    print("Current Options");
    print("------------------------");
    //TODO : All Options must include Getting next Slab & next Second Slab after Current Investment Release
    print("1. For Releasing Current Investment Immediately");
    print("2. For Releasing Current Investment After Accumulation");
    print(
        "3. For Releasing Current Investment After Accumulation of Next Slab");
    print(
        "4. For Releasing Current Investment After Accumulation of Next 2nd Slab");
    print(
        "5. Get next Slab Via. Manual Investment, then Releasing Current Investment Immediately");
    print(
        "6. Get next Slab Via. Manual Investment, then Releasing Current Investment After Accumulation");
    print(
        "7. Get next Slab Via. Manual Investment, then Releasing Current Investment After Accumulation of Next Slab");
    print(
        "8. Get next Slab Via. Manual Investment, then Releasing Current Investment After Accumulation of Next Second Slab");
    print(
        "9. Get next Second Slab Via. Manual Investment, then Releasing Current Investment Immediately");
    print(
        "10. Get next Second Slab Via. Manual Investment, then Releasing Current Investment After Accumulation");
    print(
        "11. Get next Second Slab Via. Manual Investment, then Releasing Current Investment After Accumulation of Next Slab");
    print(
        "12. Get next Second Slab Via. Manual Investment, then Releasing Current Investment After Accumulation of Next Second Slab");

    print("0. Exit");

    print('Enter your choice:');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '0':
        continueProgram = false;
        break;
      case '1':
        calculationsForReleasingCurrentInvestmentImmediately(
          investment: investment,
          currentCapital: currentCapital,
          currentSlabValue: currentSlabValue,
          minimumAmountReleasable: minimumAmountReleasable,
          networkFeeForTransaction: networkFeeForTransaction,
          currentDayProfitPercentage: currentDayProfitPercentage,
          currentDate: currentDate,
        );
        break;
      case '2':
        calculationsForReleasingCurrentInvestmentAfterAccumulation(
          investment: investment,
          currentCapital: currentCapital,
          currentSlabValue: currentSlabValue,
          minimumAmountReleasable: minimumAmountReleasable,
          networkFeeForTransaction: networkFeeForTransaction,
          currentDayProfitPercentage: currentDayProfitPercentage,
          currentDate: currentDate,
        );
        break;
      case '3':
        calculationsForReleasingCurrentInvestmentAfterNextSlab(
          investment: investment,
          currentCapital: currentCapital,
          currentSlabValue: currentSlabValue,
          minimumAmountReleasable: minimumAmountReleasable,
          networkFeeForTransaction: networkFeeForTransaction,
          currentDayProfitPercentage: currentDayProfitPercentage,
          currentDate: currentDate,
        );
        break;
      case '4':
        calculationsForReleasingCurrentInvestmentAfterNextSecondSlab(
          investment: investment,
          currentCapital: currentCapital,
          currentSlabValue: currentSlabValue,
          minimumAmountReleasable: minimumAmountReleasable,
          networkFeeForTransaction: networkFeeForTransaction,
          currentDayProfitPercentage: currentDayProfitPercentage,
          currentDate: currentDate,
        );
        break;
      case '5':
        calculationsForReleasingCurrentInvestmentImmediatelyAfterManualNextSlab(
          investment: investment,
          currentCapital: currentCapital,
          currentSlabValue: currentSlabValue,
          minimumAmountReleasable: minimumAmountReleasable,
          networkFeeForTransaction: networkFeeForTransaction,
          currentDayProfitPercentage: currentDayProfitPercentage,
          currentDate: currentDate,
        );
        break;
      case '6':
        calculationsForReleasingCurrentInvestmentAfterAccumulationAfterManualNextSlab(
          investment: investment,
          currentCapital: currentCapital,
          currentSlabValue: currentSlabValue,
          minimumAmountReleasable: minimumAmountReleasable,
          networkFeeForTransaction: networkFeeForTransaction,
          currentDayProfitPercentage: currentDayProfitPercentage,
          currentDate: currentDate,
        );
        break;
      case '7':
        calculationsForReleasingCurrentInvestmentAfterNextSlabAfterManualNextSlab(
          investment: investment,
          currentCapital: currentCapital,
          currentSlabValue: currentSlabValue,
          minimumAmountReleasable: minimumAmountReleasable,
          networkFeeForTransaction: networkFeeForTransaction,
          currentDayProfitPercentage: currentDayProfitPercentage,
          currentDate: currentDate,
        );
        break;
      case '8':
        calculationsForReleasingCurrentInvestmentAfterNextSecondSlabAfterManualNextSlab(
          investment: investment,
          currentCapital: currentCapital,
          currentSlabValue: currentSlabValue,
          minimumAmountReleasable: minimumAmountReleasable,
          networkFeeForTransaction: networkFeeForTransaction,
          currentDayProfitPercentage: currentDayProfitPercentage,
          currentDate: currentDate,
        );
        break;
      case '9':
        calculationsForReleasingCurrentInvestmentImmediatelyAfterManualNextSecondSlab(
          investment: investment,
          currentCapital: currentCapital,
          currentSlabValue: currentSlabValue,
          minimumAmountReleasable: minimumAmountReleasable,
          networkFeeForTransaction: networkFeeForTransaction,
          currentDayProfitPercentage: currentDayProfitPercentage,
          currentDate: currentDate,
        );
        break;
      case '10':
        calculationsForReleasingCurrentInvestmentAfterAccumulationAfterManualNextSecondSlab(
          investment: investment,
          currentCapital: currentCapital,
          currentSlabValue: currentSlabValue,
          minimumAmountReleasable: minimumAmountReleasable,
          networkFeeForTransaction: networkFeeForTransaction,
          currentDayProfitPercentage: currentDayProfitPercentage,
          currentDate: currentDate,
        );
        break;
      case '11':
        calculationsForReleasingCurrentInvestmentAfterNextSlabAfterManualNextSecondSlab(
          investment: investment,
          currentCapital: currentCapital,
          currentSlabValue: currentSlabValue,
          minimumAmountReleasable: minimumAmountReleasable,
          networkFeeForTransaction: networkFeeForTransaction,
          currentDayProfitPercentage: currentDayProfitPercentage,
          currentDate: currentDate,
        );
        break;
      case '12':
        calculationsForReleasingCurrentInvestmentAfterNextSecondSlabAfterManualNextSecondSlab(
          investment: investment,
          currentCapital: currentCapital,
          currentSlabValue: currentSlabValue,
          minimumAmountReleasable: minimumAmountReleasable,
          networkFeeForTransaction: networkFeeForTransaction,
          currentDayProfitPercentage: currentDayProfitPercentage,
          currentDate: currentDate,
        );
        break;
      default:
        print('Invalid choice. Please try again...');
        break;
    }
  }
}

void
    calculationsForReleasingCurrentInvestmentAfterNextSecondSlabAfterManualNextSecondSlab({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required double minimumAmountReleasable,
  required double networkFeeForTransaction,
  required double currentDayProfitPercentage,
  required DateTime currentDate,
}) {
  Pair<double, int> investsForNextSecondSlab = investUpToNextSecondSlab(
    investment: investment,
    currentCapital: currentCapital,
    currentSlabValue: currentSlabValue,
    purpose: "after next second slab",
  );
  if (investsForNextSecondSlab.second != 0) {
    calculationsForReleasingCurrentInvestmentAfterNextSecondSlab(
      investment: investsForNextSecondSlab.first,
      currentCapital: currentCapital,
      currentSlabValue: investsForNextSecondSlab.second,
      minimumAmountReleasable: minimumAmountReleasable,
      networkFeeForTransaction: networkFeeForTransaction,
      currentDayProfitPercentage: currentDayProfitPercentage,
      currentDate: currentDate,
    );
  }
}

void
    calculationsForReleasingCurrentInvestmentAfterNextSlabAfterManualNextSecondSlab({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required double minimumAmountReleasable,
  required double networkFeeForTransaction,
  required double currentDayProfitPercentage,
  required DateTime currentDate,
}) {
  Pair<double, int> investsForNextSecondSlab = investUpToNextSecondSlab(
    investment: investment,
    currentCapital: currentCapital,
    currentSlabValue: currentSlabValue,
    purpose: "after next slab",
  );
  if (investsForNextSecondSlab.second != 0) {
    calculationsForReleasingCurrentInvestmentAfterNextSlab(
      investment: investsForNextSecondSlab.first,
      currentCapital: currentCapital,
      currentSlabValue: investsForNextSecondSlab.second,
      minimumAmountReleasable: minimumAmountReleasable,
      networkFeeForTransaction: networkFeeForTransaction,
      currentDayProfitPercentage: currentDayProfitPercentage,
      currentDate: currentDate,
    );
  }
}

void
    calculationsForReleasingCurrentInvestmentAfterAccumulationAfterManualNextSecondSlab({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required double minimumAmountReleasable,
  required double networkFeeForTransaction,
  required double currentDayProfitPercentage,
  required DateTime currentDate,
}) {
  Pair<double, int> investsForNextSecondSlab = investUpToNextSecondSlab(
    investment: investment,
    currentCapital: currentCapital,
    currentSlabValue: currentSlabValue,
    purpose: "after accumulation",
  );
  if (investsForNextSecondSlab.second != 0) {
    calculationsForReleasingCurrentInvestmentAfterAccumulation(
      investment: investsForNextSecondSlab.first,
      currentCapital: currentCapital,
      currentSlabValue: investsForNextSecondSlab.second,
      minimumAmountReleasable: minimumAmountReleasable,
      networkFeeForTransaction: networkFeeForTransaction,
      currentDayProfitPercentage: currentDayProfitPercentage,
      currentDate: currentDate,
    );
  }
}

void
    calculationsForReleasingCurrentInvestmentImmediatelyAfterManualNextSecondSlab({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required double minimumAmountReleasable,
  required double networkFeeForTransaction,
  required double currentDayProfitPercentage,
  required DateTime currentDate,
}) {
  Pair<double, int> investsForNextSecondSlab = investUpToNextSecondSlab(
    investment: investment,
    currentCapital: currentCapital,
    currentSlabValue: currentSlabValue,
    purpose: "immediate",
  );

  if (investsForNextSecondSlab.second != 0) {
    calculationsForReleasingCurrentInvestmentImmediately(
      investment: investsForNextSecondSlab.first,
      currentCapital: currentCapital,
      currentSlabValue: investsForNextSecondSlab.second,
      minimumAmountReleasable: minimumAmountReleasable,
      networkFeeForTransaction: networkFeeForTransaction,
      currentDayProfitPercentage: currentDayProfitPercentage,
      currentDate: currentDate,
    );
  }
}

void
    calculationsForReleasingCurrentInvestmentAfterNextSecondSlabAfterManualNextSlab({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required double minimumAmountReleasable,
  required double networkFeeForTransaction,
  required double currentDayProfitPercentage,
  required DateTime currentDate,
}) {
  Pair<double, int> investsForNextSlab = investUpToNextSlab(
    investment: investment,
    currentCapital: currentCapital,
    currentSlabValue: currentSlabValue,
    purpose: "after next second slab",
  );
  if (investsForNextSlab.second != 0) {
    calculationsForReleasingCurrentInvestmentAfterNextSecondSlab(
      investment: investsForNextSlab.first,
      currentCapital: currentCapital,
      currentSlabValue: investsForNextSlab.second,
      minimumAmountReleasable: minimumAmountReleasable,
      networkFeeForTransaction: networkFeeForTransaction,
      currentDayProfitPercentage: currentDayProfitPercentage,
      currentDate: currentDate,
    );
  }
}

void calculationsForReleasingCurrentInvestmentAfterNextSlabAfterManualNextSlab({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required double minimumAmountReleasable,
  required double networkFeeForTransaction,
  required double currentDayProfitPercentage,
  required DateTime currentDate,
}) {
  Pair<double, int> investsForNextSlab = investUpToNextSlab(
    investment: investment,
    currentCapital: currentCapital,
    currentSlabValue: currentSlabValue,
    purpose: "after next slab",
  );
  if (investsForNextSlab.second != 0) {
    calculationsForReleasingCurrentInvestmentAfterNextSlab(
      investment: investsForNextSlab.first,
      currentCapital: currentCapital,
      currentSlabValue: investsForNextSlab.second,
      minimumAmountReleasable: minimumAmountReleasable,
      networkFeeForTransaction: networkFeeForTransaction,
      currentDayProfitPercentage: currentDayProfitPercentage,
      currentDate: currentDate,
    );
  }
}

void
    calculationsForReleasingCurrentInvestmentAfterAccumulationAfterManualNextSlab({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required double minimumAmountReleasable,
  required double networkFeeForTransaction,
  required double currentDayProfitPercentage,
  required DateTime currentDate,
}) {
  Pair<double, int> investsForNextSlab = investUpToNextSlab(
    investment: investment,
    currentCapital: currentCapital,
    currentSlabValue: currentSlabValue,
    purpose: "after accumulation",
  );
  if (investsForNextSlab.second != 0) {
    calculationsForReleasingCurrentInvestmentAfterAccumulation(
      investment: investsForNextSlab.first,
      currentCapital: currentCapital,
      currentSlabValue: investsForNextSlab.second,
      minimumAmountReleasable: minimumAmountReleasable,
      networkFeeForTransaction: networkFeeForTransaction,
      currentDayProfitPercentage: currentDayProfitPercentage,
      currentDate: currentDate,
    );
  }
}

void calculationsForReleasingCurrentInvestmentImmediatelyAfterManualNextSlab({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required double minimumAmountReleasable,
  required double networkFeeForTransaction,
  required double currentDayProfitPercentage,
  required DateTime currentDate,
}) {
  Pair<double, int> investsForNextSlab = investUpToNextSlab(
    investment: investment,
    currentCapital: currentCapital,
    currentSlabValue: currentSlabValue,
    purpose: "immediate",
  );

  if (investsForNextSlab.second != 0) {
    calculationsForReleasingCurrentInvestmentImmediately(
      investment: investsForNextSlab.first,
      currentCapital: currentCapital,
      currentSlabValue: investsForNextSlab.second,
      minimumAmountReleasable: minimumAmountReleasable,
      networkFeeForTransaction: networkFeeForTransaction,
      currentDayProfitPercentage: currentDayProfitPercentage,
      currentDate: currentDate,
    );
  }
}

Pair<double, int> investUpToNextSlab({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required String purpose,
}) {
  printHeader(investment, currentCapital, currentSlabValue);

  print(
      "Calculations for releasing current investment $purpose after manual next slab");
  print("-----------------------------------------------");
  int nextSlabValue = getNextSlabValue(currentSlabValue);
  if (nextSlabValue == 0) {
    print("There are no more slabs....");
    print("-----------------------------------------------");
  } else {
    print("Next Slab Fund Criteria : $nextSlabValue");

    double amountNeededToNextSlab = nextSlabValue - currentCapital;
    print("To Reach next slab, We invested $amountNeededToNextSlab USDT");

    print(
        "So, the new investment is ${investment.toStringAsFixed(2)} + ${amountNeededToNextSlab.toStringAsFixed(2)} = ${(investment + amountNeededToNextSlab).toStringAsFixed(2)} USDT");
    investment = investment + amountNeededToNextSlab;
  }

  return Pair(investment, nextSlabValue);
}

Pair<double, int> investUpToNextSecondSlab({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required String purpose,
}) {
  printHeader(investment, currentCapital, currentSlabValue);

  print(
      "Calculations for releasing current investment $purpose after manual next second slab");
  print("-----------------------------------------------");
  int nextSecondSlabValue = getNextSecondSlabValue(currentSlabValue);
  if (nextSecondSlabValue == 0) {
    print("There are no more slabs....");
    print("-----------------------------------------------");
  } else {
    print("Next Second Slab Fund Criteria : $nextSecondSlabValue");

    double amountNeededToNextSecondSlab = nextSecondSlabValue - currentCapital;
    print(
        "To Reach next second slab, We invested $amountNeededToNextSecondSlab USDT");

    print(
        "So, the new investment is ${investment.toStringAsFixed(2)} + ${amountNeededToNextSecondSlab.toStringAsFixed(2)} = ${(investment + amountNeededToNextSecondSlab).toStringAsFixed(2)} USDT");
    investment = investment + amountNeededToNextSecondSlab;
  }

  return Pair(investment, nextSecondSlabValue);
}

void printHeader(
    double investment, double currentCapital, int currentSlabValue) {
  print("The Slabs");
  print("---------------------");
  for (var slab in Slabs.values) {
    print(
        "Slab : ${slab.name}, Minimum Fund Criteria : ${slab.personalFundInUsd}");
  }
  print("---------------------------------");

  print("Initial Investment : $investment USD");
  print("Current Capital : $currentCapital USD");
  print("Current Slab Fund Criteria : $currentSlabValue");
  print("---------------------------------");
}

void calculationsForReleasingCurrentInvestmentAfterNextSecondSlab({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required double minimumAmountReleasable,
  required double networkFeeForTransaction,
  required double currentDayProfitPercentage,
  required DateTime currentDate,
}) {
  printHeader(investment, currentCapital, currentSlabValue);

  print("Calculations for releasing current investment after next second slab");
  print("Current Slab Fund Criteria : $currentSlabValue");
  int nextSecondSlabValue = getNextSecondSlabValue(currentSlabValue);
  if (nextSecondSlabValue == 0) {
    print("There are no more slabs....");
    print("-----------------------------------------------");
  } else {
    print("Next Second Slab Fund Criteria : $nextSecondSlabValue");

    calculationsUpToAValueThenRelease(
      currentCapital: currentCapital,
      investment: investment,
      currentSlabValue: currentSlabValue,
      networkFeeForTransaction: networkFeeForTransaction,
      currentDate: currentDate,
      currentDayProfitPercentage: currentDayProfitPercentage,
      concernedValue: (nextSecondSlabValue - currentSlabValue).toDouble(),
    );
  }
}

void calculationsForReleasingCurrentInvestmentAfterAccumulation({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required double minimumAmountReleasable,
  required double networkFeeForTransaction,
  required double currentDayProfitPercentage,
  required DateTime currentDate,
}) {
  printHeader(investment, currentCapital, currentSlabValue);

  print("Calculations for releasing current investment after accumulation");
  print("-----------------------------------------------");

  calculationsUpToAValueThenRelease(
    currentCapital: currentCapital,
    investment: investment,
    currentSlabValue: currentSlabValue,
    networkFeeForTransaction: networkFeeForTransaction,
    currentDate: currentDate,
    currentDayProfitPercentage: currentDayProfitPercentage,
    concernedValue: 0,
  );
}

void calculationsUpToAValueThenRelease({
  required double currentCapital,
  required double investment,
  required int currentSlabValue,
  required double networkFeeForTransaction,
  required DateTime currentDate,
  required double currentDayProfitPercentage,
  required double concernedValue,
}) {
  double nextCapital = 0;
  double releasedAmount = 0;

  while (currentCapital <
      (investment +
          currentSlabValue +
          networkFeeForTransaction +
          concernedValue)) {
    var formattedCurrentDate = DateFormat(datePattern).format(currentDate);
    if ((currentDate.weekday != DateTime.saturday) &&
        (currentDate.weekday != DateTime.sunday)) {
      if (currentDate.weekday == DateTime.monday) {
        nextCapital = currentCapital -
            (currentSlabValue * (currentDayProfitPercentage / 100));
        print(
            "$formattedCurrentDate : ${currentCapital.toStringAsFixed(2)} - ($currentSlabValue*($currentDayProfitPercentage/100)) = ${nextCapital.toStringAsFixed(2)}");
      } else {
        nextCapital = currentCapital +
            (currentSlabValue * (currentDayProfitPercentage / 100));
        print(
            "$formattedCurrentDate : ${currentCapital.toStringAsFixed(2)} + ($currentSlabValue*($currentDayProfitPercentage/100)) = ${nextCapital.toStringAsFixed(2)}");
      }
      currentCapital = nextCapital;
    } else {
      print("$formattedCurrentDate : -");
    }
    currentDate = currentDate.add(Duration(days: 1));
  }
  print("-----------------------------------------------");

  double amountToRelease = currentCapital - currentSlabValue;
  if ((releasedAmount + (amountToRelease - networkFeeForTransaction)) >
      investment) {
    amountToRelease = (investment - releasedAmount) + networkFeeForTransaction;
  }
  print(
      "From Capital ${currentCapital.toStringAsFixed(2)} USD, $amountToRelease USD will released to wallet");
  currentCapital = currentCapital - amountToRelease;
  print("New Capital is ${currentCapital.toStringAsFixed(2)} USD");
  releasedAmount =
      releasedAmount + (amountToRelease - networkFeeForTransaction);
  print("Released Amount Till the Date is $releasedAmount USD");
  print("-----------------------------------------------");
}

void calculationsForReleasingCurrentInvestmentAfterNextSlab({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required double minimumAmountReleasable,
  required double networkFeeForTransaction,
  required double currentDayProfitPercentage,
  required DateTime currentDate,
}) {
  printHeader(investment, currentCapital, currentSlabValue);

  print("Calculations for releasing current investment after next slab");
  print("Current Slab Fund Criteria : $currentSlabValue");
  int nextSlabValue = getNextSlabValue(currentSlabValue);
  if (nextSlabValue == 0) {
    print("There are no more slabs....");
    print("-----------------------------------------------");
  } else {
    print("Next Slab Fund Criteria : $nextSlabValue");

    calculationsUpToAValueThenRelease(
      currentCapital: currentCapital,
      investment: investment,
      currentSlabValue: currentSlabValue,
      networkFeeForTransaction: networkFeeForTransaction,
      currentDate: currentDate,
      currentDayProfitPercentage: currentDayProfitPercentage,
      concernedValue: (nextSlabValue - currentSlabValue).toDouble(),
    );
  }
}

int getNextSlabValue(int currentSlabValue) {
  if (currentSlabValue == Slabs.beginner.personalFundInUsd) {
    return Slabs.beginner2.personalFundInUsd;
  } else if (currentSlabValue == Slabs.beginner2.personalFundInUsd) {
    return Slabs.level1.personalFundInUsd;
  } else {
    return 0;
  }
}

int getNextSecondSlabValue(int currentSlabValue) {
  if (currentSlabValue == Slabs.beginner.personalFundInUsd) {
    return Slabs.level1.personalFundInUsd;
  } else {
    return 0;
  }
}

void calculationsForReleasingCurrentInvestmentImmediately({
  required double investment,
  required double currentCapital,
  required int currentSlabValue,
  required double minimumAmountReleasable,
  required double networkFeeForTransaction,
  required double currentDayProfitPercentage,
  required DateTime currentDate,
}) {
  printHeader(investment, currentCapital, currentSlabValue);

  print("Calculations for releasing current investment immediately");

  double nextCapital = 0;
  double releasedAmount = 0;

  while (releasedAmount < investment) {
    if (currentCapital >=
        (currentSlabValue +
            minimumAmountReleasable +
            (minimumAmountReleasable * 0.0265))) {
      double amountToRelease = currentCapital - currentSlabValue;
      if ((releasedAmount +
              (amountToRelease -
                  networkFeeForTransaction -
                  (minimumAmountReleasable * 0.0265))) >
          investment) {
        amountToRelease = (investment - releasedAmount) +
            networkFeeForTransaction +
            (minimumAmountReleasable * 0.0265);
      }
      print("-----------------------------------------------");
      print(
          "From Capital ${currentCapital.toStringAsFixed(2)} USD, $amountToRelease USD will released to wallet");
      currentCapital = currentCapital - amountToRelease;
      print("New Capital is ${currentCapital.toStringAsFixed(2)} USD");
      releasedAmount = releasedAmount +
          (amountToRelease -
              networkFeeForTransaction -
              (amountToRelease * 0.0265));
      print("Released Amount Till the Date is $releasedAmount USD");
      if (releasedAmount < investment) {
        print(
            "To Catch up the Investment, We need ${investment - releasedAmount} USD");
      }
      print("---------------------------------");
    }
    var formattedCurrentDate = DateFormat(datePattern).format(currentDate);
    if ((currentDate.weekday != DateTime.saturday) &&
        (currentDate.weekday != DateTime.sunday)) {
      if (currentDate.weekday == DateTime.monday) {
        nextCapital = currentCapital -
            (currentSlabValue * (currentDayProfitPercentage / 100));
        print(
            "$formattedCurrentDate : ${currentCapital.toStringAsFixed(2)} - ($currentSlabValue*($currentDayProfitPercentage/100)) = ${nextCapital.toStringAsFixed(2)}");
      } else {
        nextCapital = currentCapital +
            (currentSlabValue * (currentDayProfitPercentage / 100));
        print(
            "$formattedCurrentDate : ${currentCapital.toStringAsFixed(2)} + ($currentSlabValue*($currentDayProfitPercentage/100)) = ${nextCapital.toStringAsFixed(2)}");
      }
      currentCapital = nextCapital;
    } else {
      print("$formattedCurrentDate : -");
    }
    currentDate = currentDate.add(Duration(days: 1));
  }
  print("-----------------------------------------------");
}

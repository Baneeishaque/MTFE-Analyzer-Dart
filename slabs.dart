enum Slabs {
  //TODO : Use up to level2
  beginner(personalFundInUsd: 26),
  beginner2(personalFundInUsd: 61),
  level1(personalFundInUsd: 500);

  const Slabs({
    required this.personalFundInUsd,
  });

  final int personalFundInUsd;
}

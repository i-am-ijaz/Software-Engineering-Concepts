abstract class CarPartsFactory {
  Engine buildEngine();
  Chassis buildChassis();
}

class Engine {
  final String engine;

  Engine(this.engine);
}

class Chassis {
  final String chassi;

  Chassis(this.chassi);
}

class AudiPartsFactory implements CarPartsFactory {
  @override
  Chassis buildChassis() {
    return Chassis("Audi Chassi");
  }

  @override
  Engine buildEngine() {
    return Engine("Audi Engine");
  }
}

class ToyotaPartsFactory implements CarPartsFactory {
  @override
  Chassis buildChassis() {
    return Chassis("Toyota Chassi");
  }

  @override
  Engine buildEngine() {
    return Engine("Toyota Engine");
  }
}

void main(List<String> args) {
  final CarPartsFactory carParts1 = AudiPartsFactory();
  print(carParts1.buildEngine().engine);
  print(carParts1.buildChassis().chassi);
  final CarPartsFactory carParts2 = ToyotaPartsFactory();
  print(carParts2.buildEngine().engine);
  print(carParts2.buildChassis().chassi);
}

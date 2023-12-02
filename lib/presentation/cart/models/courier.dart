class Courier {
  final String code;
  final String name;

  Courier({
    required this.code,
    required this.name,
  });

  @override
  String toString() => name;
}

List<Courier> couriers = [
  Courier(code: 'pilih', name: '-pilih kurir-'),
  Courier(code: 'jne', name: 'JNE'),
  Courier(code: 'jnt', name: 'J&T'),
  Courier(code: 'pos', name: 'POS'),
];

// kode subdistrict origin
const String subdistrictOrigin = '5779';

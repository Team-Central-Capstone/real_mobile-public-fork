/// Connection Type Enums
/// - wifi
/// - mobile
enum ConnectionType { wifi, mobile }

enum Choice { yes, no }

extension ChoiceID on Choice {
  int get id {
    switch (this) {
      case Choice.yes:
        return 58;
      case Choice.no:
        return 59;
      default:
        return 0;
    }
  }
}

// /// Gender Enums
// /// - male
// /// - female
// enum Gender { male, female, other }

// /// Extension to get integer values of UserGenders
// ///  1 - male
// ///  2 - female
// ///  3 - other
// ///  0 - unknown
// extension GenderID on Gender {
//   int get value {
//     switch (this) {
//       case Gender.male:
//         return 1;
//       case Gender.female:
//         return 2;
//       case Gender.other:
//         return 3;
//       default:
//         return 0;
//     }
//   }
// }

import 'package:formz/formz.dart';

enum PriceError { empty, value, format }

class Price extends FormzInput<double, PriceError> {
  const Price.pure() : super.pure(0.0);
  const Price.dirty(double value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == PriceError.empty) return 'El campo es requerido';
    if (displayError == PriceError.value) return 'Tiene que ser 0 o mayor';
    if (displayError == PriceError.format) return 'Tiene que ser un número';
    return null;
  }

  @override
  PriceError? validator(double value) {
    if (value.toString().isEmpty || value.toString().trim().isEmpty) {
      return PriceError.empty;
    }
    final isDouble = double.tryParse(value.toString());
    if (isDouble == null) return PriceError.format;
    if (value < 0) return PriceError.value;
    return null;
  }
}

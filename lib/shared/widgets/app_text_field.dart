import 'package:flutter/material.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    required this.controller,
    required this.label,
    required this.hint,
    this.prefixIcon,
    this.prefixAppIcon,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.obscureText = false,
    this.autofillHints,
    this.onSubmitted,
    super.key,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData? prefixIcon;
  final List<List<dynamic>>? prefixAppIcon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final Iterable<String>? autofillHints;
  final ValueChanged<String>? onSubmitted;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool _isObscured = widget.obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 8),
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          obscureText: widget.obscureText && _isObscured,
          autofillHints: widget.autofillHints,
          onFieldSubmitted: widget.onSubmitted,
          decoration: InputDecoration(
            hintText: widget.hint,
            prefixIcon: widget.prefixAppIcon == null
                ? Icon(widget.prefixIcon, size: 21)
                : Center(
                    widthFactor: 1,
                    child: AppIcon(widget.prefixAppIcon!, size: 21),
                  ),
            suffixIcon: widget.obscureText
                ? IconButton(
                    tooltip: _isObscured
                        ? context.l10n.tr('auth.showPassword')
                        : context.l10n.tr('auth.hidePassword'),
                    onPressed: () => setState(() => _isObscured = !_isObscured),
                    icon: AppIcon(
                      _isObscured ? AppIcons.visible : AppIcons.hidden,
                      size: 21,
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}

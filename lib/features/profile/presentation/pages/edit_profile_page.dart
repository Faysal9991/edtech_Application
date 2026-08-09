import 'package:edtech_application/features/authentication/presentation/controllers/auth_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _displayName;
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _phone = TextEditingController();
  final _biography = TextEditingController();

  @override
  void initState() {
    super.initState();
    _displayName = TextEditingController(
      text: context.read<AuthController>().user?.name ?? '',
    );
  }

  @override
  void dispose() {
    _displayName.dispose();
    _firstName.dispose();
    _lastName.dispose();
    _phone.dispose();
    _biography.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tr('profile.edit'))),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              AppTextField(
                controller: _displayName,
                label: context.l10n.tr('profile.displayName'),
                hint: context.l10n.tr('profile.nameHint'),
                prefixIcon: Icons.person_outline_rounded,
                validator: (value) => (value?.trim().length ?? 0) < 2
                    ? context.l10n.tr('profile.nameLength')
                    : null,
              ),
              const SizedBox(height: 14),
              AppTextField(
                controller: _firstName,
                label: context.l10n.tr('profile.firstName'),
                hint: context.l10n.tr('profile.optional'),
                prefixIcon: Icons.badge_outlined,
              ),
              const SizedBox(height: 14),
              AppTextField(
                controller: _lastName,
                label: context.l10n.tr('profile.lastName'),
                hint: context.l10n.tr('profile.optional'),
                prefixIcon: Icons.badge_outlined,
              ),
              const SizedBox(height: 14),
              AppTextField(
                controller: _phone,
                label: context.l10n.tr('profile.phone'),
                hint: '+8801XXXXXXXXX',
                prefixIcon: Icons.phone_outlined,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 14),
              TextFormField(
                controller: _biography,
                minLines: 4,
                maxLines: 8,
                maxLength: 5000,
                decoration: InputDecoration(
                  labelText: context.l10n.tr('profile.biography'),
                  alignLabelWithHint: true,
                ),
              ),
              if (auth.errorMessage != null) ...[
                const SizedBox(height: 10),
                Text(
                  auth.errorMessage!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ],
              const SizedBox(height: 18),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: auth.isLoading ? null : _save,
                  child: auth.isLoading
                      ? const SizedBox.square(
                          dimension: 22,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.5,
                            color: Colors.white,
                          ),
                        )
                      : Text(context.l10n.tr('common.save')),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                context.l10n.tr('profile.prefillMissing'),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _save() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    String? optional(String value) =>
        value.trim().isEmpty ? null : value.trim();
    final success = await context.read<AuthController>().updateProfile(
      displayName: _displayName.text.trim(),
      firstName: optional(_firstName.text),
      lastName: optional(_lastName.text),
      phone: optional(_phone.text),
      biography: optional(_biography.text),
    );
    if (!mounted || !success) return;
    Navigator.pop(context);
  }
}

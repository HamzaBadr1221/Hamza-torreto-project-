# Fix warnings and errors in login_page.dart

The plan involves fixing typos in file names and class names that are used in `login_page.dart`, as well as applying Flutter best practices (like `const` keywords) to resolve potential lint warnings.

## User Review Required

> [!IMPORTANT]
> I will be renaming `validtaions.dart` to `validations.dart` and `CustomTextFiledWidget` to `CustomTextFieldWidget`. This will affect all files using these components.

## Proposed Changes

### Core Validations
#### [NEW] [validations.dart](file:///C:/Users/doman/OneDrive/Documents/GitHub/Hamza-torreto-project-/lib/validations.dart)
#### [DELETE] [validtaions.dart](file:///C:/Users/doman/OneDrive/Documents/GitHub/Hamza-torreto-project-/lib/validtaions.dart)
- Rename file to fix typo.
- Add `const` constructor to validators to allow better performance.

### Auth Widgets
#### [MODIFY] [custom_widget.dart](file:///C:/Users/doman/OneDrive/Documents/GitHub/Hamza-torreto-project-/lib/features/auth/widget/custom_widget.dart)
- Rename `CustomTextFiledWidget` to `CustomTextFieldWidget`.

### Presentation Pages
#### [MODIFY] [login_page.dart](file:///C:/Users/doman/OneDrive/Documents/GitHub/Hamza-torreto-project-/lib/features/auth/presentation/pages/login_page.dart)
- Update imports to use `validations.dart`.
- Update widget usage to `CustomTextFieldWidget`.
- Add `const` to `AppBar` title and `TextStyle`.
- Use `const` for validator instances if applicable.

## Verification Plan

### Manual Verification
- Verify that the app still compiles.
- Check that the login page UI remains unchanged.
- Ensure validation still works as expected.

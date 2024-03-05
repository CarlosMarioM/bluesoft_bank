# bluesoft_bank

## Dumy Data 
### Client
``` json
[
    {
      "id": "12345",
      "name": "John Doe",
      "city": "New York",
      "uid": "abc123"
    },
    {
      "id": "67890",
      "name": "Jane Smith",
      "city": "Los Angeles",
      "uid": "def456"
    },
    {
      "id": "09876",
      "name": "Alice Brown",
      "city": "London",
      "uid": "ghi789"
    },
    {
      "id": "45612",
      "name": "David Johnson",
      "city": "Paris",
      "uid": "jkl012"
    },
    {
      "id": "32109",
      "name": "Emily Garcia",
      "city": "Berlin",
      "uid": "mno345"
    }
  ]
```


``` json
[
    {
      "id": "56789",
      "type": "savings",
      "balance": 1000.0,
      "clientId": "12345"
    },
    {
      "id": "123163",
      "type": "savings",
      "balance": 3000.0,
      "clientId": "12345"
    },
    {
      "id": "01234",
      "type": "current",
      "balance": 5000.0,
      "clientId": "67890"
    },
    {
      "id": "98765",
      "type": "savings",
      "balance": 2000.0,
      "clientId": "09876"
    },
    {
      "id": "45678",
      "type": "current",
      "balance": 3000.0,
      "clientId": "45612"
    },
    {
      "id": "21098",
      "type": "savings",
      "balance": 4000.0,
      "clientId": "32109"
    }
  ]
  
```
## Folder Structure
- 
```
└── 📁lib
    └── 📁bloc
        └── 📁home_bloc
            └── home_bloc.dart
            └── home_bloc.freezed.dart
            └── home_event.dart
            └── home_state.dart
        └── 📁login_bloc
            └── login_bloc.dart
            └── login_bloc.freezed.dart
            └── login_event.dart
            └── login_state.dart
    └── bluesoft_bank.dart
    └── 📁core
        └── 📁di
            └── di.config.dart
            └── di.dart
        └── 📁enums
            └── account_type.dart
            └── report_type.dart
            └── transaction_type.dart
        └── 📁models
            └── 📁account
                └── account.dart
                └── account.freezed.dart
                └── account.g.dart
            └── 📁client
                └── client.dart
                └── client.freezed.dart
                └── client.g.dart
            └── 📁report
                └── report.dart
                └── report.freezed.dart
                └── report.g.dart
            └── 📁transaction
                └── transaction.dart
                └── transaction.freezed.dart
                └── transaction.g.dart
        ├── use_cases
    └── 📁framework
        └── 📁analytics
        └── 📁repository
            └── 📁implementation
                └── home_repository_impl.dart
                └── login_repository_impl.dart
            └── 📁interface
                └── i_home_repository.dart
                └── i_login_repository.dart
    └── main.dart
    └── 📁ui
        └── 📁appbar
            └── appbar_builder.dart
        └── 📁buttons
            └── primary_button.dart
            └── secondary_button.dart
        └── 📁cards
            └── neumorphism_card.dart
        └── 📁drawers
            └── home_drawer.dart
        └── 📁form_fields
            └── email_form_field.dart
            └── password_form_field.dart
        └── 📁scaffolds
            └── background_scaffold.dart
            └── home_scaffold.dart
        └── 📁theme
            └── theme.dart
    └── 📁utils
        └── 📁extension
            └── 📁navigation
                └── navigation_extension.dart
            └── 📁widget
                └── widget_extension.dart
        └── 📁navigation
            └── navigation.dart
        └── 📁results
            └── 📁failure_entity
                └── failure_entity.dart
                └── failure_entity.freezed.dart
            └── results.dart
        └── ui_event.dart
    └── 📁views
        └── 📁home
            └── home_page.dart
            └── home_screen.dart
            └── 📁widgets
                └── balance_card.dart
        └── 📁login
            └── login_page.dart
            └── login_screen.dart
        ├── transactions
```

## How It Works in Memory

```
┌─────────────────┐
│   Main App      │
│                 │
│  ┌───────────┐  │
│  │   Home    │  │ (static - copied into app)
│  └─────┬─────┘  │
│        │        │
│  ┌─────┴─────┐  │
│  │   Menu    │  │ (static - copied into app)
│  └─────┬─────┘  │
│        │        │
└────────┼────────┘
         │
         ↓
   ┌──────────┐
   │  Shared  │  (dynamic - loaded once, shared by all)
   │ .dynamic │
   └──────────┘
```

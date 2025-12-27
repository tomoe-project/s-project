my_project/
├── app/                        # Pythonのメインロジック
│   ├── __init__.py
│   ├── models/                 # ORMモデル（例：SQLAlchemy）
│   ├── services/               # ビジネスロジック
│   ├── routes/                 # APIルーティング（FastAPIなど）
│   ├── sql/                    # 生のSQLファイル置き場
│   ├── schema/                 # テーブル定義（CREATE文など）
│   ├── data/                   # 初期データ（INSERT文など）
│   └── queries/                # 複雑なSELECTやJOINクエリ
│
├── scripts/                    # バッチ処理やユーティリティ
│   └── import_data.py
│
├── config/                     # 設定ファイル（DB接続など）
│   └── settings.py
│
├── tests/                      # テストコード
├── requirements.txt
└── README.md
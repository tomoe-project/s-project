
CREATE TABLE M_operations (
    cd VARCHAR(12) PRIMARY KEY NOT NULL, -- 業務コード
    nm VARCHAR(40) NOT NULL, -- 業務名称
    VALID_flg CHAR(1) NOT NULL, -- 有効フラグ
    division_cd VARCHAR(20), -- 担当課コード
    holiday_execution_rule VARCHAR(2), -- 休日実行ルール
    execution_order INTEGER, -- 実行順
    TIMEOUT_PERIOD VARCHAR(8), -- タイムアウト期間
    NOTIFICATION_UNIT VARCHAR(12), -- 通知単位
    NOTIFICATION_FLG CHAR(1) NOT NULL, -- 通知フラグ
    created_timestamp TIMESTAMP, -- 登録日時
    created_by VARCHAR(12), -- 登録者コード
    updated_timestamp TIMESTAMP, -- 更新日時
    updated_by VARCHAR(12) -- 更新者コード
);

COMMENT ON COLUMN M_operations.cd IS '業務コード。M始まり:月次、D始まり:日次';
COMMENT ON COLUMN M_operations.nm IS '業務名称';
COMMENT ON COLUMN M_operations.VALID_flg IS '有効フラグ';
COMMENT ON COLUMN M_operations.division_cd IS '担当課コード。課の持ち物であるときに記載、通知マスタ/ユーザーマスタを参照';
COMMENT ON COLUMN M_operations.holiday_execution_rule IS '休日実行ルール。-1:直前営業日実行、0:当日実行、1:翌営業日実行';
COMMENT ON COLUMN M_operations.execution_order IS '実行順。親業務の中で何番目に実行するか(10毎に変更)';
COMMENT ON COLUMN M_operations.TIMEOUT_PERIOD IS 'タイムアウト期間。整数値*yMdhms (例:30s,5m,4h)';
COMMENT ON COLUMN M_operations.NOTIFICATION_UNIT IS '通知単位。DIVISION:課、PERSON:担当者';
COMMENT ON COLUMN M_operations.NOTIFICATION_FLG IS '通知フラグ。0:通知なし、1:通知あり';
COMMENT ON COLUMN M_operations.created_timestamp IS '登録日時';
COMMENT ON COLUMN M_operations.created_by IS '登録者コード';
COMMENT ON COLUMN M_operations.updated_timestamp IS '更新日時';

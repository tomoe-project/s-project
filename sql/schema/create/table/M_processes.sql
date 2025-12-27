
CREATE TABLE M_processes (
    operation_cd VARCHAR(12) NOT NULL, -- 親業務コード
    cd VARCHAR(12) PRIMARY KEY NOT NULL, -- 処理コード
    nm VARCHAR(40) NOT NULL, -- 処理名称
    VALID_FLG CHAR(1) NOT NULL, -- 有効フラグ
    execution_order INTEGER, -- 実行順
    TIMEOUT_PERIOD VARCHAR, -- タイムアウト期間
    created_timestamp TIMESTAMP, -- 登録日時
    created_by VARCHAR(12), -- 登録者コード
    updated_timestamp TIMESTAMP, -- 更新日時
    updated_by VARCHAR(12) -- 更新者コード
);

COMMENT ON COLUMN M_processes.operation_cd IS '親業務コード';
COMMENT ON COLUMN M_processes.cd IS '処理コード';
COMMENT ON COLUMN M_processes.nm IS '処理名称';
COMMENT ON COLUMN M_processes.VALID_FLG IS '有効フラグ。0:無効、1:有効';
COMMENT ON COLUMN M_processes.execution_order IS '実行順。親業務の中で何番目に実行するか(10毎に変更)';
COMMENT ON COLUMN M_processes.TIMEOUT_PERIOD IS 'タイムアウト期間。整数値*yMdhms (例:30s,5m,4h)';
COMMENT ON COLUMN M_processes.created_timestamp IS '登録日時';
COMMENT ON COLUMN M_processes.created_by IS '登録者コード';
COMMENT ON COLUMN M_processes.updated_timestamp IS '更新日時';
COMMENT ON COLUMN M_processes.updated_by IS '更新者コード';

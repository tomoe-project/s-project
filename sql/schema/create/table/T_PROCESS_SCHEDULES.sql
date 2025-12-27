
CREATE TABLE T_PROCESS_SCHEDULES (
    PARENT_CD VARCHAR(22) PRIMARY KEY NOT NULL, -- 親コード
    process_cd VARCHAR(12) NOT NULL, -- 処理コード
    exexuteion_flg CHAR(1) NOT NULL, -- 実行フラグ
    started_at DATE, -- 開始時刻
    finished_at DATE, -- 終了時刻
    result_value VARCHAR(2), -- 実行結果値
    error_log VARCHAR(400), -- エラーログ
    executions INTEGER, -- 実行回数
    REEXECUTE_FLG CHAR(1) NOT NULL, -- 再実行フラグ
    EXECUTABLE_FLG CHAR(1) NOT NULL, -- 実行可否
    created_timestamp TIMESTAMP, -- 登録日時
    created_by VARCHAR(12), -- 登録者コード
    updated_timestamp TIMESTAMP, -- 更新日時
    updated_by VARCHAR(12) -- 更新者コード
);

COMMENT ON COLUMN T_PROCESS_SCHEDULES.PARENT_CD IS '親コード。operation_scheduleのコード、先行処理のコードか、処理単体の実行可否フラグを持たせる必要あり';
COMMENT ON COLUMN T_PROCESS_SCHEDULES.process_cd IS '処理コード';
COMMENT ON COLUMN T_PROCESS_SCHEDULES.exexuteion_flg IS '実行フラグ。各オペレーション実行単位での停止に使用（その日のその時だけ）';
COMMENT ON COLUMN T_PROCESS_SCHEDULES.started_at IS '開始時刻。Timestampである必要はないのでは？';
COMMENT ON COLUMN T_PROCESS_SCHEDULES.finished_at IS '終了時刻';
COMMENT ON COLUMN T_PROCESS_SCHEDULES.result_value IS '実行結果値。0:正常終了, 1:再実行可能な終了, 9:異常終了。将来的に2桁コードを返してもいいように文字列';
COMMENT ON COLUMN T_PROCESS_SCHEDULES.error_log IS 'エラーログ。エラー発生時にのみ値を入れる。再実行して正常終了したらクリアすること';
COMMENT ON COLUMN T_PROCESS_SCHEDULES.executions IS '実行回数。エラーログをクリアする代わりに実行回数は保持しておく';
COMMENT ON COLUMN T_PROCESS_SCHEDULES.REEXECUTE_FLG IS '再実行フラグ。1:自動で再実行する←初期値は処理マスタの設定値から自動で設定';
COMMENT ON COLUMN T_PROCESS_SCHEDULES.EXECUTABLE_FLG IS '実行可否。再実行可能な場合や、先行処理が終わっている場合に1を設定すること。この値をキーに実行ボタンを表示する';
COMMENT ON COLUMN T_PROCESS_SCHEDULES.created_timestamp IS '登録日時';
COMMENT ON COLUMN T_PROCESS_SCHEDULES.created_by IS '登録者コード';
COMMENT ON COLUMN T_PROCESS_SCHEDULES.updated_timestamp IS '更新日時';


CREATE TABLE M_USERS (
    CD VARCHAR(12) PRIMARY KEY NOT NULL, -- コード
    nm VARCHAR(40) NOT NULL, -- ユーザ名称
    PASSWORD VARCHAR(256) NOT NULL, -- パスワード
    DIVISION VARCHAR(12), -- 課
    MAIL_ADDRESS VARCHAR(254), -- メールアドレス
    VALID_FLG CHAR(1) NOT NULL, -- 有効フラグ
    ADMIN_FLG CHAR(1), -- 管理者権限フラグ
    DELETE_FLG CHAR(1), -- 削除権限フラグ
    ADD_FLG CHAR(1), -- 追加権限フラグ
    EXECUTE_FLG CHAR(1), -- 実行権限フラグ
    STOP_FLG CHAR(1), -- 停止権限フラグ
    VIEW_FLG CHAR(1), -- 閲覧権限フラグ
    NOTIFIED_FLG CHAR(1), -- 通知権限フラグ
    created_timestamp TIMESTAMP, -- 登録日時
    created_by VARCHAR(12), -- 登録者コード
    updated_timestamp TIMESTAMP, -- 更新日時
    updated_by VARCHAR(12) -- 更新者コード
);

COMMENT ON COLUMN M_USERS.CD IS 'コード。社員は社員コード(6桁)、非社員は所属会社名称略(3桁)+連番、グループも名称略+連番';
COMMENT ON COLUMN M_USERS.nm IS 'ユーザ名称。苗字と名前を半角スペース区切りで登録、グループ名称可';
COMMENT ON COLUMN M_USERS.PASSWORD IS 'パスワード。SHAなどで暗号化（復号不可）';
COMMENT ON COLUMN M_USERS.DIVISION IS '課';
COMMENT ON COLUMN M_USERS.MAIL_ADDRESS IS 'メールアドレス。オペレーション実行時の通知に使用';
COMMENT ON COLUMN M_USERS.VALID_FLG IS '有効フラグ';
COMMENT ON COLUMN M_USERS.ADMIN_FLG IS '管理者権限フラグ。システム管理者';
COMMENT ON COLUMN M_USERS.DELETE_FLG IS '削除権限フラグ。オペレーション/処理の削除';
COMMENT ON COLUMN M_USERS.ADD_FLG IS '追加権限フラグ。オペレーション/処理の追加';
COMMENT ON COLUMN M_USERS.EXECUTE_FLG IS '実行権限フラグ。オペレーション/処理の実行';
COMMENT ON COLUMN M_USERS.STOP_FLG IS '停止権限フラグ。オペレーション/処理の停止';
COMMENT ON COLUMN M_USERS.VIEW_FLG IS '閲覧権限フラグ。システムの閲覧';
COMMENT ON COLUMN M_USERS.NOTIFIED_FLG IS '通知権限フラグ。オペレーション/処理の通知';
COMMENT ON COLUMN M_USERS.created_timestamp IS '登録日時';
COMMENT ON COLUMN M_USERS.created_by IS '登録者コード';
COMMENT ON COLUMN M_USERS.updated_timestamp IS '更新日時';
COMMENT ON COLUMN M_USERS.updated_by IS '更新者コード';

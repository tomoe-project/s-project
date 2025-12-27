
CREATE TABLE M_operation_assignments (
    operation_cd VARCHAR(12) PRIMARY KEY NOT NULL, -- 業務コード
    USER_CD VARCHAR(8) NOT NULL, -- ユーザコード
    ROLE VARCHAR(3) NOT NULL, -- 役割
    Valid_From_Date DATE, -- 適用開始日付
    Valid_To_Date DATE, -- 適用終了日付
    created_timestamp TIMESTAMP, -- 登録日時
    created_by VARCHAR(12), -- 登録者コード
    updated_timestamp TIMESTAMP, -- 更新日時
    updated_by VARCHAR(12) -- 更新者コード
);

COMMENT ON COLUMN M_operation_assignments.operation_cd IS '業務コード。担当業務を記載';
COMMENT ON COLUMN M_operation_assignments.USER_CD IS 'ユーザコード。担当者のユーザーコードを記載';
COMMENT ON COLUMN M_operation_assignments.ROLE IS '役割。PIC:主担当、SUB:代理担当';
COMMENT ON COLUMN M_operation_assignments.Valid_From_Date IS '適用開始日付';
COMMENT ON COLUMN M_operation_assignments.Valid_To_Date IS '適用終了日付';
COMMENT ON COLUMN M_operation_assignments.created_timestamp IS '登録日時';
COMMENT ON COLUMN M_operation_assignments.created_by IS '登録者コード';
COMMENT ON COLUMN M_operation_assignments.updated_timestamp IS '更新日時';
COMMENT ON COLUMN M_operation_assignments.updated_by IS '更新者コード';

BEGIN FOR x IN (
    SELECT
        table_name
    FROM
        user_tables
    WHERE
        table_name = 'PEDIDO_NOVO'
        )
    loop
    execute
    IMMEDIATE
        'DROP TABLE' || x.table_name || ' CASCADE CONSTRAINSTS';
    end loop;
 end;
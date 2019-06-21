
.. code::

    python3.7 -m venv ./.venv
    source ./.venv/bin/activate
    pip install -U pip
    pip install -U docker-compose

    ./docker-run.sh
    # DB URI: postgres://testlink_user:foobarpass@testlink-postgres:5432/testlink

    cat testlink_create_udf0.sql | docker exec testlink-postgres psql -U testlink_user testlink

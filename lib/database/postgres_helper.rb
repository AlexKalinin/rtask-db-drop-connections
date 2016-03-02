class PostgresConnectionHelper
  def self.drop_all_connections(dbname, user, password)
    conn = PG.connect(:dbname => 'postgres', user: user, password: password)

    q = 'SELECT pg_terminate_backend(pg_stat_activity.pid) ' +
      'FROM pg_stat_activity ' +
      "WHERE pg_stat_activity.datname = '#{dbname}' " +
      'AND pid <> pg_backend_pid(); '

    conn.exec(q)
  end
end
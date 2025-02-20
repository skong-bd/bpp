use redis::{Commands, Connection, RedisResult};

fn main() -> RedisResult<()> {
    // Connect to Redis
    let client = redis::Client::open("redis://default:abcd1234@0.0.0.0:6379")?;
    let mut con: Connection = client.get_connection()?;
    
    // Set a value in Redis
    let _: () = con.set("foo", "bar")?;
    
    // Get the value from Redis
    let value: String = con.get("foo")?;
    println!("Retrieved value: {}", value);
    
    Ok(())
}

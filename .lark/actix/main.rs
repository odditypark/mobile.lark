// #[macro_use]
// extern crate log;
// use actix_web::{middleware, App, HttpServer};
// 
// fn main() -> std::io::Result<()> {
//     // std::env::set_var("RUST_LOG", "main=actix_web");
//     env_logger::init_from_env(
//         env_logger::Env::default().default_filter_or("info")
//     );
// 
//     let app = || App::new()
//         .wrap(middleware::Logger::new("%r %s"))
//         .wrap(middleware::Compress::default())
//         .wrap(middleware::cors::Cors::default())
//         .service(actix_server::no_params)
//         .service(actix_server::index);
// 
//     info!("server start at port 6666...");
//     HttpServer::new(app)
//         .bind("127.0.0.1:6666")?
//         .workers(1)
//         .run()
// }
//

use rand::RngCore;
use hex::encode;
fn main() {
    let mut seed = [0; 32];
    ::rand::thread_rng().fill_bytes(&mut seed);
    println!("{:?}", encode(seed));
}

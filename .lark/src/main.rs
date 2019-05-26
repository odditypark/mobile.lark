use actix_web::{middleware, App, HttpServer};

fn main() -> std::io::Result<()> {
    std::env::set_var("RUST_LOG", "main=actix_web");
    env_logger::init();

    let app = || App::new()
        .wrap(middleware::Logger::new("%r %s"))
        .wrap(middleware::Compress::default())
        .wrap(middleware::cors::Cors::default())
        .service(actix_server::no_params)
        .service(actix_server::index);

    println!("server start at port 6666...");
    HttpServer::new(app)
        .bind("127.0.0.1:6666")?
        .workers(1)
        .run()
}

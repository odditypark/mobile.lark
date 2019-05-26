use actix_web::{web, Responder};

#[actix_web::get("/")]
pub fn no_params() -> &'static str {
    "Hello world!\r\n"
}

#[actix_web::get("/")]
pub fn index(info: web::Path<(u32, String)>) -> impl Responder {
    format!("Hello {}! id:{}", info.1, info.0)
}


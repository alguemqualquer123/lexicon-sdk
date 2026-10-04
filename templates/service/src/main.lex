struct User { id: i32, name: String }

service UserService {
    rpc GetUser(id: i32) -> User;
}

pub fn main() -> void {
    Grpc::serve(UserService, "0.0.0.0:50051");
}

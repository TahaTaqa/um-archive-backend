class apiError {
  constructor(status, message) {
    (this.status = status), (this.message = message);
  }
  static redirect(message) {
    return new apiError(307, message);
  }
  static badRequest(message) {
    return new apiError(400, message);
  }
  static unauthorized(message) {
    return new apiError(401, message);
  }
  static notFound(message) {
    return new apiError(404, message);
  }
  static duplicated(message) {
    return new apiError(409, message);
  }
  static unprocessableEntity(message) {
    return new apiError(422, message);
  }
  static tokenExpired(message) {
    return new apiError(419, message);
  }
}
module.exports = apiError;

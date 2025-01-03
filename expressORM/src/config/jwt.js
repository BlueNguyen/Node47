// yarn add jsonwebtoken
import jwt from "jsonwebtoken";

// tạo token
export const createToken = (data) => {
  return jwt.sign({ data: data }, "BI_MAT", { expiresIn: "5d" });
};

// tạo rftoken
export const createTokenRef = (data) => {
  return jwt.sign({ data: data }, "BI_MAT_REF", { expiresIn: "60d" });
};

// kiểm tra rftoken
export const checkTokenRef = (token) => {
  return jwt.verify(token, "BI_MAT_REF", (err) => {
    return err;
  });
};
// kiểm tra token
export const checkToken = (token) => {
  return jwt.verify(token, "BI_MAT", (err) => {
    return err;
  });
};

// giải mã token

export const decodeToken = (token) => {
  return jwt.decode(token);
};

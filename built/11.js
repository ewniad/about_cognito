"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const https_1 = __importDefault(require("https"));
const req = https_1.default.request('https://example.com');
req.addListener('response', function (res) {
    res.pipe(process.stdout);
});
req.end();

import { Module } from '@nestjs/common';
import { QuanLyPhimService } from './quan-ly-phim.service';
import { QuanLyPhimController } from './quan-ly-phim.controller';
import {JwtModule} from "@nestjs/jwt"

let cloudinaryConfig = {
  cloud_name: '',
  api_key: '',
  api_secret: '',
  // ...tùy chọn khác (tùy chọn)
};

@Module({
  imports:[JwtModule.register({})],
  controllers: [QuanLyPhimController],
  providers: [QuanLyPhimService],
})
export class QuanLyPhimModule {}

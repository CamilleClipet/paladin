import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { ValidationPipe } from '@nestjs/common';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.useGlobalPipes(
    new ValidationPipe({
      whitelist: true, // Remove non-declared properties
      forbidNonWhitelisted: true, // Throw error if non-declared properties are included
      transform: true, // Automatically transform the payload into DTO objects
    }),
  );
  await app.listen(process.env.PORT ?? 3000);
}
bootstrap();

import { Logger } from '@nestjs/common';
import { NestFactory } from '@nestjs/core';
import { SwaggerModule } from '@nestjs/swagger';

import { AppModule } from './app.module';
import {
  env,
  swaggerConfig,
  swaggerDocumentOptions,
  swaggerSetupOptions,
} from './configs';

async function bootstrap() {
  Logger.log(env);
  /**----------------- App config ----------------------------- */
  const app = await NestFactory.create(AppModule);

  /**----------------- Swagger -------------------------------- */
  const document = SwaggerModule.createDocument(
    app,
    swaggerConfig,
    swaggerDocumentOptions,
  );
  SwaggerModule.setup('api', app, document, swaggerSetupOptions);

  /**----------------- Security -------------------------------- */
  app.enableCors({ origin: '*' });

  /**---------------- Init server ------------------------------ */
  Logger.log(`Server listening on port ${env.PORT}`, 'trungluc');
  await app.listen(env.PORT);
}
bootstrap();

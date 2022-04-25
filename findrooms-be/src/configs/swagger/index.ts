import {
  DocumentBuilder,
  SwaggerCustomOptions,
  SwaggerDocumentOptions,
} from '@nestjs/swagger';

export const swaggerConfig = new DocumentBuilder()
  .setTitle('Tìm người ở ghép')
  .setDescription('API description')
  .setVersion('1.0')
  .build();

export const swaggerDocumentOptions: SwaggerDocumentOptions = {
  deepScanRoutes: true,
};
export const swaggerSetupOptions: SwaggerCustomOptions = {
  explorer: true,
  swaggerOptions: {
    docExpansion: false,
    deepLinking: true,
  },
};

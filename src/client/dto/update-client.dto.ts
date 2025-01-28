import { IsNotEmpty, IsString, ValidateIf } from 'class-validator';
import { Client } from '../entities/client.entity';

export class UpdateClientDto {
  @ValidateIf((object: Client, value) => !value && !object.lastName)
  @IsString()
  @IsNotEmpty({ message: 'firstName or lastName should be provided' })
  firstName: string;

  @ValidateIf((object: Client, value) => !value && !object.firstName)
  @IsString()
  @IsNotEmpty({ message: 'firstName or lastName should be provided' })
  lastName: string;
}

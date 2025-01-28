import { IsNotEmpty, IsString } from 'class-validator';

export class CreateClientDto {
  @IsString()
  @IsNotEmpty({ message: 'firstName should be provided in the body' })
  firstName: string;

  @IsString()
  @IsNotEmpty({ message: 'lastName should be provided in the body' })
  lastName: string;
}

import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Client } from './entities/client.entity';
import { CreateClientDto } from './dto/create-client.dto';
import { UpdateClientDto } from './dto/update-client.dto';

@Injectable()
export class ClientService {
  constructor(
    @InjectRepository(Client)
    private clientRepository: Repository<Client>,
  ) {}

  create(createClientDto: CreateClientDto): Promise<Client> {
    const client: Client = new Client();
    client.firstName = createClientDto.firstName;
    client.lastName = createClientDto.lastName;
    return this.clientRepository.save(client);
  }

  findAll(): Promise<Client[]> {
    return this.clientRepository.find();
  }

  findOne(id: number): Promise<Client | null> {
    return this.clientRepository.findOneBy({ id });
  }

  async updateClient(
    id: number,
    updateClientDto: UpdateClientDto,
  ): Promise<Client> {
    const client: Client | null = await this.clientRepository.findOneBy({ id });
    if (!client) {
      throw new NotFoundException(`Client with ID ${id} not found`);
    }
    const updatedClient = Object.assign(client, updateClientDto);
    return this.clientRepository.save(updatedClient);
  }

  // async remove(id: number): Promise<void> {
  //   await this.clientRepository.delete(id);
  // }
}

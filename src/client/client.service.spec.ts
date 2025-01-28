import { Test, TestingModule } from '@nestjs/testing';
import { ClientService } from './client.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Client } from './entities/client.entity';

describe('ClientService', () => {
  let service: ClientService;
  let repository: Repository<Client>;

  const mockClient = { firstName: 'Hugo', lastName: 'Saracino' };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        ClientService,
        {
          provide: getRepositoryToken(Client),
          useValue: {
            // Mocked methods of the repository
            find: jest.fn().mockResolvedValue([mockClient]),
            save: jest.fn().mockResolvedValue(mockClient),
            findOneBy: jest.fn().mockResolvedValue([mockClient]),
          },
        },
      ],
    }).compile();

    service = module.get<ClientService>(ClientService);
    repository = module.get<Repository<Client>>(getRepositoryToken(Client));
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  it('should call find method of the repository', async () => {
    await service.findAll(); // Assuming you have a method like this in ClientService
    expect(repository.find).toHaveBeenCalled();
  });

  it('should create a new client and find it', async () => {
    await service.create({ firstName: 'Hugo', lastName: 'Saracino' });
    const allClients = await service.findAll();
    expect(allClients).toBeDefined();
    expect(allClients.length).toBe(1);
    expect(allClients[0].firstName).toBe('Hugo');
  });
});

//
//  Filmes.m
//  FilmesESeries
//
//  Created by João Gabriel  on 12/07/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import "Filmes.h"

@implementation Filmes
- (NSMutableArray*) fillArrayWithMovies{
    NSMutableArray *filmes2 = [[NSMutableArray alloc]init];
    
    Filmes* wonderWoman = [[Filmes alloc]init];
    wonderWoman.name = @"Mulher Maravilha";
    wonderWoman.year = @"2017";
    wonderWoman.resume = @"Filme de superheroi";
    wonderWoman.poster = [UIImage imageNamed:@"wonder"];
    [filmes2 addObject:wonderWoman];
    
    Filmes *spiderman = [[Filmes alloc]init];
    spiderman.name = @"Homem Aranha: De Volta ao Lar";
    spiderman.year = @"2017";
    spiderman.resume = @"Filme de Super heroi";
    spiderman.poster = [UIImage imageNamed:@"spidey"];
    [filmes2 addObject:spiderman];
    
    Filmes *carros = [[Filmes alloc]init];
    carros.name = @"Carros 3";
    carros.year = @"2017";
    carros.resume = @"Animação da Pixar";
    carros.poster = [UIImage imageNamed:@"cars"];
    [filmes2 addObject:carros];
    
    Filmes *terminator = [[Filmes alloc]init];
    terminator.name = @"O Exterminador do Futuro 2: O dia do Julgamento";
    terminator.year = @"1991";
    terminator.resume = @"Filme de ação";
    terminator.poster = [UIImage imageNamed:@"terminator"];
    [filmes2 addObject:terminator];
    
    Filmes *corra = [[Filmes alloc]init];
    corra.name = @"Corra!";
    corra.year = @"2017";
    corra.resume = @"Suspense";
    corra.poster = [UIImage imageNamed:@"corra"];
    [filmes2 addObject:corra];
    
    Filmes *justica = [[Filmes alloc]init];
    justica.name = @"Liga da Justiça";
    justica.year = @"2017";
    justica.resume = @"Filme de Super Heroi";
    justica.poster = [UIImage imageNamed:@"justica"];
    [filmes2 addObject:justica];
    
    Filmes *chumbo = [[Filmes alloc]init];
    chumbo.name = @"Chumbo Grosso";
    chumbo.year = @"2006";
    chumbo.resume = @"Comédia de Ação";
    chumbo.poster = [UIImage imageNamed:@"chumbo"];
    [filmes2 addObject:chumbo];
    
    Filmes *deadpool = [[Filmes alloc]init];
    deadpool.name = @"Deadpool";
    deadpool.year = @"2016";
    deadpool.resume = @"Comédia de Ação";
    deadpool.poster = [UIImage imageNamed:@"deadpool"];
    [filmes2 addObject:deadpool];
    
    Filmes *bela = [[Filmes alloc]init];
    bela.name = @"A Bela e a fera";
    bela.year = @"2017";
    bela.resume = @"Conto de Fadas";
    bela.poster = [UIImage imageNamed:@"beauty"];
    [filmes2 addObject:bela];
    
    Filmes *vingadores = [[Filmes alloc]init];
    vingadores.name = @"Os Vingadores: A Era de Ultron";
    vingadores.year = @"2015";
    vingadores.resume = @"Filme de Heroi";
    vingadores.poster = [UIImage imageNamed:@"avengers"];
    [filmes2 addObject:vingadores];
    
    Filmes *logan = [[Filmes alloc]init];
    logan.name = @"Logan";
    logan.year = @"2017";
    logan.resume = @"Filme de Heroi";
    logan.poster = [UIImage imageNamed:@"logan"];
    [filmes2 addObject:logan];
    
    Filmes *arrival = [[Filmes alloc]init];
    arrival.name = @"A Chegada";
    arrival.year = @"2016";
    arrival.resume = @"Aventura e suspense";
    arrival.poster = [UIImage imageNamed:@"arrival"];
    [filmes2 addObject:arrival];
    
    
    Filmes *imperio = [[Filmes alloc]init];
    imperio.name = @"Star Wars Episódio IV: O império Contra-Ataca";
    imperio.year = @"1980";
    imperio.resume = @"Aventura";
    imperio.poster = [UIImage imageNamed:@"imperio"];
    [filmes2 addObject:imperio];
    
    
    Filmes *chefinho = [[Filmes alloc]init];
    chefinho.name = @"O Poderoso Chefinho";
    chefinho.year = @"2017";
    chefinho.resume = @"Animação";
    chefinho.poster = [UIImage imageNamed:@"chefinho"];
    [filmes2 addObject:chefinho];
    
    return filmes2;
}

@end

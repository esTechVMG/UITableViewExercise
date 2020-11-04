//
//  ViewController.m
//  UITableExample
//
//  Created by A4-iMAC01 on 28/10/2020.
//

#import "ViewController.h"
#import "Cell.h"
#import "SegueViewController.h"
@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    urlStrings = @[
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2016/09/m-2-a-500-e1532431532729.png",
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2016/09/m-1-a-1-e1532431581761.png",
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2018/04/lenguajes-e1532431629277.png",
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2018/04/sistemas-e1532431749456.png",
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2018/04/realizacion-proyectos-e1532431796954.png",
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2016/06/m-9-e1532431837636.png",
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2018/04/empresas-e1532431874592.png",
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2018/04/programacion-multimedia-e1532432132422.png",
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2018/04/desarrollo-interfaces-e1532432249431.png",
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2018/04/programacion-multimedia-e1532432132422.png",
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2018/04/crm-e1532432180222.png",
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2018/04/base-datos-e1532432299558.png",
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2018/04/fundamentos-e1532432389632.png",
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2018/04/desarrollo-apps-e1532432420390.png",
        @"https://escuelaestech-107bd.kxcdn.com/wp-content/uploads/2018/04/centros-e1532432457861.png"
    ];
    titleText = @[
        @"Entornos de desarrollo para videojuegos multiplataforma: Unity",
        @"Programación en Java para Android",
        @"Lenguajes de marcas y sistemas de información",
        @"Sistemas interactivos y hardware abierto de última generación",
        @"Gestión de bases de datos",
        @"Formación y orientación laboral app",
        @"Empresa e iniciativa emprendedora",
        @"Programación multimedia para terminales iOs",
        @"Desarrollo de interfaces",
        @"Programación de servicios y procesos",
        @"Sistemas de gestión empresarial",
        @"Acceso a datos y cloud",
        @"Inglés técnico",
        @"Proyecto de desarrollo de aplicaciones",
        @"Formación en centros de trabajo",
    ];
    
    //NSData * imageData =[[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:urlStrings[0]]];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [titleText count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    Cell * cell = [tableView dequeueReusableCellWithIdentifier:@"ReusableCell"];
    
    [cell.name setText:[titleText objectAtIndex:indexPath.row]];
    [cell.number setText:[[NSString alloc]initWithFormat:@"Modulo %li",(long)indexPath.row+1]];
    NSData * imageData =[[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:urlStrings[indexPath.row]]];
    [cell.image setImage:[UIImage imageWithData:imageData]];
    return cell;
}
    //Height
    - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
        return 100;
    }


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIStoryboard * mainStoryboard =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
     SegueViewController * viewController= [mainStoryboard instantiateViewControllerWithIdentifier:@"InfoSegue"];
    viewController.number=[NSString stringWithFormat:@"Modulo: %li",indexPath.row+1];
    viewController.name=[titleText objectAtIndex:indexPath.row];
        [self presentViewController:viewController animated:YES completion:nil];
}
@end

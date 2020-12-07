import 'package:flutter/material.dart';

void main(){
   runApp(new MaterialApp(
   //retira a faixa do debbug da tela
     debugShowCheckedModeBanner: false,
      //chamo minha classe onde está a UI
     home: TelaLogin(),
   ));
}


//////////////////////////////////////////////////////////////////////////////////////////////////////
// Tela Home com os cursos

class TelaHome extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.pink[200],
        
        title: Text("Catalogo de Cursos", style: TextStyle(fontSize: 35.0)),
      ),
      body: Container(
        padding: EdgeInsets.all(23.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CartaoTelaHome(meuIcone: Icons.article, meuTexto:"Formulário", meuSubTexto: "Conheça mais sua empresa e ganhe dicas para melhorar seu negócio!!!", meuTipoCurso: TelaFormulario()),
            CartaoTelaHome(meuIcone: Icons.auto_stories, meuTexto:"Marketing Digital", meuSubTexto: "Curso da Udemy", meuTipoCurso: TelaDetalhesCursoMarketing()),
            CartaoTelaHome(meuIcone: Icons.auto_stories, meuTexto:"Gestão de Inovação", meuSubTexto: "Curso da Udemy", meuTipoCurso: TelaDetalhesCursoInovacao()),
            CartaoTelaHome(meuIcone: Icons.auto_stories, meuTexto:"RH Estrategista", meuSubTexto: "Curso da Udemy", meuTipoCurso: TelaDetalhesCursoRh()),
            CartaoTelaHome(meuIcone: Icons.auto_stories, meuTexto:"Gestão Financeira para pequenas e médias empresas", meuSubTexto: "Curso da Udemy", meuTipoCurso: TelaDetalhesCursoFinanceira()),

          ],
        ),     
        
      ),
    
    );
  }
} 



class CartaoTelaHome extends StatelessWidget{
  // iniciando construtor
  CartaoTelaHome({ this.meuIcone, this.meuTexto, this.meuSubTexto, this.meuTipoCurso });
  // definindo variaveis a usar no Card
  final IconData meuIcone;
  final String meuTexto;
  final String meuSubTexto;
  final Widget meuTipoCurso;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             ListTile(
              leading: Icon(meuIcone,
              size: 40.0, color: Colors.grey),
              title:  Text("\n"+meuTexto,
                style: TextStyle(fontSize: 21.0),
              ),
             subtitle: 
              Text("\n"+meuSubTexto),
            ),
            ButtonBarTheme(
              data: ButtonBarThemeData(buttonTextTheme: ButtonTextTheme.accent),
              child:  ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Detalhes'),
                    onPressed: (){
                      
                      Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  meuTipoCurso),
                );

                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


//////////////////////////////////////////////////////////////////////////////////////////////////////
// Tela de Login


class CorpoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding:EdgeInsets.all(20.0),
      
      child: Column(
        
        children: <Widget>[
               Divider(),
               TextField(
                autofocus: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.grey, fontSize: 30),
                decoration: InputDecoration(
                  labelText:"E-mail",
                  labelStyle: TextStyle(color: Colors.black),
                )
           ),  //TextField
              Divider(),
              TextField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.grey, fontSize: 30),
                decoration: InputDecoration(
                  labelText:"Senha",
                  labelStyle: TextStyle(color: Colors.black),
                )
              ),//TextField
          
          Divider(), Divider(), Divider(),
            
          RaisedButton(child: new Text('Login'), onPressed: () {
            
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaHome()),
                );
            
          }),
          
          Divider(), Divider(), Divider(),
          
          RaisedButton(child: new Text('Quero me cadastrar'), onPressed: () {
            
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCadastro()),
                );
            
          }),
          
          
          
          
          
        ],
      ),
    );
  }
}



class TelaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.pink[200],
      ),
         
      home: Scaffold(
        body: CorpoLogin(),
        appBar: AppBar(title: Text("Login", style: TextStyle(fontSize: 35.0)) ),
      
      ),
      
    );
  }
}







//////////////////////////////////////////////////////////////////////////////////////////////////////
// Tela de Cadastro


class CorpoCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding:EdgeInsets.all(20.0),
      
      child: Column(
        
        children: <Widget>[
               Divider(),
               TextField(
                autofocus: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.grey, fontSize: 30),
                decoration: InputDecoration(
                  labelText:"Nome completo",
                  labelStyle: TextStyle(color: Colors.black),
                )
           ),  //TextField
          Divider(), Divider(),
          TextField(
                autofocus: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.grey, fontSize: 30),
                decoration: InputDecoration(
                  labelText:"E-mail",
                  labelStyle: TextStyle(color: Colors.black),
                )
           ),  //TextField
          Divider(), Divider(),
          TextField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.grey, fontSize: 30),
                decoration: InputDecoration(
                  labelText:"Senha",
                  labelStyle: TextStyle(color: Colors.black),
                )
              ),//TextField
          Divider(), Divider(), Divider(),
          RaisedButton(child: new Text('Cadastrar'), onPressed: () {
            
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaHome()),
                );
            
          }),
          
          Divider(), Divider(), Divider(),
          
          RaisedButton(child: new Text('Já possuo conta'), onPressed: () {
            
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaLogin()),
                );
            
          }),
          
          
        ],
      ),
    );
  }
}



class TelaCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.pink[200],
      ),
         
      home: Scaffold(
        body: CorpoCadastro(),
        appBar: AppBar(title: Text("Cadastro de conta", style: TextStyle(fontSize: 35.0)) ),
      
      ),
      
    );
  }
}



//////////////////////////////////////////////////////////////////////////////////////////////////////
// Tela de Detalhes do Curso



class TelaDetalhesCursoMarketing extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.pink[200],
      ),
         
      home: Scaffold(
        body:  Container(
      
      padding:EdgeInsets.all(20.0),
      
      child: Column(
        
        children: [
          Text(""),
          Text("Nome do curso", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          Text("Marketing Digital - Udemy", style: TextStyle(fontSize: 20.0)),
          
          Text(""),
          Text(""),
          Text("Descrição do curso", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          Text("O curso é composto por 16 módulos para quem deseja aprender Marketing Digital de forma inteligente e eficaz. Explorando da melhor forma melhorias na performance e trazendo mais resultado aos negócios. Abordagem inicial com Fundamentos do Marketing Digital, Google Ads, Facebook Instagram, SEO e Email Marketing.", style: TextStyle(fontSize: 20.0)),
          
          Text(""),
          Text(""),
          Text("Link para os vídeos", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          Text("https://www.udemy.com/course/marketing-digital-completo/", style: TextStyle(fontSize: 20.0)),
          
          Text(""),
          Text(""),
          Text(""),
          
          
        ],
      ),
    ),
        appBar: AppBar(title: Text("Detalhes do curso", style: TextStyle(fontSize: 35.0)), 
                      leading: new IconButton(
          icon: new Icon(Icons.west),
          onPressed: () => Navigator.of(context).pop(),
        ), ),
      
      ),
      

 
    );
  }
}



class TelaDetalhesCursoInovacao extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.pink[200],
      ),
         
      home: Scaffold(
        body:  Container(
      
      padding:EdgeInsets.all(20.0),
      
      child: Column(
        
        children: [
          Text(""),
          Text("Nome do curso", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          Text("Gestão de Inovação - Udemy", style: TextStyle(fontSize: 20.0)),
          
          Text(""),
          Text(""),
          Text("Descrição do curso", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          Text("O curso tem como principal objetivo auxiliar o gestor a entender de que forma o mercado da inovação hoje é constituído. Analisa o fenômeno das parcerias organizacionais, dando subsídios às ações de crescimento organizacional.", style: TextStyle(fontSize: 20.0)),
          
          Text(""),
          Text(""),
          Text("Link para os vídeos", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          Text("https://www.udemy.com/course/estacio-gestao-de-inovacao/", style: TextStyle(fontSize: 20.0)),
          
          Text(""),
          Text(""),
          Text(""),
          
          
        ],
      ),
    ),
        appBar: AppBar(title: Text("Detalhes do curso", style: TextStyle(fontSize: 35.0)), 
                      leading: new IconButton(
          icon: new Icon(Icons.west),
          onPressed: () => Navigator.of(context).pop(),
        ), ),
      
      ),
      

 
    );
  }
}




class TelaDetalhesCursoRh extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.pink[200],
      ),
         
      home: Scaffold(
        body:  Container(
      
      padding:EdgeInsets.all(20.0),
      
      child: Column(
        
        children: [
          Text(""),
          Text("Nome do curso", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          Text("RH Estrategista - Udemy", style: TextStyle(fontSize: 20.0)),
          
          Text(""),
          Text(""),
          Text("Descrição do curso", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          Text("O curso tem como principal objetivo ensinar como ser um consultor interno de recursos humanos estrategista. Todo o conteúdo será apresentado de forma prática, tornando capaz para apoiar os gestores a melhorar os resultados da empresa, fazer com que todos os colaboradores estejam engajados em um único propósito. Apresentando  conceitos e ferramentas de gestão avançados.", style: TextStyle(fontSize: 20.0)),
          
          Text(""),
          Text(""),
          Text("Link para os vídeos", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          Text("https://www.udemy.com/course/marketing-digital-completo/", style: TextStyle(fontSize: 20.0)),
          
          Text(""),
          Text(""),
          Text(""),
          
          
        ],
      ),
    ),
        appBar: AppBar(title: Text("Detalhes do curso", style: TextStyle(fontSize: 35.0)), 
                      leading: new IconButton(
          icon: new Icon(Icons.west),
          onPressed: () => Navigator.of(context).pop(),
        ), ),
      
      ),
      

 
    );
  }
}



class TelaDetalhesCursoFinanceira extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.pink[200],
      ),
         
      home: Scaffold(
        body:  Container(
      
      padding:EdgeInsets.all(20.0),
      
      child: Column(
        
        children: [
          Text(""),
          Text("Nome do curso", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          Text("Gestão Financeira para pequenas e médias empresas", style: TextStyle(fontSize: 20.0)),
          
          Text(""),
          Text(""),
          Text("Descrição do curso", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          Text("O curso foi foi desenhado levando em consideração as maiores dificuldades encontradas por centenas de empresários dos mais diversos ramos. Apesar do nome Gestão Financeira, o curso promove mais do que finanças para empresas, este curso aborda de maneira prática cada um dos conceitos e faz com que qualquer pessoa saiba como colocá-los em prática para conseguir melhores resultados nas suas empresas.", style: TextStyle(fontSize: 20.0)),
          
          Text(""),
          Text(""),
          Text("Link para os vídeos", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          Text("https://www.udemy.com/course/gestao-financeira/", style: TextStyle(fontSize: 20.0)),
          
          Text(""),
          Text(""),
          Text(""),
          
          
        ],
      ),
    ),
        appBar: AppBar(title: Text("Detalhes do curso", style: TextStyle(fontSize: 35.0)), 
                      leading: new IconButton(
          icon: new Icon(Icons.west),
          onPressed: () => Navigator.of(context).pop(),
        ), ),
      
      ),
      

 
    );
  }
}




//////////////////////////////////////////////////////////////////////////////////////////////////////
// Tela de Formulario

class CorpoFormulario extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding:EdgeInsets.all(20.0),
      
      child: Column(
        
        children: [
          Divider(),
          
          Divider(), Divider(),
          Text("Nome da Empresa",style: TextStyle(fontSize: 20.0)),
          TextField(),
          
          Divider(), Divider(),
          Text("CNPJ",style: TextStyle(fontSize: 20.0)),
          TextField(),
          
          Divider(), Divider(),
          Text("Ramo de atuação",style: TextStyle(fontSize: 20.0)),
          TextField(),
          
          Divider(), Divider(),
          Text("Data da abertura da empresa",style: TextStyle(fontSize: 20.0)),
          TextField(),
          
          Divider(), Divider(),
          Text("A empresa possui uma reserva confortável de dinheiro para pagar as despesas correntes, sem surpresas inesperadas?",style: TextStyle(fontSize: 20.0)),
          TextField(),
          
          Divider(), Divider(),
          Text("A empresa ainda possui renda destinada a investimentos e inovação?",style: TextStyle(fontSize: 20.0)),
          TextField(),
          
          
          
          
          Divider(), Divider(), Divider(),
          
          RaisedButton(child: new Text('Enviar resposta'), onPressed: () {
            
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaHome()),
                );
            
          }),
          
          
        ],
      ),
    );
  }
}



class TelaFormulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.pink[200],
      ),
         
      home: Scaffold(
        body: CorpoFormulario(),
        appBar: AppBar(title: Text("Formulário", style: TextStyle(fontSize: 35.0)), 
                      leading: new IconButton(
          icon: new Icon(Icons.west),
          onPressed: () => Navigator.of(context).pop(),
        ),
                      ),
      
      ),
      
    );
  }
}









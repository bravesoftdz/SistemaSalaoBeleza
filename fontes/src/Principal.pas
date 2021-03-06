unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.ExtCtrls,
  Hlp.ConexaoDB,
  W7Classes, W7ListViewItems, W7Bars, W7Panels,
  Vcl.ImgList, Vcl.ActnList,
  Formulario.Inicial,
  Lib.Funcoes,
  Vcl.StdCtrls, Vcl.Menus, AdvToolBtn,
  Bas.SuperClasse, Vcl.ToolWin, AdvMenus, Data.DBXFirebird,
  Data.DB, Data.SqlExpr, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider,

  Formulario.CadastroProfissionais,
  Formulario.CadastroProfissoes,
  Formulario.CadastroBairros,
  Formulario.CadastroLogradouro,
  Formulario.CadastroMunicipios,
  Formulario.CadastroUF, Hlp.CapturaWebCam;

type
  TFrmPrincipal = class(TForm)
    W7InformationBar1: TW7InformationBar;
    ImageList1: TImageList;
    ActMenus: TActionList;
    ActCadastroClientes: TAction;
    ActTelaAgendaHorario: TAction;
    Timer1: TTimer;
    Panel2: TPanel;
    AdvToolButton1: TAdvToolButton;
    MnuCadastros: TPopupMenu;
    CadastrodeClientes1: TMenuItem;
    ActCadastroProfissionais: TAction;
    CadastrodeProfissionais1: TMenuItem;
    AdvToolButton3: TAdvToolButton;
    AdvToolButton4: TAdvToolButton;
    MnuSobre: TPopupMenu;
    MnuConfiguracoes: TPopupMenu;
    ActSobre: TAction;
    ActGeral: TAction;
    MnuAgenda: TPopupMenu;
    ActTelaAgendaHorario1: TMenuItem;
    AdvToolButton5: TAdvToolButton;
    AdvToolButton6: TAdvToolButton;
    AdvToolButton7: TAdvToolButton;
    Sobre: TMenuItem;
    Panel1: TPanel;
    W7TaskItem1: TW7TaskItem;
    W7TaskItem2: TW7TaskItem;
    PnlAreahoDeTraba: TPanel;
    ImgMenus: TImageList;
    Geral1: TMenuItem;
    ActCadastroBairros: TAction;
    ActCadastroMunicipios: TAction;
    ActCadastroLogradouros: TAction;
    ActCadastroProfissoes: TAction;
    ActCadastroUF: TAction;
    CadastrodeProfissoes1: TMenuItem;
    CadastrodeLogradouros1: TMenuItem;
    CadastrodeBairros1: TMenuItem;
    CadastroUFs1: TMenuItem;
    CadastrodeMunicipios1: TMenuItem;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ActCadastroClientesExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ActTelaAgendaHorarioExecute(Sender: TObject);
    procedure ActSobreExecute(Sender: TObject);
    procedure ActCadastroProfissionaisExecute(Sender: TObject);
    procedure CadastrodeProfisses1Click(Sender: TObject);
    procedure ActCadastroBairrosExecute(Sender: TObject);
    procedure ActCadastroMunicipiosExecute(Sender: TObject);
    procedure ActCadastroLogradourosExecute(Sender: TObject);
    procedure ActCadastroProfissoesExecute(Sender: TObject);
    procedure ActCadastroUFExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses
  Formulario.CadastroClientes,
  Formulario.AgendarHorarios,
  Formulario.Login,
  Formulario.Sobre,
  Formulario.Teste,

  Modelos.Cliente;


procedure TFrmPrincipal.ActSobreExecute(Sender: TObject);
begin
  TFuncoes.AbrirFormulario<TFrmTelaSobre>
end;



procedure TFrmPrincipal.ActTelaAgendaHorarioExecute(Sender: TObject);
begin
  TFuncoes.AbrirFormulario<TFrmTelaAgendaHorario>
end;



procedure TFrmPrincipal.CadastrodeProfisses1Click(Sender: TObject);
begin
  TFuncoes.AbrirFormulario<TFrmCadastroProfissoes>;
end;



procedure TFrmPrincipal.ActCadastroBairrosExecute(Sender: TObject);
begin
  TFuncoes.AbrirFormulario<TFrmCadastroBairros>;
end;



procedure TFrmPrincipal.ActCadastroClientesExecute(Sender: TObject);
begin
  TFuncoes.AbrirFormulario<TFrmTelaCadastroClientes>;
end;



procedure TFrmPrincipal.ActCadastroLogradourosExecute(Sender: TObject);
begin
  TFuncoes.AbrirFormulario<TFrmCadastroLogradouros>;
end;



procedure TFrmPrincipal.ActCadastroMunicipiosExecute(Sender: TObject);
begin
  TFuncoes.AbrirFormulario<TFrmCadastroMunicipios>;
end;



procedure TFrmPrincipal.ActCadastroProfissionaisExecute(Sender: TObject);
begin
  TFuncoes.AbrirFormulario<TFrmCadastroProfissionais>;

end;



procedure TFrmPrincipal.ActCadastroProfissoesExecute(Sender: TObject);
begin
  TFuncoes.AbrirFormulario<TFrmCadastroProfissoes>;
end;



procedure TFrmPrincipal.ActCadastroUFExecute(Sender: TObject);
begin
  TFuncoes.AbrirFormulario<TFrmCadastroUF>;
end;



procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
  Timer1.Enabled:= True;
end;



procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  //Essa deve ser a primeira chamada da fun��o FormCreate
  TFrmTelaInicial.TelaInical;
  TFrmTelaInicial.AtualizarProgresso( 'Iniciando m�dulo principal', 05, 20);



  TFrmTelaInicial.AtualizarProgresso( 'Conectando no DB', 20, 20);
  TConexaoDB.ConectarDB( Sistema.ConexaoDB );


  TFrmTelaInicial.AtualizarProgresso( 'Carregando m�dulos', 40, 20);



  TFrmTelaInicial.AtualizarProgresso( 'Verificando agendamento on-line', 80, 20 );



  // Essa deve ser a �ltima chamada da fun��o FormCreate
  TFrmTelaInicial.AtualizarProgresso( 'Iniciando sistema', 100, 20 );
  TFrmTelaInicial.TelaInical;
end;



procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:= False;

  TFuncoes.AbrirFormulario<TFrmTelaLogin>;

  Sistema.DimencoesAberturaTela.DistanciaEsquerda:=
    ( Screen.Width - PnlAreahoDeTraba.Width );

  Sistema.DimencoesAberturaTela.LarguraPadrao:=
    PnlAreahoDeTraba.Width;

  Sistema.DimencoesAberturaTela.AlturaPadrao:=
    PnlAreahoDeTraba.Height;

  Sistema.DimencoesAberturaTela.AlturaConteiner:=
    PnlAreahoDeTraba.Top + (Screen.Height - Self.Height);

end;


end.

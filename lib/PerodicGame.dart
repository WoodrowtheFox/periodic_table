class PerodicGame extends Application {
    PerodicGame(){
        gamepane = new Pane();
    }

    Object choice = "";

    int total = 0;
    int s = 0;
    int p = 0;
    int d = 0;
    int f = 0;

    int check_total =0;
    int check_s = 0;
    int check_p = 0;
    int check_d = 0;
    int check_f = 0;

    private Pane gamepane;
    Circle circ1 = new Circle(50, RED);
    Circle circ2 = new Circle(50, RED);
    Circle circ3 = new Circle(50, RED);
    Circle circ4 = new Circle(50, RED);
    Circle circ5 = new Circle(50, RED);
    Circle circ6 = new Circle(50, RED);
    Circle circ8 = new Circle(50, RED);
    Circle circ9 = new Circle(50, RED);
    Circle circ10 = new Circle(50, RED);
    Circle circ11 = new Circle(50, RED);
    Circle circ12 = new Circle(50, RED);
    Circle circ13 = new Circle(50, RED);
    Circle circ14 = new Circle(50, RED);
    Circle circ15 = new Circle(50, RED);
    Circle circ16 = new Circle(50, RED);
    Circle circ17 = new Circle(50, RED);
    Circle circ18 = new Circle(50, RED);
    Circle circ19 = new Circle(50, RED);
    Circle circ20 = new Circle(50, RED);

    Label sshell = new Label();
    Label pshell = new Label();
    Label dshell = new Label();
    Label fshell = new Label();

    String elements[] = { "Hydrogen","Helium", "Lithium", "Beryllium", "Boron", "Carbon", "Nitrogen", "Oxygen", "Fluorine", "Neon",
            "Sodium", "Magnesium", "Aluminum", "Silicon", "Phosphorus", "Sulfur", "Chlorine", "Argon", "Potassium", "Calcium", "Scandium",
            "Titanium", "Vanadium", "Chromium()", "Manganese", "Iron", "Cobalt", "Nickel", "Copper", "Zinc", "Gallium", "Germanium", "Arsenic",
            "Selenium", "Bromine", "Krypton", "Rubidium", "Strontium", "Yttrium", "Zirconium", "Niobium", "Molybdenum", "Technetium",
            "Ruthenium","Rhodium", "Palladium","Silver", "Cadmium", "Indium", "Tin",
            "Antimony", "Tellurium", "Iodine", "Xenon", "Cesium", "Barium", "Lanthanum", "Cerium", "Praseodymium", "Neodymium", "Promethium",
            "Samarium", "Europium", "Gadolinium", "Terbium", "Dysprosium", "Holmium", "Erbium", "Thulium", "Ytterbium", "Lutetium", "Hafnium",
            "Tantalum", "Tungsten", "Rhenium", "Osmium", "Iridium", "Platinum", "Gold", "Mercury" ,"Thallium", "Lead", "Bismuth", "Polonium", "Astatine", "Radon",
            "Francium", "Radium", "Actinium", "Thorium", "Protactinium", "Uranium",
            "Neptunium","Plutonium","Americium","Curium","Berkelium","Californium","Einsteinium","Fermium","Mendelevium","Nobelium","Lawrencium","Rutherfordium",
            "Dubnium","Seaborgium","Bohrium","Hassium","Meitnerium","Darmstadtium","Roentgenium","Copernicium","Nihonium","Flerovium","Moscovium","Livermorium",
            "Tennessine","Oganesson"};
    ComboBox elementbox = new ComboBox<>(FXCollections.observableArrayList(elements));

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage stage) throws IOException{
        Pane placeholder = new Pane();
        gamepane.getChildren().clear();
        if(gamepane.getScene() != null){
            gamepane.getScene().setRoot(placeholder);}
        Scene scene = new Scene(gamepane, 1000, 1000);

        elementbox.setLayoutX(10);

        Button draw = new Button("Check Answer");
        draw.setLayoutX(10);
        draw.setLayoutY(40);

        Label correct = new Label("You answer was: ");
        sshell.setText("s = " + s);
        pshell.setText("p = " + p);
        dshell.setText("d = " + d);
        fshell.setText("f = " + f);

        HBox mybox = new HBox();
        mybox.getChildren().addAll(sshell, pshell, dshell, fshell, correct);
        mybox.setLayoutY(8);
        mybox.setLayoutX(150);
        mybox.setSpacing(10);

        circ1.setLayoutX(100);
        circ1.setLayoutY(150);
        Label one = new Label("1s");
        one.setFont(Font.font(30));
        one.setLayoutX(85);
        one.setLayoutY(135);
        circ1.setOnMouseClicked(this::drawings);

        circ2.setLayoutX(200);
        circ2.setLayoutY(150);
        Label two = new Label("2s");
        two.setFont(Font.font(30));
        two.setLayoutX(185);
        two.setLayoutY(135);
        circ2.setOnMouseClicked(this::drawings);

        circ3.setLayoutX(300);
        circ3.setLayoutY(150);
        Label three = new Label("2p");
        three.setFont(Font.font(30));
        three.setLayoutX(285);
        three.setLayoutY(135);
        circ3.setOnMouseClicked(this::drawingp);

        circ4.setLayoutX(400);
        circ4.setLayoutY(150);
        Label four = new Label("3s");
        four.setFont(Font.font(30));
        four.setLayoutX(385);
        four.setLayoutY(135);
        circ4.setOnMouseClicked(this::drawings);

        circ5.setLayoutX(500);
        circ5.setLayoutY(150);
        Label five = new Label("3p");
        five.setFont(Font.font(30));
        five.setLayoutX(485);
        five.setLayoutY(135);
        circ5.setOnMouseClicked(this::drawingp);

        circ6.setLayoutX(100);
        circ6.setLayoutY(300);
        Label six = new Label("3d");
        six.setFont(Font.font(30));
        six.setLayoutX(85);
        six.setLayoutY(285);
        circ6.setOnMouseClicked(this::drawingd);


        circ8.setLayoutX(200);
        circ8.setLayoutY(300);
        Label eight = new Label("4s");
        eight.setFont(Font.font(30));
        eight.setLayoutX(185);
        eight.setLayoutY(285);
        circ8.setOnMouseClicked(this::drawings);

        circ9.setLayoutX(300);
        circ9.setLayoutY(300);
        Label nine = new Label("4p");
        nine.setFont(Font.font(30));
        nine.setLayoutX(285);
        nine.setLayoutY(285);
        circ9.setOnMouseClicked(this::drawingp);

        circ10.setLayoutX(400);
        circ10.setLayoutY(300);
        Label ten = new Label("4d");
        ten.setFont(Font.font(30));
        ten.setLayoutX(385);
        ten.setLayoutY(285);
        circ10.setOnMouseClicked(this::drawingd);

        circ11.setLayoutX(500);
        circ11.setLayoutY(300);
        Label eleven = new Label("4f");
        eleven.setFont(Font.font(30));
        eleven.setLayoutX(485);
        eleven.setLayoutY(285);
        circ11.setOnMouseClicked(this::drawingf);

        circ12.setLayoutX(100);
        circ12.setLayoutY(450);
        Label tweleve = new Label("5s");
        tweleve.setFont(Font.font(30));
        tweleve.setLayoutX(85);
        tweleve.setLayoutY(435);
        circ12.setOnMouseClicked(this::drawings);

        circ13.setLayoutX(200);
        circ13.setLayoutY(450);
        Label thirteen = new Label("5p");
        thirteen.setFont(Font.font(30));
        thirteen.setLayoutX(185);
        thirteen.setLayoutY(435);
        circ13.setOnMouseClicked(this::drawingp);

        circ14.setLayoutX(300);
        circ14.setLayoutY(450);
        Label fourteen = new Label("5d");
        fourteen.setFont(Font.font(30));
        fourteen.setLayoutX(285);
        fourteen.setLayoutY(435);
        circ14.setOnMouseClicked(this::drawingd);

        circ15.setLayoutX(400);
        circ15.setLayoutY(450);
        Label fiveteen = new Label("5f");
        fiveteen.setFont(Font.font(30));
        fiveteen.setLayoutX(385);
        fiveteen.setLayoutY(435);
        circ15.setOnMouseClicked(this::drawingf);

        circ16.setLayoutX(500);
        circ16.setLayoutY(450);
        Label sixteen = new Label("6s");
        sixteen.setFont(Font.font(30));
        sixteen.setLayoutX(485);
        sixteen.setLayoutY(435);
        circ16.setOnMouseClicked(this::drawings);

        circ17.setLayoutX(100);
        circ17.setLayoutY(600);
        Label seventeen = new Label("6p");
        seventeen.setFont(Font.font(30));
        seventeen.setLayoutX(85);
        seventeen.setLayoutY(585);
        circ17.setOnMouseClicked(this::drawingp);

        circ18.setLayoutX(200);
        circ18.setLayoutY(600);
        Label eightteen = new Label("6d");
        eightteen.setFont(Font.font(30));
        eightteen.setLayoutX(185);
        eightteen.setLayoutY(585);
        circ18.setOnMouseClicked(this::drawingd);

        circ19.setLayoutX(300);
        circ19.setLayoutY(600);
        Label nineteen = new Label("7s");
        nineteen.setFont(Font.font(30));
        nineteen.setLayoutX(285);
        nineteen.setLayoutY(585);
        circ19.setOnMouseClicked(this::drawings);

        circ20.setLayoutX(400);
        circ20.setLayoutY(600);
        Label twenty = new Label("7p");
        twenty.setFont(Font.font(30));
        twenty.setLayoutX(385);
        twenty.setLayoutY(585);
        circ20.setOnMouseClicked(this::drawingp);

        draw.setOnAction(event -> {
            choice = elementbox.getValue();
        if(checkanswer()){correct.setText("You answer was: correct");}
        else correct.setText("You answer was: incorrect");});
        gamepane.getChildren().addAll(elementbox,mybox, draw,circ5,circ4,circ3,circ2,circ1, circ6,circ8,circ9,circ10,
                circ11, circ12,circ13,circ14,circ15,circ16,circ17,circ18,circ19,circ20,one,two,three,four,five,six,eight,nine,ten,
                eleven,tweleve,thirteen,fourteen,fiveteen,sixteen,seventeen,eightteen,nineteen,twenty);
        stage.setTitle("Game Page");
        stage.setScene(scene);
        stage.show();
    }
    public void drawings(MouseEvent e){
        double x = e.getSceneX();
        double y = e.getSceneY();
        Circle electron = new Circle(10, WHITE);
        electron.setLayoutX(x);
        electron.setLayoutY(y);
        gamepane.getChildren().add(electron);
        total += 1;
        s += 1;
        sshell.setText("s = " + s);
    }
    public void drawingp(MouseEvent e){
        double x = e.getSceneX();
        double y = e.getSceneY();
        Circle electron = new Circle(10, WHITE);
        electron.setLayoutX(x);
        electron.setLayoutY(y);
        gamepane.getChildren().add(electron);
        total += 1;
        p += 1;
        pshell.setText("p = " + p);
    }
    public void drawingd(MouseEvent e){
        double x = e.getSceneX();
        double y = e.getSceneY();
        Circle electron = new Circle(10, WHITE);
        electron.setLayoutX(x);
        electron.setLayoutY(y);
        gamepane.getChildren().add(electron);
        total += 1;
        d += 1;
        dshell.setText("d = " + d);
    }
    public void drawingf(MouseEvent e){
        double x = e.getSceneX();
        double y = e.getSceneY();
        Circle electron = new Circle(10, WHITE);
        electron.setLayoutX(x);
        electron.setLayoutY(y);
        gamepane.getChildren().add(electron);
        total += 1;
        f += 1;
        fshell.setText("f = " + f);
    }
    public boolean checkanswer(){
        ElementFactory factory = new ElementFactory();
        Elements element = factory.stringfactory(elementbox.getValue().toString());
        HashMap<String,Integer> hashmap = element.getshelltotals();
        check_s = hashmap.get("1s") + factory.checknull(hashmap, "2s") + factory.checknull(hashmap, "3s") + factory.checknull(hashmap, "4s") + factory.checknull(hashmap, "5s") +
                factory.checknull(hashmap,"6s") + factory.checknull(hashmap,"7s");
        check_p = factory.checknull(hashmap,"2p") + factory.checknull(hashmap,"3p") + factory.checknull(hashmap,"4p") + factory.checknull(hashmap,"5p") + factory.checknull(hashmap,"6p") +
                factory.checknull(hashmap,"7p");
        check_d = factory.checknull(hashmap,"3d") + factory.checknull(hashmap,"4d") +factory.checknull(hashmap,"5d") + factory.checknull(hashmap,"6d");
        check_f = factory.checknull(hashmap,"4f") + factory.checknull(hashmap,"5f");
        if(s==check_s){check_total += 1;}
        if(p==check_p){check_total += 1;}
        if(d==check_d){check_total += 1;}
        if(f==check_f){check_total += 1;}

        if(check_total == 4){check_total = 0; return true;}
        else check_total = 0; return false;
    }
}



class Homepage extends Application {

    PerodicTable table = new PerodicTable();
    PerodicGame game = new PerodicGame();

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage stage) {
        Pane mainpane = new Pane();
        Scene scene = new Scene(mainpane, 1000, 1000);

        VBox buttonbox = new VBox();

        Button periodic = new Button("Chemistry Basics");
        periodic.setMinHeight(100);
        periodic.setMinWidth(150);

        Button periodicgamne = new Button("Chemistry Game");
        periodicgamne.setMinHeight(100);
        periodicgamne.setMinWidth(150);

        periodic.setOnAction(this::perodictable);
        periodicgamne.setOnAction(this::perodicgames);

        buttonbox.getChildren().addAll(periodic, periodicgamne);
        mainpane.getChildren().add(buttonbox);
        stage.setTitle("Main Page");
        stage.setScene(scene);
        stage.show();
    }
    public void perodictable(ActionEvent e){
        Stage stage = new Stage();
        try{table.start(stage);} catch (IOException ex) {
            throw new RuntimeException(ex);
        }
    }
    public void perodicgames(ActionEvent e) {
        Stage stage = new Stage();
        try{game.start(stage);} catch (IOException ex) {
            throw new RuntimeException(ex);
        }
    }
}

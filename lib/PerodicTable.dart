import 'package:flutter/material.dart';

/**
 * This is the main class for the perdoic table to be displayed and interacted with
 */
class PerodicTable extends StatefulWidget{
    const PerodicTable({super.key});
    FeedbackWriter write = new FeedbackWriter();
    ElementFactory myfactory = new ElementFactory();
    private Elements element;
    private int correctanswer;
    private int atomicnum;

    @Override
    void start(Stage stage) throws IOException {
        Pane mainpane = new Pane();
        Scene scene = new Scene(mainpane, 1700, 1000);

        VBox group0 = new VBox();
        VBox group1 = new VBox();
        VBox group2 = new VBox();
        VBox group3 = new VBox();
        VBox group4 = new VBox();
        VBox group5 = new VBox();
        VBox group6 = new VBox();
        VBox group7 = new VBox();
        VBox group8 = new VBox();
        VBox group9 = new VBox();
        VBox group10 = new VBox();
        VBox group11 = new VBox();
        VBox group12 = new VBox();
        VBox group13 = new VBox();
        VBox group14 = new VBox();
        VBox group15 = new VBox();
        VBox group16 = new VBox();
        VBox group17 = new VBox();
        VBox group18 = new VBox();

        Label periodone = new Label("1");
        Label periodtwo = new Label("2");
        Label periodthree = new Label("3");
        Label periodfour = new Label("4");
        Label periodfive = new Label("5");
        Label periodsix = new Label("6");
        Label periodseven = new Label("7");

        Label groupone = new Label("1");
        Label grouptwo = new Label("2");
        Label groupthree = new Label("3");
        Label groupfour = new Label("4");
        Label groupfive = new Label("5");
        Label groupsix = new Label("6");
        Label groupseven = new Label("7");
        Label groupeight = new Label("8");
        Label groupnine = new Label("9");
        Label groupten = new Label("10");
        Label groupeleven = new Label("11");
        Label grouptwelve = new Label("12");
        Label groupthirteen = new Label("13");
        Label groupfourteen = new Label("14");
        Label groupfifteen = new Label("15");
        Label groupsixteen = new Label("16");
        Label groupseventeen = new Label("17");
        Label groupeightteen = new Label("18");

        ImageView myview0 = new ImageView("Color-base.png");
        myview0.setFitWidth(238);
        myview0.setFitHeight(150);
        Button Color = new Button();
        Color.setGraphic(myview0);

        ImageView myview1 = new ImageView("H-base.png");
        myview1.setFitWidth(70);
        myview1.setFitHeight(70);
        Button H = new Button();
        H.setUserData(1);
        H.setGraphic(myview1);

        ImageView myview2 = new ImageView("Li-base.png");
        myview2.setFitWidth(70);
        myview2.setFitHeight(70);
        Button Li = new Button();
        Li.setGraphic(myview2);

        ImageView myview3 = new ImageView("Na-base.png");
        myview3.setFitWidth(70);
        myview3.setFitHeight(70);
        Button Na = new Button();
        Na.setGraphic(myview3);

        ImageView myview4 = new ImageView("K-base.png");
        myview4.setFitWidth(70);
        myview4.setFitHeight(70);
        Button K = new Button();
        K.setGraphic(myview4);

        ImageView myview5 = new ImageView("Rb-base.png");
        myview5.setFitWidth(70);
        myview5.setFitHeight(70);
        Button Rb = new Button();
        Rb.setGraphic(myview5);

        ImageView myview6 = new ImageView("Cs-base.png");
        myview6.setFitWidth(70);
        myview6.setFitHeight(70);
        Button Cs = new Button();
        Cs.setGraphic(myview6);

        ImageView myview7 = new ImageView("Fr-base.png");
        myview7.setFitWidth(70);
        myview7.setFitHeight(70);
        Button Fr = new Button();
        Fr.setGraphic(myview7);

        ImageView myview8 = new ImageView("Be-base.png");
        myview8.setFitWidth(70);
        myview8.setFitHeight(70);
        Button Be = new Button();
        Be.setGraphic(myview8);

        ImageView myview9 = new ImageView("Mg-base.png");
        myview9.setFitWidth(70);
        myview9.setFitHeight(70);
        Button Mg = new Button();
        Mg.setGraphic(myview9);

        ImageView myview10 = new ImageView("Ca-base.png");
        myview10.setFitWidth(70);
        myview10.setFitHeight(70);
        Button Ca = new Button();
        Ca.setGraphic(myview10);

        ImageView myview11 = new ImageView("Sr-base.png");
        myview11.setFitWidth(70);
        myview11.setFitHeight(70);
        Button Sr = new Button();
        Sr.setGraphic(myview11);

        ImageView myview12 = new ImageView("Ba-base.png");
        myview12.setFitWidth(70);
        myview12.setFitHeight(70);
        Button Ba = new Button();
        Ba.setGraphic(myview12);

        ImageView myview13 = new ImageView("Ra-base.png");
        myview13.setFitWidth(70);
        myview13.setFitHeight(70);
        Button Ra = new Button();
        Ra.setGraphic(myview13);

        ImageView myview14 = new ImageView("Sc-base.png");
        myview14.setFitWidth(70);
        myview14.setFitHeight(70);
        Button Sc = new Button();
        Sc.setGraphic(myview14);

        ImageView myview15 = new ImageView("Y-base.png");
        myview15.setFitWidth(70);
        myview15.setFitHeight(70);
        Button Y = new Button();
        Y.setGraphic(myview15);

        ImageView myview16 = new ImageView("Lanth-base.png");
        myview16.setFitWidth(70);
        myview16.setFitHeight(70);
        Button Lanth = new Button();
        Lanth.setGraphic(myview16);

        ImageView myview17 = new ImageView("Acitides-base.png");
        myview17.setFitWidth(70);
        myview17.setFitHeight(70);
        Button Acid = new Button();
        Acid.setGraphic(myview17);

        ImageView myview18 = new ImageView("Ti-base.png");
        myview18.setFitWidth(70);
        myview18.setFitHeight(70);
        Button Ti = new Button();
        Ti.setGraphic(myview18);

        ImageView myview19 = new ImageView("Zr-base.png");
        myview19.setFitWidth(70);
        myview19.setFitHeight(70);
        Button Zr = new Button();
        Zr.setGraphic(myview19);

        ImageView myview20 = new ImageView("Hf-base.png");
        myview20.setFitWidth(70);
        myview20.setFitHeight(70);
        Button Hf = new Button();
        Hf.setGraphic(myview20);

        ImageView myview21= new ImageView("Rf-base.png");
        myview21.setFitWidth(70);
        myview21.setFitHeight(70);
        Button Rf = new Button();
        Rf.setGraphic(myview21);

        ImageView myview22 = new ImageView("La-base.png");
        myview22.setFitWidth(70);
        myview22.setFitHeight(70);
        Button La = new Button();
        La.setGraphic(myview22);

        ImageView myview23 = new ImageView("Ac-base.png");
        myview23.setFitWidth(70);
        myview23.setFitHeight(70);
        Button Ac = new Button();
        Ac.setGraphic(myview23);

        ImageView myview24 = new ImageView("V-base.png");
        myview24.setFitWidth(70);
        myview24.setFitHeight(70);
        Button V = new Button();
        V.setGraphic(myview24);

        ImageView myview25 = new ImageView("Nb-base.png");
        myview25.setFitWidth(70);
        myview25.setFitHeight(70);
        Button Nb = new Button();
        Nb.setGraphic(myview25);

        ImageView myview26 = new ImageView("Ta-base.png");
        myview26.setFitWidth(70);
        myview26.setFitHeight(70);
        Button Ta = new Button();
        Ta.setGraphic(myview26);

        ImageView myview27 = new ImageView("Db-base.png");
        myview27.setFitWidth(70);
        myview27.setFitHeight(70);
        Button Db = new Button();
        Db.setGraphic(myview27);

        ImageView myview28 = new ImageView("Ce-base.png");
        myview28.setFitWidth(70);
        myview28.setFitHeight(70);
        Button Ce = new Button();
        Ce.setGraphic(myview28);

        ImageView myview29 = new ImageView("Th-base.png");
        myview29.setFitWidth(70);
        myview29.setFitHeight(70);
        Button Th = new Button();
        Th.setGraphic(myview29);

        ImageView myview30 = new ImageView("Cr-base.png");
        myview30.setFitWidth(70);
        myview30.setFitHeight(70);
        Button Cr = new Button();
        Cr.setGraphic(myview30);

        ImageView myview31 = new ImageView("Mo-base.png");
        myview31.setFitWidth(70);
        myview31.setFitHeight(70);
        Button Mo = new Button();
        Mo.setGraphic(myview31);

        ImageView myview32 = new ImageView("W-base.png");
        myview32.setFitWidth(70);
        myview32.setFitHeight(70);
        Button W = new Button();
        W.setGraphic(myview32);

        ImageView myview33 = new ImageView("Sg-base.png");
        myview33.setFitWidth(70);
        myview33.setFitHeight(70);
        Button Sg = new Button();
        Sg.setGraphic(myview33);

        ImageView myview34 = new ImageView("Pr-base.png");
        myview34.setFitWidth(70);
        myview34.setFitHeight(70);
        Button Pr = new Button();
        Pr.setGraphic(myview34);

        ImageView myview35 = new ImageView("Pa-base.png");
        myview35.setFitWidth(70);
        myview35.setFitHeight(70);
        Button Pa = new Button();
        Pa.setGraphic(myview35);

        ImageView myview36 = new ImageView("Mn-base.png");
        myview36.setFitWidth(70);
        myview36.setFitHeight(70);
        Button Mn = new Button();
        Mn.setGraphic(myview36);

        ImageView myview37 = new ImageView("Tc-base.png");
        myview37.setFitWidth(70);
        myview37.setFitHeight(70);
        Button Tc = new Button();
        Tc.setGraphic(myview37);

        ImageView myview38 = new ImageView("Re-base.png");
        myview38.setFitWidth(70);
        myview38.setFitHeight(70);
        Button Re = new Button();
        Re.setGraphic(myview38);

        ImageView myview39 = new ImageView("Bh-base.png");
        myview39.setFitWidth(70);
        myview39.setFitHeight(70);
        Button Bh = new Button();
        Bh.setGraphic(myview39);

        ImageView myview40 = new ImageView("Nd-base.png");
        myview40.setFitWidth(70);
        myview40.setFitHeight(70);
        Button Nd = new Button();
        Nd.setGraphic(myview40);

        ImageView myview41 = new ImageView("U-base.png");
        myview41.setFitWidth(70);
        myview41.setFitHeight(70);
        Button U = new Button();
        U.setGraphic(myview41);

        ImageView myview42 = new ImageView("Fe-base.png");
        myview42.setFitWidth(70);
        myview42.setFitHeight(70);
        Button Fe = new Button();
        Fe.setGraphic(myview42);

        ImageView myview43 = new ImageView("Ru-base.png");
        myview43.setFitWidth(70);
        myview43.setFitHeight(70);
        Button Ru = new Button();
        Ru.setGraphic(myview43);

        ImageView myview44 = new ImageView("Os-base.png");
        myview44.setFitWidth(70);
        myview44.setFitHeight(70);
        Button Os = new Button();
        Os.setGraphic(myview44);

        ImageView myview45 = new ImageView("Hs-base.png");
        myview45.setFitWidth(70);
        myview45.setFitHeight(70);
        Button Hs = new Button();
        Hs.setGraphic(myview45);

        ImageView myview46 = new ImageView("Pm-base.png");
        myview46.setFitWidth(70);
        myview46.setFitHeight(70);
        Button Pm = new Button();
        Pm.setGraphic(myview46);

        ImageView myview47 = new ImageView("Np-base.png");
        myview47.setFitWidth(70);
        myview47.setFitHeight(70);
        Button Np = new Button();
        Np.setGraphic(myview47);

        ImageView myview48 = new ImageView("Co-base.png");
        myview48.setFitWidth(70);
        myview48.setFitHeight(70);
        Button Co = new Button();
        Co.setGraphic(myview48);

        ImageView myview49 = new ImageView("Rh-base.png");
        myview49.setFitWidth(70);
        myview49.setFitHeight(70);
        Button Rh = new Button();
        Rh.setGraphic(myview49);

        ImageView myview50 = new ImageView("Ir-base.png");
        myview50.setFitWidth(70);
        myview50.setFitHeight(70);
        Button Ir = new Button();
        Ir.setGraphic(myview50);

        ImageView myview51 = new ImageView("Mt-base.png");
        myview51.setFitWidth(70);
        myview51.setFitHeight(70);
        Button Mt = new Button();
        Mt.setGraphic(myview51);

        ImageView myview52 = new ImageView("Sm-base.png");
        myview52.setFitWidth(70);
        myview52.setFitHeight(70);
        Button Sm = new Button();
        Sm.setGraphic(myview52);

        ImageView myview53 = new ImageView("Pu-base.png");
        myview53.setFitWidth(70);
        myview53.setFitHeight(70);
        Button Pu = new Button();
        Pu.setGraphic(myview53);

        ImageView myview54 = new ImageView("Ni-base.png");
        myview54.setFitWidth(70);
        myview54.setFitHeight(70);
        Button Ni = new Button();
        Ni.setGraphic(myview54);

        ImageView myview55 = new ImageView("Pd-base.png");
        myview55.setFitWidth(70);
        myview55.setFitHeight(70);
        Button Pd = new Button();
        Pd.setGraphic(myview55);

        ImageView myview56 = new ImageView("Pt-base.png");
        myview56.setFitWidth(70);
        myview56.setFitHeight(70);
        Button Pt = new Button();
        Pt.setGraphic(myview56);

        ImageView myview57 = new ImageView("Ds-base.png");
        myview57.setFitWidth(70);
        myview57.setFitHeight(70);
        Button Ds = new Button();
        Ds.setGraphic(myview57);

        ImageView myview58 = new ImageView("Eu-base.png");
        myview58.setFitWidth(70);
        myview58.setFitHeight(70);
        Button Eu = new Button();
        Eu.setGraphic(myview58);

        ImageView myview59 = new ImageView("Am-base.png");
        myview59.setFitWidth(70);
        myview59.setFitHeight(70);
        Button Am = new Button();
        Am.setGraphic(myview59);

        ImageView myview60 = new ImageView("Cu-base.png");
        myview60.setFitWidth(70);
        myview60.setFitHeight(70);
        Button Cu = new Button();
        Cu.setGraphic(myview60);

        ImageView myview61 = new ImageView("Ag-base.png");
        myview61.setFitWidth(70);
        myview61.setFitHeight(70);
        Button Ag = new Button();
        Ag.setGraphic(myview61);

        ImageView myview62 = new ImageView("Au-base.png");
        myview62.setFitWidth(70);
        myview62.setFitHeight(70);
        Button Au = new Button();
        Au.setGraphic(myview62);

        ImageView myview63 = new ImageView("Rg-base.png");
        myview63.setFitWidth(70);
        myview63.setFitHeight(70);
        Button Rg = new Button();
        Rg.setGraphic(myview63);

        ImageView myview64 = new ImageView("Gd-base.png");
        myview64.setFitWidth(70);
        myview64.setFitHeight(70);
        Button Gd = new Button();
        Gd.setGraphic(myview64);

        ImageView myview65 = new ImageView("Cm-base.png");
        myview65.setFitWidth(70);
        myview65.setFitHeight(70);
        Button Cm = new Button();
        Cm.setGraphic(myview65);

        ImageView myview66 = new ImageView("Zn-base.png");
        myview66.setFitWidth(70);
        myview66.setFitHeight(70);
        Button Zn = new Button();
        Zn.setGraphic(myview66);

        ImageView myview67 = new ImageView("Cd-base.png");
        myview67.setFitWidth(70);
        myview67.setFitHeight(70);
        Button Cd = new Button();
        Cd.setGraphic(myview67);

        ImageView myview68 = new ImageView("Hg-base.png");
        myview68.setFitWidth(70);
        myview68.setFitHeight(70);
        Button Hg = new Button();
        Hg.setGraphic(myview68);

        ImageView myview69 = new ImageView("Cn-base.png");
        myview69.setFitWidth(70);
        myview69.setFitHeight(70);
        Button Cn = new Button();
        Cn.setGraphic(myview69);

        ImageView myview70 = new ImageView("Tb-base.png");
        myview70.setFitWidth(70);
        myview70.setFitHeight(70);
        Button Tb = new Button();
        Tb.setGraphic(myview70);

        ImageView myview71 = new ImageView("Bk-base.png");
        myview71.setFitWidth(70);
        myview71.setFitHeight(70);
        Button Bk = new Button();
        Bk.setGraphic(myview71);

        ImageView myview72 = new ImageView("B-base.png");
        myview72.setFitWidth(70);
        myview72.setFitHeight(70);
        Button B = new Button();
        B.setGraphic(myview72);

        ImageView myview73 = new ImageView("Al-base.png");
        myview73.setFitWidth(70);
        myview73.setFitHeight(70);
        Button Al = new Button();
        Al.setGraphic(myview73);

        ImageView myview74 = new ImageView("Ga-base.png");
        myview74.setFitWidth(70);
        myview74.setFitHeight(70);
        Button Ga = new Button();
        Ga.setGraphic(myview74);

        ImageView myview75 = new ImageView("In-base.png");
        myview75.setFitWidth(70);
        myview75.setFitHeight(70);
        Button In = new Button();
        In.setGraphic(myview75);

        ImageView myview76 = new ImageView("Tl-base.png");
        myview76.setFitWidth(70);
        myview76.setFitHeight(70);
        Button Tl = new Button();
        Tl.setGraphic(myview76);

        ImageView myview77 = new ImageView("Nh-base.png");
        myview77.setFitWidth(70);
        myview77.setFitHeight(70);
        Button Nh = new Button();
        Nh.setGraphic(myview77);

        ImageView myview78 = new ImageView("Dy-base.png");
        myview78.setFitWidth(70);
        myview78.setFitHeight(70);
        Button Dy = new Button();
        Dy.setGraphic(myview78);

        ImageView myview79 = new ImageView("Cf-base.png");
        myview79.setFitWidth(70);
        myview79.setFitHeight(70);
        Button Cf = new Button();
        Cf.setGraphic(myview79);

        ImageView myview80 = new ImageView("C-base.png");
        myview80.setFitWidth(70);
        myview80.setFitHeight(70);
        Button C = new Button();
        C.setGraphic(myview80);

        ImageView myview81 = new ImageView("Si-base.png");
        myview81.setFitWidth(70);
        myview81.setFitHeight(70);
        Button Si = new Button();
        Si.setGraphic(myview81);

        ImageView myview82 = new ImageView("Ge-base.png");
        myview82.setFitWidth(70);
        myview82.setFitHeight(70);
        Button Ge = new Button();
        Ge.setGraphic(myview82);

        ImageView myview83 = new ImageView("Sn-base.png");
        myview83.setFitWidth(70);
        myview83.setFitHeight(70);
        Button Sn = new Button();
        Sn.setGraphic(myview83);

        ImageView myview84 = new ImageView("Pb-base.png");
        myview84.setFitWidth(70);
        myview84.setFitHeight(70);
        Button Pb = new Button();
        Pb.setGraphic(myview84);

        ImageView myview85 = new ImageView("Fl-base.png");
        myview85.setFitWidth(70);
        myview85.setFitHeight(70);
        Button Fl = new Button();
        Fl.setGraphic(myview85);

        ImageView myview86 = new ImageView("Ho-base.png");
        myview86.setFitWidth(70);
        myview86.setFitHeight(70);
        Button Ho = new Button();
        Ho.setGraphic(myview86);

        ImageView myview87 = new ImageView("Es-base.png");
        myview87.setFitWidth(70);
        myview87.setFitHeight(70);
        Button Es = new Button();
        Es.setGraphic(myview87);

        ImageView myview88 = new ImageView("N-base.png");
        myview88.setFitWidth(70);
        myview88.setFitHeight(70);
        Button N = new Button();
        N.setGraphic(myview88);

        ImageView myview89 = new ImageView("P-base.png");
        myview89.setFitWidth(70);
        myview89.setFitHeight(70);
        Button P = new Button();
        P.setGraphic(myview89);

        ImageView myview90 = new ImageView("As-base.png");
        myview90.setFitWidth(70);
        myview90.setFitHeight(70);
        Button As = new Button();
        As.setGraphic(myview90);

        ImageView myview91 = new ImageView("Sb-base.png");
        myview91.setFitWidth(70);
        myview91.setFitHeight(70);
        Button Sb = new Button();
        Sb.setGraphic(myview91);

        ImageView myview92 = new ImageView("Bi-base.png");
        myview92.setFitWidth(70);
        myview92.setFitHeight(70);
        Button Bi = new Button();
        Bi.setGraphic(myview92);

        ImageView myview93 = new ImageView("Mc-base.png");
        myview93.setFitWidth(70);
        myview93.setFitHeight(70);
        Button Mc = new Button();
        Mc.setGraphic(myview93);

        ImageView myview94 = new ImageView("Er-base.png");
        myview94.setFitWidth(70);
        myview94.setFitHeight(70);
        Button Er = new Button();
        Er.setGraphic(myview94);

        ImageView myview95 = new ImageView("Fm-base.png");
        myview95.setFitWidth(70);
        myview95.setFitHeight(70);
        Button Fm = new Button();
        Fm.setGraphic(myview95);

        ImageView myview96 = new ImageView("O-base.png");
        myview96.setFitWidth(70);
        myview96.setFitHeight(70);
        Button O = new Button();
        O.setGraphic(myview96);

        ImageView myview97 = new ImageView("S-base.png");
        myview97.setFitWidth(70);
        myview97.setFitHeight(70);
        Button S = new Button();
        S.setGraphic(myview97);

        ImageView myview98 = new ImageView("Se-base.png");
        myview98.setFitWidth(70);
        myview98.setFitHeight(70);
        Button Se = new Button();
        Se.setGraphic(myview98);

        ImageView myview99 = new ImageView("Te-base.png");
        myview99.setFitWidth(70);
        myview99.setFitHeight(70);
        Button Te = new Button();
        Te.setGraphic(myview99);

        ImageView myview100 = new ImageView("Po-base.png");
        myview100.setFitWidth(70);
        myview100.setFitHeight(70);
        Button Po = new Button();
        Po.setGraphic(myview100);

        ImageView myview101 = new ImageView("Lv-base.png");
        myview101.setFitWidth(70);
        myview101.setFitHeight(70);
        Button Lv = new Button();
        Lv.setGraphic(myview101);

        ImageView myview102 = new ImageView("Tm-base.png");
        myview102.setFitWidth(70);
        myview102.setFitHeight(70);
        Button Tm = new Button();
        Tm.setGraphic(myview102);

        ImageView myview103 = new ImageView("Md-base.png");
        myview103.setFitWidth(70);
        myview103.setFitHeight(70);
        Button Md = new Button();
        Md.setGraphic(myview103);

        ImageView myview104 = new ImageView("F-base.png");
        myview104.setFitWidth(70);
        myview104.setFitHeight(70);
        Button F = new Button();
        F.setGraphic(myview104);

        ImageView myview105 = new ImageView("Cl-base.png");
        myview105.setFitWidth(70);
        myview105.setFitHeight(70);
        Button Cl = new Button();
        Cl.setGraphic(myview105);

        ImageView myview106 = new ImageView("Br-base.png");
        myview106.setFitWidth(70);
        myview106.setFitHeight(70);
        Button Br = new Button();
        Br.setGraphic(myview106);

        ImageView myview107 = new ImageView("I-base.png");
        myview107.setFitWidth(70);
        myview107.setFitHeight(70);
        Button I = new Button();
        I.setGraphic(myview107);

        ImageView myview108 = new ImageView("At-base.png");
        myview108.setFitWidth(70);
        myview108.setFitHeight(70);
        Button At = new Button();
        At.setGraphic(myview108);

        ImageView myview109 = new ImageView("Ts-base.png");
        myview109.setFitWidth(70);
        myview109.setFitHeight(70);
        Button Ts = new Button();
        Ts.setGraphic(myview109);

        ImageView myview110 = new ImageView("Yb-base.png");
        myview110.setFitWidth(70);
        myview110.setFitHeight(70);
        Button Yb = new Button();
        Yb.setGraphic(myview110);

        ImageView myview111 = new ImageView("No-base.png");
        myview111.setFitWidth(70);
        myview111.setFitHeight(70);
        Button No = new Button();
        No.setGraphic(myview111);

        ImageView myview112 = new ImageView("He-base.png");
        myview112.setFitWidth(70);
        myview112.setFitHeight(70);
        Button He = new Button();
        He.setGraphic(myview112);

        ImageView myview113 = new ImageView("Ne-base.png");
        myview113.setFitWidth(70);
        myview113.setFitHeight(70);
        Button Ne = new Button();
        Ne.setGraphic(myview113);

        ImageView myview114 = new ImageView("Ar-base.png");
        myview114.setFitWidth(70);
        myview114.setFitHeight(70);
        Button Ar = new Button();
        Ar.setGraphic(myview114);

        ImageView myview115 = new ImageView("Kr-base.png");
        myview115.setFitWidth(70);
        myview115.setFitHeight(70);
        Button Kr = new Button();
        Kr.setGraphic(myview115);

        ImageView myview116 = new ImageView("Xe-base.png");
        myview116.setFitWidth(70);
        myview116.setFitHeight(70);
        Button Xe = new Button();
        Xe.setGraphic(myview116);

        ImageView myview117 = new ImageView("Rn-base.png");
        myview117.setFitWidth(70);
        myview117.setFitHeight(70);
        Button Rn = new Button();
        Rn.setGraphic(myview117);

        ImageView myview118 = new ImageView("Og-base.png");
        myview118.setFitWidth(70);
        myview118.setFitHeight(70);
        Button Og = new Button();
        Og.setGraphic(myview118);

        ImageView myview119 = new ImageView("Lu-base.png");
        myview119.setFitWidth(70);
        myview119.setFitHeight(70);
        Button Lu = new Button();
        Lu.setGraphic(myview119);

        ImageView myview120 = new ImageView("Lr-base.png");
        myview120.setFitWidth(70);
        myview120.setFitHeight(70);
        Button Lr = new Button();
        Lr.setGraphic(myview120);

        Button Feedback = new Button("Feedback");
        Feedback.setMinWidth(50);
        Feedback.setMinHeight(30);

        group0.getChildren().addAll(periodone,periodtwo,periodthree,periodfour,periodfive,periodsix,periodseven);
        group0.setLayoutY(40);
        group0.setSpacing(60);
        group0.setLayoutX(0);

        group1.getChildren().addAll(groupone,H,Li,Na,K,Rb,Cs,Fr,Color, Feedback);
        group1.setLayoutX(10);

        group2.getChildren().addAll(grouptwo,Be,Mg,Ca,Sr,Ba,Ra);
        group2.setLayoutX(95);
        group2.setLayoutY(78);

        group3.getChildren().addAll(groupthree,Sc,Y,Lanth,Acid);
        group3.setLayoutX(180);
        group3.setLayoutY(234);

        group4.getChildren().addAll(groupfour,Ti,Zr,Hf,Rf,La,Ac);
        group4.setLayoutX(265);
        group4.setLayoutY(234);

        group5.getChildren().addAll(groupfive,V,Nb,Ta,Db,Ce,Th);
        group5.setLayoutX(350);
        group5.setLayoutY(234);

        group6.getChildren().addAll(groupsix,Cr,Mo,W,Sg,Pr,Pa);
        group6.setLayoutX(435);
        group6.setLayoutY(234);

        group7.getChildren().addAll(groupseven,Mn,Tc,Re,Bh,Nd,U);
        group7.setLayoutX(520);
        group7.setLayoutY(234);

        group8.getChildren().addAll(groupeight,Fe,Ru,Os,Hs,Pm,Np);
        group8.setLayoutX(605);
        group8.setLayoutY(234);

        group9.getChildren().addAll(groupnine,Co,Rh,Ir,Mt,Sm,Pu);
        group9.setLayoutX(690);
        group9.setLayoutY(234);

        group10.getChildren().addAll(groupten,Ni,Pd,Pt,Ds,Eu,Am);
        group10.setLayoutX(775);
        group10.setLayoutY(234);

        group11.getChildren().addAll(groupeleven,Cu,Ag,Au,Rg,Gd,Cm);
        group11.setLayoutX(860);
        group11.setLayoutY(234);

        group12.getChildren().addAll(grouptwelve,Zn,Cd,Hg,Cn,Tb,Bk);
        group12.setLayoutX(945);
        group12.setLayoutY(234);

        group13.getChildren().addAll(groupthirteen,B,Al,Ga,In,Tl,Nh,Dy,Cf);
        group13.setLayoutX(1030);
        group13.setLayoutY(78);

        group14.getChildren().addAll(groupfourteen,C,Si,Ge,Sn,Pb,Fl,Ho,Es);
        group14.setLayoutX(1115);
        group14.setLayoutY(78);

        group15.getChildren().addAll(groupfifteen,N,P,As,Sb,Bi,Mc,Er,Fm);
        group15.setLayoutX(1200);
        group15.setLayoutY(78);

        group16.getChildren().addAll(groupsixteen,O,S,Se,Te,Po,Lv,Tm,Md);
        group16.setLayoutX(1285);
        group16.setLayoutY(78);

        group17.getChildren().addAll(groupseventeen,F,Cl,Br,I,At,Ts,Yb,No);
        group17.setLayoutX(1370);
        group17.setLayoutY(78);

        group18.getChildren().addAll(groupeightteen,He,Ne,Ar,Kr,Xe,Rn,Og,Lu,Lr);
        group18.setLayoutX(1455);
        Feedback.setOnAction(this::feedback);
        H.setOnAction(event -> {atomicnum = 1; elementbutton();});
        He.setOnAction(event -> {atomicnum = 2; elementbutton();});
        Li.setOnAction(event -> {atomicnum = 3; elementbutton();});
        Be.setOnAction(event -> {atomicnum = 4; elementbutton();});
        B.setOnAction(event -> {atomicnum = 5; elementbutton();});
        C.setOnAction(event -> {atomicnum = 6; elementbutton();});
        N.setOnAction(event -> {atomicnum = 7; elementbutton();});
        O.setOnAction(event -> {atomicnum = 8; elementbutton();});
        F.setOnAction(event -> {atomicnum = 9; elementbutton();});
        Ne.setOnAction(event -> {atomicnum = 10; elementbutton();});
        Na.setOnAction(event -> {atomicnum = 11; elementbutton();});
        Mg.setOnAction(event -> {atomicnum = 12; elementbutton();});
        Al.setOnAction(event -> {atomicnum = 13; elementbutton();});
        Si.setOnAction(event -> {atomicnum = 14; elementbutton();});
        P.setOnAction(event -> {atomicnum = 15; elementbutton();});
        S.setOnAction(event -> {atomicnum = 16; elementbutton();});
        Cl.setOnAction(event -> {atomicnum = 17; elementbutton();});
        Ar.setOnAction(event -> {atomicnum = 18; elementbutton();});
        K.setOnAction(event -> {atomicnum = 19; elementbutton();});
        Ca.setOnAction(event -> {atomicnum = 20; elementbutton();});
        Sc.setOnAction(event -> {atomicnum = 21; elementbutton();});
        Ti.setOnAction(event -> {atomicnum = 22; elementbutton();});
        V.setOnAction(event -> {atomicnum = 23; elementbutton();});
        Cr.setOnAction(event -> {atomicnum = 24; elementbutton();});
        Mn.setOnAction(event -> {atomicnum = 25; elementbutton();});
        Fe.setOnAction(event -> {atomicnum = 26; elementbutton();});
        Co.setOnAction(event -> {atomicnum = 27; elementbutton();});
        Ni.setOnAction(event -> {atomicnum = 28; elementbutton();});
        Cu.setOnAction(event -> {atomicnum = 29; elementbutton();});
        Zn.setOnAction(event -> {atomicnum = 30; elementbutton();});
        Ga.setOnAction(event -> {atomicnum = 31; elementbutton();});
        Ge.setOnAction(event -> {atomicnum = 32; elementbutton();});
        As.setOnAction(event -> {atomicnum = 33; elementbutton();});
        Se.setOnAction(event -> {atomicnum = 34; elementbutton();});
        Br.setOnAction(event -> {atomicnum = 35; elementbutton();});
        Kr.setOnAction(event -> {atomicnum = 36; elementbutton();});
        Rb.setOnAction(event -> {atomicnum = 37; elementbutton();});
        Sr.setOnAction(event -> {atomicnum = 38; elementbutton();});
        Y.setOnAction(event -> {atomicnum = 39; elementbutton();});
        Zr.setOnAction(event -> {atomicnum = 40; elementbutton();});
        Nb.setOnAction(event -> {atomicnum = 41; elementbutton();});
        Mo.setOnAction(event -> {atomicnum = 42; elementbutton();});
        Tc.setOnAction(event -> {atomicnum = 43; elementbutton();});
        Ru.setOnAction(event -> {atomicnum = 44; elementbutton();});
        Rh.setOnAction(event -> {atomicnum = 45; elementbutton();});
        Pd.setOnAction(event -> {atomicnum = 46; elementbutton();});
        Ag.setOnAction(event -> {atomicnum = 47; elementbutton();});
        Cd.setOnAction(event -> {atomicnum = 48; elementbutton();});
        In.setOnAction(event -> {atomicnum = 49; elementbutton();});
        Sn.setOnAction(event -> {atomicnum = 50; elementbutton();});
        Sb.setOnAction(event -> {atomicnum = 51; elementbutton();});
        Te.setOnAction(event -> {atomicnum = 52; elementbutton();});
        I.setOnAction(event -> {atomicnum = 53; elementbutton();});
        Xe.setOnAction(event -> {atomicnum = 54; elementbutton();});
        Cs.setOnAction(event -> {atomicnum = 55; elementbutton();});
        Ba.setOnAction(event -> {atomicnum = 56; elementbutton();});
        La.setOnAction(event -> {atomicnum = 57; elementbutton();});
        Ce.setOnAction(event -> {atomicnum = 58; elementbutton();});
        Pr.setOnAction(event -> {atomicnum = 59; elementbutton();});
        Nd.setOnAction(event -> {atomicnum = 60; elementbutton();});
        Pm.setOnAction(event -> {atomicnum = 61; elementbutton();});
        Sm.setOnAction(event -> {atomicnum = 62; elementbutton();});
        Eu.setOnAction(event -> {atomicnum = 63; elementbutton();});
        Gd.setOnAction(event -> {atomicnum = 64; elementbutton();});
        Tb.setOnAction(event -> {atomicnum = 65; elementbutton();});
        Dy.setOnAction(event -> {atomicnum = 66; elementbutton();});
        Ho.setOnAction(event -> {atomicnum = 67; elementbutton();});
        Er.setOnAction(event -> {atomicnum = 68; elementbutton();});
        Tm.setOnAction(event -> {atomicnum = 69; elementbutton();});
        Yb.setOnAction(event -> {atomicnum = 70; elementbutton();});
        Lu.setOnAction(event -> {atomicnum = 71; elementbutton();});
        Hf.setOnAction(event -> {atomicnum = 72; elementbutton();});
        Ta.setOnAction(event -> {atomicnum = 73; elementbutton();});
        W.setOnAction(event -> {atomicnum = 74; elementbutton();});
        Re.setOnAction(event -> {atomicnum = 75; elementbutton();});
        Os.setOnAction(event -> {atomicnum = 76; elementbutton();});
        Ir.setOnAction(event -> {atomicnum = 77; elementbutton();});
        Pt.setOnAction(event -> {atomicnum = 78; elementbutton();});
        Au.setOnAction(event -> {atomicnum = 79; elementbutton();});
        Hg.setOnAction(event -> {atomicnum = 80; elementbutton();});
        Tl.setOnAction(event -> {atomicnum = 81; elementbutton();});
        Pb.setOnAction(event -> {atomicnum = 82; elementbutton();});
        Bi.setOnAction(event -> {atomicnum = 83; elementbutton();});
        Po.setOnAction(event -> {atomicnum = 84; elementbutton();});
        At.setOnAction(event -> {atomicnum = 85; elementbutton();});
        Rn.setOnAction(event -> {atomicnum = 86; elementbutton();});
        Fr.setOnAction(event -> {atomicnum = 87; elementbutton();});
        Ra.setOnAction(event -> {atomicnum = 88; elementbutton();});
        Ac.setOnAction(event -> {atomicnum = 89; elementbutton();});
        Th.setOnAction(event -> {atomicnum = 90; elementbutton();});
        Pa.setOnAction(event -> {atomicnum = 91; elementbutton();});
        U.setOnAction(event -> {atomicnum = 92; elementbutton();});
        Np.setOnAction(event -> {atomicnum = 93; elementbutton();});
        Pu.setOnAction(event -> {atomicnum = 94; elementbutton();});
        Am.setOnAction(event -> {atomicnum = 95; elementbutton();});
        Cm.setOnAction(event -> {atomicnum = 96; elementbutton();});
        Bk.setOnAction(event -> {atomicnum = 97; elementbutton();});
        Cf.setOnAction(event -> {atomicnum = 98; elementbutton();});
        Es.setOnAction(event -> {atomicnum = 99; elementbutton();});
        Fm.setOnAction(event -> {atomicnum = 100; elementbutton();});
        Md.setOnAction(event -> {atomicnum = 101; elementbutton();});
        No.setOnAction(event -> {atomicnum = 102; elementbutton();});
        Lr.setOnAction(event -> {atomicnum = 103; elementbutton();});
        Rf.setOnAction(event -> {atomicnum = 104; elementbutton();});
        Db.setOnAction(event -> {atomicnum = 105; elementbutton();});
        Sg.setOnAction(event -> {atomicnum = 106; elementbutton();});
        Bh.setOnAction(event -> {atomicnum = 107; elementbutton();});
        Hs.setOnAction(event -> {atomicnum = 108; elementbutton();});
        Mt.setOnAction(event -> {atomicnum = 109; elementbutton();});
        Ds.setOnAction(event -> {atomicnum = 110; elementbutton();});
        Rg.setOnAction(event -> {atomicnum = 111; elementbutton();});
        Cn.setOnAction(event -> {atomicnum = 112; elementbutton();});
        Nh.setOnAction(event -> {atomicnum = 113; elementbutton();});
        Fl.setOnAction(event -> {atomicnum = 114; elementbutton();});
        Mc.setOnAction(event -> {atomicnum = 115; elementbutton();});
        Lv.setOnAction(event -> {atomicnum = 116; elementbutton();});
        Ts.setOnAction(event -> {atomicnum = 117; elementbutton();});
        Og.setOnAction(event -> {atomicnum = 118; elementbutton();});
        Color.setOnAction(this::formulas);

        mainpane.getChildren().addAll(group1,group2,group3,group4,group5,group6,group7,group8,group9,group10,group11,group12,group13,group14,group15,group16,group17,group18,group0);
        stage.setTitle("Periodic Table");
        stage.setScene(scene);
        stage.show();
    }
    public static void main(String[] args) {launch();}

    /**
     * The new JavaFX stage for all elements
     */
    public void elementbutton(){
        element = myfactory.numberfactory(atomicnum);
        HBox box = new HBox();
        VBox box2 = new VBox();

        Stage stage = new Stage();
        Pane elementpane = new Pane();
        Scene scene = new Scene(elementpane, 1000, 1000);

        ImageView elementimage = new ImageView(element.getImagename());
        elementimage.setFitWidth(500);
        elementimage.setFitHeight(500);

        Label period = new Label("Period: " + element.getPeriodnumber());
        Label group = new Label("Group: " + element.getGroupnumber());
        Label valence = new Label("Valence Electrons: " + element.getvalenceelectrons());
        Label amass = new Label("Atomic Mass: " + element.getAtomicmass());
        Label anum = new Label("Atomic Number: " + element.getAtomicnumber());
        Label family = new Label("Family Name: " + element.getFamilyname());
        Label ions = new Label("Ionic State: " + element.getionicstate());
        Label uses = new Label("Common Uses: " + element.getcommonuses());

        period.setFont(Font.font(15));
        group.setFont(Font.font(15));
        valence.setFont(Font.font(15));
        amass.setFont(Font.font(15));
        anum.setFont(Font.font(15));
        family.setFont(Font.font(15));
        ions.setFont(Font.font(15));
        uses.setFont(Font.font(15));

        Button quiz = new Button("Take a Quiz?");
        quiz.setFont(Font.font(15));

        box.getChildren().addAll(elementimage);
        box.setLayoutX(250);

        box2.getChildren().addAll(period,group,valence,amass,anum,family, ions,uses,quiz);
        box2.setLayoutX(400);
        box2.setLayoutY(500);
        box2.setSpacing(30);

        quiz.setOnAction(this::quiz);

        elementpane.getChildren().addAll(box,box2);
        stage.setTitle(element.getElementname());
        stage.setScene(scene);
        stage.show();
    }
    /**
     * What allows for users to take a quiz of the element
     * @param e The actionevent
     */
    public void quiz(ActionEvent e){
        correctanswer = 0;
        Stage stage = new Stage();
        Pane elementpane = new Pane();
        Scene scene = new Scene(elementpane, 1000, 1000);

        VBox H = new VBox();
        VBox V = new VBox();

        Button answercheck = new Button("Check you Answers");

        Label check = new Label("Correct Answers : 0 ");
        Label period = new Label("Period: ");
        Label group = new Label("Group: ");
        Label valence = new Label("Valence Electrons: ");
        Label amass = new Label("Atomic Mass: ");
        Label anum = new Label("Atomic Number: ");
        Label family = new Label("Family Name: ");
        Label ion = new Label("Ionic State: ");

        Integer atomicnumbers[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34,
        35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
        71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95 , 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107
        , 108, 109, 110, 112, 113, 114, 115, 116, 117, 118};
        ComboBox anumbox = new ComboBox<>(FXCollections.observableArrayList(atomicnumbers));
        Integer numbers[] = {1, 2, 3, 4, 5, 6, 7};
        Integer vnumbers[] = {1, 2, 3, 4, 5, 6, 7, 8};
        ComboBox periodbox = new ComboBox<>(FXCollections.observableArrayList(numbers));
        ComboBox valencebox = new ComboBox<>(FXCollections.observableArrayList(vnumbers));
        Integer groupnumbers[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18};
        ComboBox groupbox = new ComboBox<>(FXCollections.observableArrayList(groupnumbers));
        String names[] = {"Alkali Metal", "Metalloid","Nonmetal", "Actinide", "Halogen", "Alkaline Earth Metal","Reactive Non-Metal","Transition Metal",
                "Noble Gas","Post-Transition Metal", "Lanthanide" ,"Unknown properties"};
        ComboBox familybox = new ComboBox<>(FXCollections.observableArrayList(names));
        Float amassnumbers[] = {1.008f , 4.00260f , 7.0f, 9.012183f, 10.81f, 12.011f, 14.007f, 15.999f, 18.99840316f, 20.180f, 22.9897693f, 24.305f, 26.981538f,
                28.085f, 30.97376200f, 32.07f, 35.45f, 39.9f, 39.0983f, 40.08f, 44.95591f, 47.867f, 50.9415f, 51.996f, 54.93804f, 55.84f, 58.93319f, 58.693f, 63.55f,
                65.4f, 69.723f, 72.63f, 74.92159f, 78.97f, 79.90f, 83.80f, 85.468f, 87.62f, 88.90584f, 91.22f, 92.90637f, 95.95f, 96.90636f, 101.1f, 102.9055f, 106.42f,
                107.868f, 112.41f, 114.818f, 118.71f, 121.760f, 127.6f, 126.9045f, 131.29f, 132.9054520f, 137.33f, 138.9055f, 140.116f, 140.90766f, 144.24f, 144.91276f,
                150.4f, 151.964f, 157.25f, 158.92535f, 162.500f, 164.93033f, 167.26f, 168.93422f, 173.05f, 174.9667f, 178.49f, 180.9479f, 183.84f, 186.207f, 190.2f,
                192.22f, 195.08f, 196.96657f, 200.59f, 204.383f, 207.0f, 208.98040f, 208.98243f, 209.98715f, 222.01758f, 223.01973f, 226.02541f, 227.02775f, 232.038f,
                231.03588f, 238.0289f, 237.048172f, 244.06420f, 243.061380f, 247.07035f, 247.07031f, 251.07959f, 252.0830f, 257.09511f, 258.09843f, 259.10100f, 266.120f,
                267.122f, 	268.126f, 269.128f, 270.133f, 269.1336f, 277.154f, 282.166f, 282.169f, 286.179f, 286.182f, 290.192f, 290.196f, 293.205f, 294.211f, 	295.216f};
        ComboBox ammassnumber = new ComboBox<>(FXCollections.observableArrayList(amassnumbers));
        Integer Ionicstates[] = {-3, -2, -1, 0, 1, 2, 3, 4, 5, 6};
        ComboBox ionicnumbers = new ComboBox<>(FXCollections.observableArrayList(Ionicstates));


        V.getChildren().addAll(check, period, group, valence, amass, anum, family,ion);
        H.getChildren().addAll(answercheck, periodbox, groupbox,valencebox, ammassnumber, anumbox, familybox, ionicnumbers);

        V.setLayoutX(20);
        V.setSpacing(28);

        H.setLayoutX(120);
        H.setSpacing(20);

        answercheck.setOnAction(a -> {
            check.setText("Correct Answers : 0 ");
            Integer anum1 = element.getAtomicnumber();
            Integer period1 = element.getPeriodnumber();
            Integer group1 = element.getGroupnumber();
            Integer valence1 = element.getvalenceelectrons();
            String family1 = element.getFamilyname();
            Float amass1 = element.getAtomicmass();
            Integer ion1 = element.getionicstate();
            if(anumbox.getValue() == anum1){check.setText("Correct Answers : " + (correctanswer = correctanswer + 1));}
            if(periodbox.getValue() == period1){check.setText("Correct Answers : " + (correctanswer = correctanswer + 1));}
            if(groupbox.getValue() == group1){check.setText("Correct Answers : " + (correctanswer = correctanswer + 1));}
            if(valencebox.getValue() == valence1){check.setText("Correct Answers : " + (correctanswer = correctanswer + 1));}
            if(familybox.getValue() == family1){check.setText("Correct Answers : " + (correctanswer = correctanswer + 1));}
            if(ammassnumber.getValue() != null){if(ammassnumber.getValue().equals(amass1)){check.setText("Correct Answers : " + (correctanswer = correctanswer + 1));}}
            if(ionicnumbers.getValue() == (ion1)){check.setText("Correct Answers : " + (correctanswer = correctanswer + 1));}
            correctanswer = 0;
        });

        elementpane.getChildren().addAll(V,H);
        stage.setTitle(element.getElementname() + " Quiz");
        stage.setScene(scene);
        stage.show();
    }
    public void feedback(ActionEvent e){
        Stage stage = new Stage();
        Pane feedbackpane = new Pane();
        Scene scene = new Scene(feedbackpane, 1000, 1000);

        TextField ticketname = new TextField("Please enter your name");
        TextField issueorsuggest = new TextField("Please state your comment");
        Button file = new Button("Submit Feedback");
        issueorsuggest.setMinHeight(150);
        issueorsuggest.setMinWidth(300);

        VBox mybox = new VBox();
        mybox.setSpacing(30);
        mybox.getChildren().addAll(ticketname, issueorsuggest, file);

        file.setOnAction(c -> write.writefeedback(ticketname.getText(), issueorsuggest.getText()));

        feedbackpane.getChildren().add(mybox);
        stage.setTitle("Feedback Box");
        stage.setScene(scene);
        stage.show();
    }
    public void formulas(ActionEvent e){
        Stage stage = new Stage();
        Pane formulapane = new Pane();
        Scene scene = new Scene(formulapane, 1000, 1000);

        Button answercheck = new Button("Check you Answers");

        Label check = new Label("Correct Answers : 0 ");
        Label Avogadro = new Label("Avogadro Constant");
        HBox hboxa = new HBox();
        HBox hboxb = new HBox();

        String aformulas[] = {"6.022 x 10^23"};
        ComboBox formulabox = new ComboBox<>(FXCollections.observableArrayList(aformulas));

        answercheck.setOnAction(a -> {
            check.setText("Correct Answers : 0 ");
            if(formulabox.getValue() == ("6.022 x 10^23")){check.setText("Correct Answers : " + (correctanswer = correctanswer + 1));}
            correctanswer = 0;
        });
        hboxb.getChildren().addAll(check, answercheck);

        hboxa.getChildren().addAll(Avogadro, formulabox);
        hboxa.setLayoutY(30);

        formulapane.getChildren().addAll(hboxb, hboxa);
        stage.setTitle("Formulas Quiz");
        stage.setScene(scene);
        stage.show();

        Elements elements[] = {new Hydrogen() , new Helium(), new Lithium(), new Beryllium(), new Boron(), new Carbon(), new Nitrogen(), new Oxygen(), new Fluorine(),new Neon(),
                new Sodium(), new Magnesium(), new Aluminum(), new Silicon(), new Phosphorus(), new Sulfur(), new Chlorine(), new Argon(), new Potassium(), new Calcium(), new Scandium(),
                new Titanium(), new Vanadium(), new Chromium(), new Manganese(), new Iron(), new Cobalt(), new Nickel(), new Copper(), new Zinc(), new Gallium(), new Germanium(), new Arsenic(),
                new Selenium(), new Bromine(), new Krypton(), new Rubidium(), new Strontium(), new Yttrium(), new Zirconium(), new Niobium(), new Molybdenum(), new Technetium(),
                new Ruthenium(),new Rhodium(), new Palladium(),new Silver(), new Cadmium(), new Indium(), new Tin(),
                new Antimony(), new Tellurium(), new Iodine(), new Xenon(), new Cesium(), new Barium(), new Lanthanum(), new Cerium(), new Praseodymium(), new Neodymium(), new Promethium(),
                new Samarium(), new Europium(), new Gadolinium(), new Terbium(), new Dysprosium(), new Holmium(), new Erbium(),new Thulium(), new Ytterbium(), new Lutetium(), new Hafnium(),
                new Tantalum(), new Tungsten(), new Rhenium(), new Osmium(), new Iridium(), new Platinum(),new Gold(), new Mercury(),new Thallium(), new Lead(),new Bismuth(), new Polonium(), new Astatine(), new Radon(),
                new Francium(), new Radium(), new Actinium(), new Thorium(), new Protactinium(), new Uranium(),
                new Neptunium(),new Plutonium(),new Americium(),new Curium(),new Berkelium(), new Californium(),new Einsteinium(),new Fermium(), new Mendelevium(),new Nobelium(),new Lawrencium(),new Rutherfordium(),
                new Dubnium(), new Seaborgium(),new Bohrium(),new Hassium(),new Meitnerium(),new Darmstadtium(),new Roentgenium(), new Copernicium(),new Nihonium(),new Flerovium(), new Moscovium(),new Livermorium(),
                new Tennessine(),new Oganesson()};
    }
}


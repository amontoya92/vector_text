import processing.pdf.*;
boolean OUTPUT_PDF = false;
String input = "{}";  
float spacing = 55;

void setup () {
  if ( OUTPUT_PDF ) {
    size( 1200, 200, PDF, "output.pdf" );
  } 
  else {
    size( 1200, 200 );
  }
}

void draw () {

  background( 255 );                        

  if ( OUTPUT_PDF ) {
    beginRecord( PDF, "output.pdf" );
  }

  drawGenerativeText( input, 15, height/2 );

  if ( OUTPUT_PDF ) {
    OUTPUT_PDF = false;
    println( "Finished." );
    endRecord();
    exit();
  }
}

void keyPressed () {
  if ( key == BACKSPACE || key == DELETE )
  {
    if ( input != null && input.length() > 0 )
    {
      input = input.substring( 0, input.length()-1 );
    }
  }
  else if ( key != CODED ) {
    input += key;
  }
}

void drawGenerativeText ( String txt, float x, float y ) {
  if ( input == null || input.trim().equals("") ) return;   
  stroke( 0 );
  noFill();
  pushMatrix();
  translate( x, y );
  translate( 0, -50 );
  for ( int i = 0; i < txt.length(); i++ ) {

    // draw grid
    //strokeWeight(1);
    //stroke(0, 75);    
    //drawGrid();
    // draw characterstodo
    strokeWeight(1);
    stroke(0);

    char c = input.charAt( i );    
    drawGenerativeChar(c);
  }
  popMatrix();
}

void rLine ( float x1, float y1, float x2, float y2 )
{
  strokeWeight ( 1 );
  beginShape ( LINES );
  vertex ( x1, y1 );
  vertex ( x2, y2 );
  endShape (); 
  /*
  strokeWeight (6);
   point (x1, y1);
   point (x2, y2);
   */
}

void drawGrid() {

  int letterheight = 72;
  int letterwidth = 45;

  float gridx = 4;
  float gridy = 5;

  float spacingX = letterwidth / gridx;
  float spacingY = letterheight / gridy; 

  rect(0, 0, letterwidth, letterheight);
  for (int i = 0; i < gridx; i++) {
    line(i*spacingX, 0, i*spacingX, 72);
  }
  for (int i = 0; i < gridy; i++) {
    line(0, i*spacingY, 45, i*spacingY);
  }
}

void drawGenerativeChar ( char c )
{
  switch ( c ) {

  case 'A':
    draw_A();
    break;
  case 'a':
    draw_a();
    break;
  case 'B':
    draw_B();
    break;
  case 'b':
    draw_b();
    break;
  case 'C':
    draw_C();
    break;
  case 'c':
    draw_c();
    break;
  case 'D':
    draw_D();
    break;
  case 'd':
    draw_d();
    break;
  case 'E':
    draw_E();
    break;
  case 'e':
    draw_e();
    break;
  case 'F':
    draw_F();
    break;
  case 'f':
    draw_f();
    break;
  case 'G':
    draw_G();
    break;
  case 'g':
    draw_g();
    break;
  case 'H':
    draw_H();
    break;
  case 'h':
    draw_h();
    break;
  case 'I':
    draw_I();
    break;
  case 'i':
    draw_i();
    break;
  case 'J':
    draw_J();
    break;
  case 'j':
    draw_j();
    break;
  case 'K':
    draw_K();
    break;
  case 'k':
    draw_k();
    break;
  case 'L':
    draw_L();
    break;
  case 'l':
    draw_l();
    break;
  case 'M':
    draw_M();
    break;
  case 'm':
    draw_m();
    break;
  case 'N':
    draw_N();
    break;
  case 'n':
    draw_n();
    break;
  case 'O':
    draw_O();
    break;
  case 'o':
    draw_o();
    break;
  case 'P':
    draw_P();
    break;
  case 'p':
    draw_p();
    break;
  case 'Q':
    draw_Q();
    break;
  case 'q':
    draw_q();
    break;
  case 'R':
    draw_R();
    break;
  case 'r':
    draw_r();
    break;
  case 'S':
    draw_S();
    break;
  case 's':
    draw_s();
    break;
  case 'T':
    draw_T();
    break;
  case 't':
    draw_t();
    break;
  case 'U':
    draw_U();
    break;
  case 'u':
    draw_u();
    break;
  case 'V':
    draw_V();
    break;
  case 'v':
    draw_v();
    break;
  case 'W':
    draw_W();
    break;
  case 'w':
    draw_w();
    break;
  case 'X':
    draw_X();
    break;
  case 'x':
    draw_x();
    break;
  case 'Y':
    draw_Y();
    break;
  case 'y':
    draw_y();
    break;
  case 'Z':
    draw_Z();
    break;
  case 'z':
    draw_z();
    break;

  case '0':
    draw_0();
    break;
  case '1':
    draw_1();
    break;
  case '2':
    draw_2();
    break;
  case '3':
    draw_3();
    break;
  case '4':
    draw_4();
    break;
  case '5':
    draw_5();
    break;
  case '6':
    draw_6();
    break;
  case '7':
    draw_7();
    break;
  case '8':
    draw_8();
    break;
  case '9':
    draw_9();
    break;
  case ' ':
    draw_SPACEBAR();
    break;
  case '.':
    draw_PERIOD();
    break;
  case '!':
    draw_EXPLAMATIONPOINT();
    break;
  case '?':
    draw_QUESTIONMARK();
    break;
  case ':':
    draw_COLON();
    break;
  case ';':
    draw_SEMICOLON();
    break;
  case ',':
    draw_COMA();
    break;
  case '+':
    draw_PLUS();
    break;
  case '-':
    draw_MINUS();
    break;
  case '"':
    draw_QUOTES();
    break;
  case '%':
    draw_PERCENT();
    break;
  case '(':
    draw_PARENTHESISL();
    break;
  case ')':
    draw_PARENTHESISR();
    break;
  case '{':
    draw_CURLYBRACKETSL();
    break;
  case '}':
    draw_CURLYBRACKETSR();
    break;
  case '=':
    draw_EQUALS();
    break;
  case '@':
    draw_AT();
    break;
  case '#': 
    draw_POUND();
    break;
  case '$':
    draw_MONEY();  
    break;
  case '^':
    draw_CARET();
    break;  
  case '&':
    draw_AND();
    break;
  case '*':  
    draw_STAR();
    break;
  case '>':
    draw_GREATERTHAN();
    break;
  case '<':
    draw_LESSTHAN();
    break;
  case '_':
    draw_UNDERSCORE();
    break;
  case '~':
    draw_TILDE();
    break;
  case '[':
    draw_SQUAREBRACKETL();
    break; 
  case ']':
    draw_SQUAREBRACKETR();
    break;  
  }
}
//letters
void draw_A () {
  rLine( 0, 12, 12, 0 );
  rLine( 12, 0, 33, 0 );
  rLine( 0, 72, 0, 12 );
  rLine( 0, 40, 45, 40 );
  rLine( 45, 72, 45, 12 );
  rLine( 45, 12, 33, 0 );
  translate( spacing, 0 );
}

void draw_a () {
  rLine( 0, 42, 12, 30 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 30, 33, 30 );
  rLine( 0, 59, 0, 42 );
  rLine( 12, 72, 33, 72 );
  rLine( 45, 42, 33, 30 );
  rLine( 0, 60, 12, 72 );
  rLine( 45, 30, 45, 72 );
  translate( spacing, 0 );
}

void draw_B () {
  rLine( 0, 0, 12, 0 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 0, 33, 0 );
  rLine( 0, 72, 0, 0 );
  rLine( 45, 31, 45, 12 );
  rLine( 45, 43, 45, 60);
  rLine( 0, 37, 35, 37 );
  rLine( 45, 31, 35, 37);
  rLine( 45, 43, 35, 37);
  rLine( 0, 72, 33, 72 );
  rLine( 45, 12, 33, 0 );
  translate( spacing, 0);
}

void draw_b () {
  rLine( 0, 72, 0, 0 );
  rLine( 0, 42, 12, 30 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 30, 33, 30 );
  rLine( 0, 59, 0, 42 );
  rLine( 12, 72, 33, 72 );
  rLine( 45, 42, 33, 30 );
  rLine( 0, 60, 12, 72 );
  rLine( 45, 42, 45, 60 );
  translate( spacing, 0 );
}

void draw_C () {
  rLine( 0, 12, 12, 0 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 0, 33, 0 );
  rLine( 0, 59, 0, 12 );
  rLine( 12, 72, 33, 72 );
  rLine( 45, 12, 33, 0 );
  rLine( 0, 60, 12, 72 );
  translate( spacing, 0 );
}

void draw_c () {
  rLine( 0, 42, 12, 30 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 30, 33, 30 );
  rLine( 0, 59, 0, 42 );
  rLine( 12, 72, 33, 72 );
  rLine( 45, 42, 33, 30 );
  rLine( 0, 60, 12, 72 );
  translate( spacing, 0 );
}

void draw_D () {
  rLine( 0, 0, 12, 0 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 0, 33, 0 );
  rLine( 0, 72, 0, 0 );
  rLine( 45, 59, 45, 12 );
  rLine( 0, 72, 33, 72 );
  rLine( 45, 12, 33, 0 );
  translate( spacing, 0 );
}

void draw_d () {
  rLine( 0, 42, 12, 30 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 30, 33, 30 );
  rLine( 0, 59, 0, 42 );
  rLine( 12, 72, 33, 72 );
  rLine( 45, 42, 33, 30 );
  rLine( 0, 60, 12, 72 );
  rLine( 45, 0, 45, 72 );
  translate( spacing, 0 );
}

void draw_E () {
  rLine( 0, 72, 0, 0 );
  rLine( 0, 0, 40, 0 );
  rLine( 22, 35, 0, 35 );
  rLine( 0, 72, 40, 72 );
  translate( spacing-10, 0 );
}

void draw_e () {
  rLine( 0, 42, 12, 30 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 30, 33, 30 );
  rLine( 0, 59, 0, 42 );
  rLine( 12, 72, 33, 72 );
  rLine( 45, 42, 33, 30 );
  rLine( 0, 60, 12, 72 );
  rLine( 0, 42, 45, 42 );
  translate( spacing, 0 );
}

void draw_F () {
  rLine( 0, 72, 0, 0 );
  rLine( 0, 0, 40, 0 );
  rLine( 22, 32, 0, 32 );
  translate( spacing, 0 );
}

void draw_f () {
  rLine( 45, 12, 33, 0 );
  rLine( 10, 12, 22, 0 );
  rLine( 10, 72, 10, 12 );
  rLine( 22, 0, 33, 0 );
  rLine( 22, 32, 0, 32 );
  translate( spacing-5, 0 );
}

void draw_G () {
  rLine( 0, 12, 12, 0 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 0, 33, 0 );
  rLine( 0, 59, 0, 12 );
  rLine( 28, 38, 50, 38 );
  rLine( 45, 59, 45, 38 );
  rLine( 12, 72, 33, 72 );
  rLine( 45, 12, 33, 0 );
  rLine( 0, 60, 12, 72 );
  translate( spacing+10, 0);
}

void draw_g () {
  rLine( 0, 42, 12, 30 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 30, 33, 30 );
  rLine( 0, 59, 0, 42 );
  rLine( 12, 72, 33, 72 );
  rLine( 45, 42, 33, 30 );
  rLine( 0, 60, 12, 72 );
  rLine( 45, 30, 45, 90 );
  rLine( 0, 90, 12, 102 );
  rLine( 12, 102, 33, 102 );
  rLine( 45, 90, 33, 102 );
  translate( spacing, 0 );
}

void draw_H () {
  rLine( 0, 37, 45, 37 );
  rLine( 0, 72, 0, 0 );
  rLine( 45, 0, 45, 72 );
  translate(spacing, 0);
}

void draw_h () {
  rLine( 12, 30, 33, 30 );
  rLine( 0, 72, 0, 0 );
  rLine( 45, 42, 45, 72 ); 
  rLine( 45, 42, 33, 30 );
  rLine( 0, 42, 12, 30 );
  translate( spacing, 0 );
}

void draw_I () {
  rLine( 0, 0, 25, 0 );
  rLine( 0, 72, 25, 72 );
  rLine( 13, 72, 13, 0 );
  translate( spacing-15, 0 );
}

void draw_i () {
  rLine( 13, 72, 13, 34 );
  fill(0);
  ellipse( 13, 20, 4, 3 );
  translate( spacing-15, 0 );
}

void draw_J () {
  rLine( 0, 0, 45, 0 );
  rLine( 12, 72, 24, 72 );
  rLine( 24, 72, 24, 0 );
  rLine( 0, 60, 12, 72 );
  translate( spacing, 0 );
}

void draw_j () {
  rLine( 12, 90, 24, 90 );
  rLine( 24, 90, 24, 34 );
  rLine( 0, 78, 12, 90 );
  fill(0);
  ellipse( 24, 20, 4, 3 );
  translate( spacing, 0 );
}

void draw_K () {
  rLine( 0, 72, 0, 0 );
  rLine( 36, 0, 0, 36 );
  rLine( 0, 36, 36, 72 );
  translate( spacing, 0 );
}

void draw_k () {
  rLine( 0, 72, 0, 0 );
  rLine( 26, 20, 0, 46 );
  rLine( 0, 46, 26, 72 );
  translate( spacing, 0 );
}

void draw_L () {
  rLine( 40, 72, 12, 72 );
  rLine( 0, 60, 0, 0 );
  rLine( 0, 60, 12, 72 );
  translate( spacing-10, 0 );
}

void draw_l () {
  translate( -5, 0 );
  rLine( 20, 72, 20, 0 );
  translate( spacing-10, 0 );
}

void draw_M () {
  rLine( 0, 72, 0, 0 );
  rLine( 44, 72, 44, 0 );
  rLine( 0, 0, 22, 72 );
  rLine( 22, 72, 44, 0 );
  translate( spacing, 0 );
}

void draw_m () {
  rLine( 0, 42, 12, 30 );
  rLine( 24, 42, 36, 30 );
  rLine( 24, 42, 12, 30 );
  rLine( 48, 42, 36, 30 );
  rLine( 24, 42, 24, 72 );
  rLine( 48, 42, 48, 72 );
  rLine( 0, 30, 0, 72 );
  translate( spacing+5, 0 );
}

void draw_N () {
  rLine( 0, 72, 0, 0 );
  rLine( 0, 0, 45, 72 );
  rLine( 45, 72, 45, 0 );
  translate( spacing, 0 );
}

void draw_n () {
  rLine( 0, 42, 12, 30 );
  rLine( 12, 30, 33, 30 );
  rLine( 45, 42, 33, 30 );
  rLine( 45, 42, 45, 72 );
  rLine( 0, 30, 0, 72 );
  translate( spacing, 0 );
}

void draw_O () {
  rLine( 0, 12, 12, 0 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 0, 33, 0 );
  rLine( 0, 59, 0, 12 );
  rLine( 45, 59, 45, 12 );
  rLine( 12, 72, 33, 72 );
  rLine( 45, 12, 33, 0 );
  rLine( 0, 60, 12, 72 );
  translate( spacing, 0);
}

void draw_o () {
  rLine( 0, 42, 12, 30 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 30, 33, 30 );
  rLine( 0, 59, 0, 42 );
  rLine( 12, 72, 33, 72 );
  rLine( 45, 42, 33, 30 );
  rLine( 0, 60, 12, 72 );
  rLine( 45, 42, 45, 59);
  translate( spacing, 0 );
}

void draw_P () {
  rLine( 0, 12, 12, 0 );
  rLine( 0, 72, 0, 0 );
  rLine( 12, 0, 33, 0 );
  rLine( 45, 12, 33, 0 ); 
  rLine( 45, 12, 45, 30 );
  rLine( 45, 30, 33, 42 );
  rLine( 12, 42, 0, 30);
  rLine( 33, 42, 12, 42 );
  translate( spacing, 0 );
}

void draw_p () {
  rLine( 0, 30, 0, 95 );
  rLine( 0, 42, 12, 30 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 30, 33, 30 );
  rLine( 0, 59, 0, 42 );
  rLine( 12, 72, 33, 72 );
  rLine( 45, 42, 33, 30 );
  rLine( 0, 60, 12, 72 );
  rLine( 45, 42, 45, 60 );
  translate( spacing, 0 );
}

void draw_Q () {
  rLine( 45, 72, 0, 72 );
  rLine( 0, 72, 0, 0 );
  rLine( 0, 0, 45, 0 );
  rLine( 45, 0, 45, 72 );
  rLine( 40, 61, 50, 72 );
  translate( spacing, 0 );
}

void draw_q () {
  rLine( 0, 42, 12, 30 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 30, 33, 30 );
  rLine( 0, 59, 0, 42 );
  rLine( 12, 72, 33, 72 );
  rLine( 45, 42, 33, 30 );
  rLine( 0, 60, 12, 72 );
  rLine( 45, 30, 45, 100 );
  rLine( 45, 100, 57, 88 );
  translate( spacing+10, 0 );
}

void draw_R () {
  rLine( 0, 72, 0, 0 );
  rLine( 0, 12, 12, 0 );
  rLine( 12, 0, 33, 0 );
  rLine( 45, 12, 33, 0 ); 
  rLine( 45, 12, 45, 30 );
  rLine( 45, 30, 33, 42 );
  rLine( 33, 42, 12, 42 );
  rLine( 0, 30, 42, 72 );
  translate( spacing, 0 );
}

void draw_r () {
  rLine( 0, 42, 12, 30 );
  rLine( 12, 30, 33, 30 );
  rLine( 0, 30, 0, 72 );
  translate( spacing, 0 );
}

void draw_S () {
  rLine( 0, 12, 12, 0 );
  rLine( 0, 18, 12, 30 );
  rLine( 0, 12, 0, 18 );
  rLine( 12, 0, 45, 0 );
  rLine( 12, 30, 33, 30 );//midlacr
  rLine( 45, 42, 33, 30); //midldow
  rLine( 45, 42, 45, 60 );//mid ldowstr
  rLine( 45, 60, 33, 72 );//lowldo
  rLine( 33, 72, 0, 72 );//botl
  translate( spacing, 0 );
}

void draw_s () {
  rLine( 12, 24, 45, 24 ); //top
  rLine( 0, 36, 12, 24 );
  rLine( 0, 36, 12, 48 );
  rLine( 12, 48, 33, 48 );//midlacr
  rLine( 45, 60, 33, 48 ); //midldow
  rLine( 45, 60, 33, 72 );//lowldo
  rLine( 33, 72, 0, 72 );//botl
  translate( spacing, 0 );
}

void draw_T () {
  rLine( 0, 0, 63, 0 );
  rLine( 32, 72, 32, 0 );
  translate( spacing+20, 0 );
}

void draw_t () {
  rLine( 0, 25, 44, 25 );
  rLine( 22, 72, 22, 0 );
  translate( spacing, 0 );
}

void draw_U () {
  rLine( 45, 60, 33, 72 );
  rLine( 0, 59, 0, 5 );
  rLine( 45, 59, 45, 5 );
  rLine( 12, 72, 33, 72 );
  rLine( 0, 60, 12, 72 );
  translate( spacing, 0 );
}

void draw_u () {
  rLine( 45, 60, 33, 72 );
  rLine( 5, 59, 5, 30 );
  rLine( 45, 59, 45, 30 );
  rLine( 17, 72, 33, 72 );
  rLine( 5, 60, 17, 72 );
  translate( spacing, 0 );
}

void draw_V () {
  rLine( 0, 0, 22, 72 );
  rLine( 22, 72, 44, 0 );
  translate( spacing, 0 );
}

void draw_v () {
  rLine( 5, 30, 22, 72 );
  rLine( 22, 72, 39, 30 );
  translate( spacing, 0 );
}

void draw_W () {
  rLine( 6, 72, 0, 0 );
  rLine( 44, 72, 56, 0 );
  rLine( 6, 72, 27, 12 );
  rLine( 27, 12, 44, 72 );
  translate( spacing+10, 0 );
}

void draw_w () {
  rLine( 12, 72, 0, 30 );
  rLine( 33, 72, 45, 30 );
  rLine( 12, 72, 22, 38 );
  rLine( 22, 38, 33, 72 );
  translate( spacing, 0 );
}

void draw_X () {
  rLine( 0, 72, 43, 0 );
  rLine( 0, 0, 43, 72 );
  translate( spacing, 0 );
}

void draw_x () {
  rLine( 5, 72, 40, 25 );
  rLine( 5, 25, 40, 72 );
  translate( spacing, 0 );
}

void draw_Y () {
  rLine( 0, 0, 22, 40 );
  rLine( 22, 72, 22, 40 );
  rLine( 22, 40, 44, 0 );
  translate( spacing, 0 );
}

void draw_y () {
  rLine( 0, 30, 20, 70 );
  rLine( 0, 100, 44, 30 );
  translate( spacing, 0 );
}

void draw_Z () {
  rLine( 0, 5, 45, 5 );
  rLine( 45, 5, 0, 72 );
  rLine( 0, 72, 45, 72 );
  translate( spacing+10, 0 );
}

void draw_z () {
  rLine( 0, 27, 45, 27 );
  rLine( 45, 27, 0, 72 );
  rLine( 0, 72, 45, 72 );
  translate( spacing, 0 );
}
// numbers
void draw_0 () {
  rLine( 0, 12, 12, 0 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 0, 33, 0 );
  rLine( 0, 59, 0, 12 );
  rLine( 45, 59, 45, 12 );
  rLine( 12, 72, 33, 72 );
  rLine( 45, 12, 33, 0 );
  rLine( 0, 60, 12, 72 );
  rLine( 6, 66, 39, 6);
  translate( spacing, 0 );
}

void draw_1 () {
  rLine( 12, 12, 24, 0 );
  rLine( 24, 0, 24, 72 );
  translate( spacing, 0 );
}

void draw_2 () {
  rLine( 0, 12, 12, 0 );
  rLine( 12, 0, 33, 0 );
  rLine( 33, 0, 45, 12 );
  rLine( 45, 12, 0, 72 );
  rLine( 0, 72, 45, 72 );
  translate( spacing, 0 );
}

void draw_3 () {
  rLine( 0, 12, 12, 0 );
  rLine( 12, 0, 32, 0 );
  rLine( 33, 0, 45, 12 ); 
  rLine( 45, 12, 18, 30 ); 
  rLine( 45, 59, 45, 43 ); 
  rLine( 32, 30, 18, 30);
  rLine( 32, 30, 45, 43 );
  rLine( 45, 59, 32, 72 );
  rLine( 32, 72, 12, 72 );
  rLine( 0, 60, 12, 72 );
  translate( spacing, 0 );
}

void draw_4 () {
  rLine( 45, 59, 0, 59 );
  rLine( 0, 59, 33, 0 );
  rLine( 33, 0, 33, 72 );
  translate( spacing, 0 );
}

void draw_5 () {
  rLine( 0, 60, 12, 72 );
  rLine( 12, 72, 32, 72 ); 
  rLine( 32, 72, 45, 59 );
  rLine( 45, 42, 33, 30 ); 
  rLine( 45, 42, 45, 59 );
  rLine( 32, 30, 0, 30 ); 
  rLine( 0, 30, 0, 0 );
  rLine( 0, 0, 45, 0 );
  translate( spacing, 0 );
}

void draw_6 () {
  rLine( 12, 30, 33, 30 );
  rLine( 45, 42, 33, 30 );
  rLine( 0, 42, 42, 0 );
  rLine( 0, 42, 0, 60 );
  rLine( 45, 42, 45, 59 ); 
  rLine( 0, 60, 12, 72 );
  rLine( 45, 59, 32, 72 );
  rLine( 32, 72, 12, 72 );
  translate( spacing, 0 );
}

void draw_7 () {
  rLine( 0, 0, 45, 0 );
  rLine( 45, 0, 0, 72 );
  translate( spacing, 0 );
}

void draw_8 () {
  rLine( 0, 12, 12, 0 );
  rLine( 45, 22, 33, 34 );
  rLine( 12, 0, 33, 0 );
  rLine( 0, 22, 0, 12 );
  rLine( 45, 22, 45, 12 );
  rLine( 45, 12, 33, 0 );
  rLine( 0, 22, 12, 34 );
  rLine( 0, 46, 12, 34 );
  rLine( 45, 60, 33, 72 );
  rLine( 12, 34, 33, 34 );
  rLine( 0, 59, 0, 46 );
  rLine( 12, 72, 33, 72 );
  rLine( 45, 46, 33, 34 );
  rLine( 0, 60, 12, 72 );
  rLine( 45, 46, 45, 59);
  /*
  rLine( 45, 30, 0, 45 );
   rLine( 45, 45, 0, 30 );
   rLine( 0, 12, 12, 0 );
   rLine( 45, 60, 33, 72 );
   rLine( 12, 0, 33, 0 );
   rLine( 0, 12, 0, 30 );
   rLine( 45, 12, 45, 30 );
   rLine( 45, 45, 45, 60 );
   rLine( 0, 45, 0, 60 );
   rLine( 12, 72, 33, 72 );
   rLine( 45, 12, 33, 0 );
   rLine( 0, 60, 12, 72 );
   */
  translate( spacing, 0 );
}

void draw_9 () {
  rLine( 0, 12, 12, 0 );
  rLine( 45, 12, 33, 0 );
  rLine( 12, 0, 33, 0 );
  rLine( 45, 12, 45, 30 );
  rLine( 0, 30, 12, 42 ); 
  rLine( 12, 42, 33, 42 );
  rLine( 0, 12, 0, 30 );
  rLine( 45, 30, 3, 72 );
  translate( spacing, 0 );
}
//symbles
void draw_SPACEBAR() {
  translate( spacing, 0 );
}

void draw_PERIOD() {
  fill(0);
  ellipse( 0, 70, 4, 3 );
  translate( spacing-37, 0 );
}

void draw_COMA() {
  rLine( 0, 70, -3, 75);
  fill(0);
  ellipse( 0, 70, 4, 3 );
  translate( spacing-37, 0 );
}

void draw_EXPLAMATIONPOINT() {
  rLine( 0, 55, 0, 0 );
  fill(0);
  ellipse( 0, 70, 4, 3 );
  translate( spacing-30, 0 );
}

void draw_QUESTIONMARK() {
  rLine( 0, 12, 12, 0 );
  rLine( 45, 12, 33, 0 );
  rLine( 12, 0, 33, 0 );
  rLine( 45, 12, 45, 30 );
  rLine( 22, 42, 33, 42 );
  rLine( 45, 30, 33, 42 );
  rLine( 22, 60, 22, 42 );
  fill(0);
  ellipse( 22, 70, 4, 3 );
  translate( spacing, 0 );
} 

void draw_COLON() {
  fill(0);
  ellipse( 15, 25, 4, 3 );
  ellipse( 15, 55, 4, 3 );
  translate( spacing-30, 0 );
}

void draw_SEMICOLON() {
  rLine( 15, 55, 10, 70 );
  fill(0);
  ellipse( 15, 25, 4, 3 );
  ellipse( 15, 55, 4, 3 );
  translate( spacing-30, 0 );
}

void draw_PLUS() {
  rLine( 22, 60, 22, 12 );
  rLine( 0, 37, 44, 37 );
  translate( spacing, 0 );
}

void draw_MINUS() {
  rLine( 0, 37, 45, 37 );
  translate( spacing, 0 );
}

void draw_QUOTES() {
  rLine( 0, 12, 0, 0 );
  rLine( 12, 12, 12, 0 );
  translate( spacing-30, 0 );
}

void draw_PERCENT() {
  noFill();
  ellipse( 10, 20, 10, 10 );
  ellipse( 35, 50, 10, 10 );
  rLine( 40, 12, 5, 60 );
  translate( spacing, 0 );
}

void draw_PARENTHESISL() {
  rLine( 0, 12, 12, 0 );
  rLine( 0, 59, 0, 12 );
  rLine( 0, 60, 12, 72 );
  translate( spacing, 0 );
}

void draw_PARENTHESISR() {
  rLine( 45, 60, 33, 72 );
  rLine( 45, 59, 45, 12 );
  rLine( 45, 12, 33, 0 );
  translate( spacing, 0 );
}

void draw_CURLYBRACKETSL() {
  translate( +10, 0 );
  rLine( 0, 12, 12, 0 );
  rLine( 12, 0, 25, 0 );
  rLine( 0, 24, 0, 12 );
  rLine( 0, 48, 0, 60 ); 
  rLine( 12, 72, 25, 72 );
  rLine( 0, 60, 12, 72 );
  rLine( 0, 24, 6, 30 );
  rLine( 0, 36, 6, 30 );
  rLine( 0, 36, -7, 36 );
  rLine( 0, 36, 6, 42 );
  rLine( 0, 48, 6, 42 );
  translate( spacing-20, 0 );
}

void draw_CURLYBRACKETSR() {
  translate( -20, 0 );
  rLine( 45, 60, 33, 72 );
  rLine( 20, 0, 33, 0 );
  rLine( 45, 24, 45, 12 );
  rLine( 45, 48, 45, 60 );
  rLine( 20, 72, 33, 72 );
  rLine( 45, 12, 33, 0 );
  rLine( 45, 36, 52, 36 );
  rLine( 39, 42, 45, 48 );
  rLine( 39, 30, 45, 24 );
  rLine( 39, 30, 45, 36 );
  rLine( 39, 42, 45, 36 );
  translate( spacing, 0 );
}

void draw_EQUALS() {
  rLine( 0, 30, 45, 30 );
  rLine( 0, 45, 45, 45 );
  translate( spacing, 0 );
}

void draw_AT() {
  rLine( 0, 22, 12, 10 );
  rLine( 45, 55, 33, 67 );
  rLine( 12, 10, 33, 10 );
  rLine( 0, 55, 0, 22 );
  rLine( 12, 67, 33, 67 );
  rLine( 45, 22, 33, 10 );
  rLine( 0, 55, 12, 67 );
  rLine( 45, 22, 45, 45);
  rLine( 6, 32, 18, 20 );
  rLine( 40, 42, 28, 54 );
  rLine( 18, 20, 28, 20 );
  rLine( 6, 42, 6, 32 ); 
  rLine( 18, 54, 28, 54 );
  rLine( 40, 32, 28, 20 );
  rLine( 6, 42, 18, 54 );
  rLine( 40, 50, 40, 26 );
  rLine( 40, 50, 45, 45 );
  translate( spacing, 0 );
}

void draw_POUND() {
  rLine( 12, 60, 12, 12 );
  rLine( 32, 60, 32, 12 );
  rLine( 0, 27, 45, 27 );
  rLine( 0, 47, 45, 47 );
  translate( spacing, 0 );
}

void draw_MONEY() {
  rLine( 0, 12, 12, 0 );
  rLine( 0, 18, 12, 30 );
  rLine( 0, 12, 0, 18 );
  rLine( 12, 0, 45, 0 );
  rLine( 12, 30, 33, 30 );
  rLine( 45, 42, 33, 30); 
  rLine( 45, 42, 45, 60 );
  rLine( 45, 60, 33, 72 );
  rLine( 33, 72, 0, 72 );
  rLine( 15, -10, 15, 82 );
  rLine( 30, -10, 30, 82 );
  translate( spacing, 0 );
}

void draw_CARET() {
  rLine( 42, 20, 22, 0 );
  rLine( 2, 20, 22, 0 );
  translate( spacing, 0 );
}

void draw_AND() {
  rLine( 0, 12, 12, 0 ); 
  rLine( 12, 0, 33, 0 );
  rLine( 45, 12, 33, 0 ); 
  rLine( 45, 12, 0, 57 );
  rLine( 60, 72, 0, 12 );
  rLine( 0, 57, 0, 60 );
  rLine( 55, 50, 55, 45 );
  rLine( 55, 50, 33, 72 );
  rLine( 12, 72, 33, 72 );
  rLine( 0, 60, 12, 72 );
  translate( spacing +10, 0 );
}

void draw_STAR() {
  rLine( 3, 3, 27, 27 );
  rLine( 3, 27, 27, 3 );
  rLine( 0, 15, 30, 15 );
  rLine( 15, 0, 15, 30 );
  translate( spacing-10, 0 );
}

void draw_GREATERTHAN() { 
  rLine( 0, 15, 45, 36 );
  rLine( 0, 57, 45, 36 );
  translate( spacing, 0 );
}

void draw_LESSTHAN() {
  rLine( 0, 36, 45, 15 );
  rLine( 0, 36, 45, 57 );
  translate( spacing, 0 );
}

void draw_UNDERSCORE() {
  rLine( 0, 72, 45, 72 );
  translate( spacing, 0 );
}

void draw_TILDE() {
  rLine( 0, 42, 15, 30 );
  rLine( 30, 42, 15, 30 );
  rLine( 30, 42, 45, 30 );
  translate( spacing, 0 );
}

void draw_SQUAREBRACKETL() {


}

void draw_SQUAREBRACKETR() {


}







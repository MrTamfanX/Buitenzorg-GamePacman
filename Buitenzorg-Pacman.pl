#!usr/bin/tamfan/perl
#Jangan iseng mas, Kalo mau main udah di sediain.
#Author By : MrTamfanX && TUANB4DUT
#Thanks To My Team : Buitenzorg Syndicate.io
use Term::ANSIColor;
use if $^O eq "MSWin32", Win32::Console::ANSI;
use POSIX qw(strftime);
use Game::TextPacMonster;
@months = qw( Januari Februari Maret April Mei Juni Juli Agustus September Oktober November Desmber );
@days = qw(Minggu Senin Selasa Rabu Kamis Jumat Sabtu Minggu);
$years = strftime "%Y", gmtime;
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
mrtamfanx();
menukas();
sub mrtamfanx {
if ($^O =~ /MSWin32/) {system("mode con: cols=100 lines=29");system("cls"); }else { system("resize -s 28 87");system("clear"); }
print color('bold red'),"┏━━━┓  ┳    ┳ ┳ ┏━━┳━━┓ ┏━━━━┓ ┏━┓ ┳ ┏━━━━┓ ┏━━━━┓ ┏━━━━┓ ┏━━━━┓\n";
print color('bold red'),"┃┏━┓┗┓ ┃    ┃ ┃ ┃  ┃  ┃ ┃    ┃ ┃ ┃ ┃ ┻   ┏┛ ┃    ┃ ┃    ┃ ┃\n";
print color('bold red'),"┃┗━┛ ┃ ┃    ┃ ┃    ┃    ┃      ┃ ┃ ┃    ┏┛  ┃    ┃ ┃    ┃ ┃\n";
print color('bold red'),"┃  ━━┫ ┃    ┃ ┃    ┃    ┣━━━   ┃ ┃ ┃   ┏┛   ┃    ┃ ┣━━┳━┛ ┃ ━━━┓\n";
print color('bold white'),"┃┏━┓ ┃ ┃    ┃ ┃    ┃    ┃      ┃ ┃ ┃  ┏┛    ┃    ┃ ┃  ┗┓  ┃    ┃\n";
print color('bold white'),"┃┗━┛┏┛ ┃    ┃ ┃    ┃    ┃    ┃ ┃ ┃ ┃ ┏┛   ┳ ┃    ┃ ┃   ┃  ┃    ┃\n";
print color('bold white'),"┗━━━┛  ┗━━━━┛ ┻    ┻    ┗━━━━┛ ┻ ┗━┛ ┗━━━━┛ ┗━━━━┛ ┻   ┻  ┗━━━━┛\n";
print color('bold cyan'),"┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓\n";
print color('bold cyan'),"┃";
print color('bold red'),"Author ";
print color('bold green'),": ";
print color('bold white'),"MrTamfanX ";
print color('bold red'),"&& ";
print color('bold white'),"TUANB4DUT ";
print color('bold blue'),"Team ";
print color('bold green'),": ";
print color('bold red'),"Buitenzorg Syndicate.io";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┃";
print color('bold white'),"Hubungi Contact WhatsApp ";
print color('bold green'),": 62 857";
print color('bold white'),"-";
print color('bold green'),"8041";
print color('bold white'),"-";
print color('bold green'),"1404 ";
print color('bold red'),"& ";
print color('bold green'),"62 812";
print color('bold white'),"-";
print color('bold green'),"2121";
print color('bold white'),"-";
print color('bold green'),"5191";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\n";
print color('bold cyan'),"┃";
print color('bold yellow'),"This Tool Is A Tool For Playing Games When You Are Bored & Try";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛\n";
print color('bold red'),"┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\n";
print color('bold white'),"[";
print color('bold red'),"•";
print color('bold white'),"]";
print color('bold white'),"Tanggal ";
print color('bold green'),": ";
print color('bold yellow'),"$mday ";
print color('bold white'),"Hari ";
print color('bold green'),": ";
print color('bold yellow'),"$days[$wday] ";
print color('bold white'),"Bulan ";
print color('bold green'),": ";
print color('bold yellow'),"$months[$mon] ";
print color('bold white'),"Tahun ";
print color('bold green'),": ";
print color('bold yellow'),"$years\n";
print color('bold white'),"[";
print color('bold red'),"•";
print color('bold white'),"]";
print color('bold white'),"Jam ";
print color('bold green'),": ";
print color('bold yellow'),"$hour ";
print color('bold green'),": ";
print color('bold yellow'),"$min ";
print color('bold green'),": ";
print color('bold yellow'),"$sec\n\n";
}
sub menukas {
print nomerkas5(),"";
print nomerkas(),"";
print nomerkas1(),"";
print nomerkas2(),"";
print nomerkas3(),"EXIT MY GAME\n\n";
print nomerkas4(),"";
chomp($akas=<STDIN>);
if($akas eq '1'){
my $game = Game::TextPacMonster->level1;
my $map =<<'MAP';
#############
# . # . # R #
#           #
#           #
# @ # . # . #
#############
MAP
 
my $timelimit = 60;
 
my $game = Game::TextPacMonster->new(
    {
        timelimit => $timelimit,
        map_string => $map
    }
);
 
$game->run; 
}if($akas eq '2'){
my $game = Game::TextPacMonster->level2;
my $map =<<'MAP';
#############
# . # . # R #
#           #
#           #
# @ # . # . #
#############
MAP
 
my $timelimit = 60;
 
my $game = Game::TextPacMonster->new(
    {
        timelimit => $timelimit,
        map_string => $map
    }
);
 
$game->run; 
}if($akas eq '3'){
my $game = Game::TextPacMonster->level3;
my $map =<<'MAP';
#############
# . # . # R #
#           #
#           #
# @ # . # . #
#############
MAP
 
my $timelimit = 60;
 
my $game = Game::TextPacMonster->new(
    {
        timelimit => $timelimit,
        map_string => $map
    }
);
 
$game->run; 
}
}
sub nomerkas
{
    my $n = shift // '1';
    return color('bold white')," ["
    , color('bold green'),"$n"
    , color('bold white'),"] PACMAN LEVEL1\n "
    ;
}

sub nomerkas1

{
    my $n = shift // '2';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] PACMAN LEVEL2\n "
    ;
}
sub nomerkas2

{
    my $n = shift // '3';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] PACMAN LEVEL3\n "
    ;
}
sub nomerkas3
{
    my $n = shift // '4';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] "
    , color('bold red')
    ;
}
sub nomerkas5
{
    my $n = shift // 'INFO';
    return color('bold white')," ["
    , color('bold red'),"$n"
    , color('bold white'),"] Example  "
    , color('bold green'),": "
    , color('bold yellow'),"TRY MY GAME AND PLAY FROM PACMAN LEVEL1\n\n"
    , color('bold white')
    ;
}
sub nomerkas4
{
    my $n = shift // 'MENU';
    return color('bold white')," [ "
    , color('bold green'),"$n"
    , color('bold white')," ] "
    , color('bold cyan'),"TYPE AND SELECT YOUR NUMBER "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}

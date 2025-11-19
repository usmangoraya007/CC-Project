khokla test_program <<>>   
{
    rakam number = 3;          
    ashariye decimal = 13.2;  
    Lafz character = 'B';   
    Sahi truth = Sahi;      
    Ghalat lie = Ghalat;     
    Je_tu << number > 5 ) 
    {
        Wakhao "Number is greater than 5";
    }
    Nai_te
    {
        Wakhao "Number is small";
    }
    Je_tu << truth Yan lie >>  
    {
        Wakhao "OR works!";
    }

    Je_tu << truth Aur truth >> 
    {
        Wakhao "AND works!";
    }
    Ikojya << Rakam i = 0; i < 5; i = i jorna 1 >>
    {
        Je_tu << i == 3 >>
        {
            Ruk;  // break
        }

        Wakhao i;
    }

    Rakam x = 10;
    Rakam y = 2;

    Rakam mul = x zarab y;
    Rakam add = x jorna y;
    Rakam sub = x ghatana y;
    Rakam div = x taqseem y;

    Wakhao "Math results:";
    Wakhao mul;
    Wakhao add;
    Wakhao sub;
    Wakhao div;

    Je_tu << !Ghalat >>
    {
        Wakhao "Negation works!";
    }

    Wakhao "Custom lexer fully demonstrated!";

    Diyo 0;
}

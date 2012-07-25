Feature: add director information to a movie
 
  As an avid moviegoer
  So that I can see the director's name of a movie
  I want to add  director infomation to a movie

Background: movies have been added to database
  
  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

  #And I am on the RottenPotatoes home page
  #And I check the following ratings: PG, R, PG-13, NC-17, G
  #And I press "Refresh"
  And I am on the movie page
  Then I should see "Director"


Scenario: add director name

  And I follow "Edit"
  Then I should see "Director"
  #When I fill Director steven speilberg
  #And I click Update Movie Info
  #Then I am on the movie page
  #Then the "li" within details should contain "Director: steven speilberg"
# Design-Patterns
Few Exercises where I applied 'Design Patterns' and refactored code in Ruby

**1. Template and Strategy patterns**
<br/>Problem statement :  'Problem' folder models a game where an oracle thinks of a number in a certain range and each participant makes a number of guesses to find out what the number is. After each guess, the oracle tells the participant if the are correct or not, and if not, whether their guess was too big to too small. The Participant class has 4 play methods representing 4 different strategies: random guessing, linear search, smarter random guessing and binary search. Study the code of the Participant class. Apply design patterns.

**2. Observer pattern**
<br/>Problem statement :  In the Participant class of the number guessing game, an event that occurs that is likely to be of interest to other classes. This is when a game finishes with a participant either guessing the number correctly or using up all their attempts. One class interested in this event is the Auditor class. The role of the auditor is to observe all the participants and ensure that their win/loss profile is in keeping with what would be expected and highlight any anomalies. Apply Observer Pattern in solution of (1).
    
**3. Abstract Factory and Singleton patterns**
<br/>Problem statement :  Read Factory.rb in the folder. It contains a Client class that uses several Product classes, ProdA, ProdB and ProdC. The binding between the Client and Product classes is very tight -- the Client class specifically names the Product classes it uses. Apply Abstract factory pattern by creating Factory class and configure the Client with an instance of this class. The Client should now become completely independent of the Product classes. Also, apply Singleton to this Factory class. Make certain that it can only be instantiated once. 

**4. State pattern**
<br/>Problem statement : read StateExercise.rb in 'Problem'. The Person class provides several methods, each one depending on the value of the state variable, @state. Apply the State pattern.

**5. Decorator pattern**
<br/>Problem statement : read DecoratorExercise.rb in 'Problem'. There are two Coffee classes, Decaf and Espresso. Two types of Condiments can be added to the coffee, Milk and Sugar. Class DecafWithMilkAndSugar created for combination of decaf with milk and sugar. Main concern - 5 other combination classes still to write. More Coffee types are on the way (DarkRoast and HouseBlend) and further Condiments are possible (Syrup, Sweetener, Soy). Apply the Decorator pattern.

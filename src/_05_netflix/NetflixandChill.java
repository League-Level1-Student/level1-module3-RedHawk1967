package _05_netflix;

public class NetflixandChill {

public static void main(String[] args) {
	
NetflixQueue queue = new NetflixQueue();
Movie Best_Music  = new Movie("The Lion King",4);
Movie Best_Actors = new Movie("Independence Day",4);
Movie Best_Picture = new Movie("Big Here Six",3);
Movie Best_Directing = new Movie("Jaws",5);
Movie Best_Choreography = new Movie("Mama Mia",5);
Best_Choreography.getTicketPrice();
Best_Directing.getTicketPrice();
Best_Picture.getTicketPrice();
Best_Actors.getTicketPrice();
Best_Music.getTicketPrice();
queue.addMovie(Best_Choreography);
queue.addMovie(Best_Directing);
queue.addMovie(Best_Picture);
queue.addMovie(Best_Actors);
queue.addMovie(Best_Music);
queue.printMovies();
queue.sortMoviesByRating();
System.out.println(queue.getBestMovie()+" is the best rated movie in your queue");
System.out.println(queue.getMovie(1)+" is the second best rated movie in your queue");


}
}

package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
public static void main(String[] args) {
	World world = new World();
	Flower flowerl = new Flower();	
	Flower flowerr = new Flower();
	Random rand = new Random();
	int r = rand.nextInt(8);
	Color blue = new Color(0,0,255);
	Location locfr = new Location(r+1,r);
	Location locfl = new Location(r+1,r+2);
	Location loc2 = new Location(r+1,r+1);
	Location loc = new Location(5,5);
	Bug bug2 = new Bug();
	Bug bug1 = new Bug();
	bug2.setColor(blue);
	for (int i = 0; i <= 9; i++) {
		Flower mflower = new Flower();
		Location mloc = new Location(i,i);
		world.add(mloc, mflower);
	}
	world.add(locfr, flowerr);
	world.add(locfl,flowerl);	
	world.show();
	world.add(loc, bug1);
	world.add(loc2, bug2);
	bug2.turn();


}













}

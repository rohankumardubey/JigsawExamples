package com.varun.appmigration;

import java.util.List;

import com.amazonaws.services.ec2.AmazonEC2Client;
import com.amazonaws.services.ec2.model.Volume;


public class App
{
    public static void main( String[] args )
    {
    	AmazonEC2Client client = new AmazonEC2Client();
    	
    	List<Volume> volumes = client.describeVolumes().getVolumes();
    	System.out.println("Printing ebs volume info");
    	for(Volume v: volumes) {
    		System.out.println(v.toString());
    	}
    }
}

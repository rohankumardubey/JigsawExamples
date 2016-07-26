package com.varun.appmigration;

import java.util.List;

import com.amazonaws.services.ec2.AmazonEC2Client;
import com.amazonaws.services.ec2.model.DescribeInstancesResult;
import com.amazonaws.services.ec2.model.Instance;
import com.amazonaws.services.ec2.model.Reservation;


public class App
{
    public static void main( String[] args )
    {
    	AmazonEC2Client client = new AmazonEC2Client();

    	DescribeInstancesResult result = client.describeInstances();
    	List<Reservation> reservations = result.getReservations();
    	List<Instance> instances = reservations.get(0).getInstances();

    	for (Instance i: instances) {
    		System.out.println(i.getInstanceId());
    	}
    }
}

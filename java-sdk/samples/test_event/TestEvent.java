package test_event;

import com.amazonaws.mturk.requester.EventType;
import com.amazonaws.mturk.requester.NotificationSpecification;
import com.amazonaws.mturk.requester.NotificationTransport;
import com.amazonaws.mturk.service.axis.RequesterService;
import com.amazonaws.mturk.util.PropertiesClientConfig;

/**
 * Copyright 2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 */
public class TestEvent {
    final RequesterService service;
    String sqsUrl;

    public TestEvent(String sqsUrl) {
        this.sqsUrl = sqsUrl;
        service = new RequesterService(new PropertiesClientConfig("../mturk.properties"));
    }

    void go() {
        EventType[] events = {EventType.HITReviewable};

        NotificationSpecification sqsNotification = new NotificationSpecification();
        sqsNotification.setTransport(NotificationTransport.SQS);
        sqsNotification.setEventType(events);
        sqsNotification.setDestination(sqsUrl);
        sqsNotification.setVersion("2006-05-05");

        System.out.printf("Sending test event notification to %s\n", sqsUrl);
        service.sendTestEventNotification(sqsNotification, EventType.HITReviewable);
        System.out.printf("Sent test event notification. Go to the AWS Console to see it.\n");
    }

    public static void main(String[] args) {
        if (args.length < 1) {
            throw new IllegalArgumentException("Need SQS url as first argument");
        }

        // http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMechanicalTurkRequester/Concepts_NotificationsArticle.html
        TestEvent app = new TestEvent(args[0]);
        app.go();
    }
}

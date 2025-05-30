Lou wants to track deliveries.  He said that it is important to know how long it takes to get a pizza to the customer from the time it was ordered.

Given this, what additional objects do you think we should add to our conceptual model?

At first I thought we wouldn't need an additional object, that it could be handled by the Order object, but when I thought about it, that would mean that object has more than one purpose.

Given this, I would create a Delivery object.

We can always refactor at a later time, if we find out the extra item isn't needed.

If Lou wants to track the distance from the store to the customer's home, do we need to add another object to the conceptual model?

No,  if we really need to track distance, we can get that information by knowing the store address and customer address.  That information is stored on the Store and Customer objects.

Modify the existing conceptual model to accommodate these two requirements:

1.  Lou wants to track deliveries from store to customer's door step.

2. An employee can deliver to more than one customer at a time.

I settled on creating one object Delivery.



The Delivery represents an employee loading up a vehicle with several customer orders and then driving them to their homes.

In my mind the Delivery object's main purpose is to record which employee is making the delivery and for what orders.  If a customer call's back to ask about their order, the person receiving the call can see whether their pizza is out for delivery.



In the ER diagraming phase, we provide more detail regarding the Delivery object.  For now, the idea is to keep the concepts at a higher level so we don't get to mired in details.
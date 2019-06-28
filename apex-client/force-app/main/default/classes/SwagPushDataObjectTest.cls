@isTest
private class SwagPushDataObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPushDataObject pushDataObject1 = SwagPushDataObject.getExample();
        SwagPushDataObject pushDataObject2 = pushDataObject1;
        SwagPushDataObject pushDataObject3 = new SwagPushDataObject();
        SwagPushDataObject pushDataObject4 = pushDataObject3;

        System.assert(pushDataObject1.equals(pushDataObject2));
        System.assert(pushDataObject2.equals(pushDataObject1));
        System.assert(pushDataObject1.equals(pushDataObject1));
        System.assert(pushDataObject3.equals(pushDataObject4));
        System.assert(pushDataObject4.equals(pushDataObject3));
        System.assert(pushDataObject3.equals(pushDataObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPushDataObject pushDataObject1 = SwagPushDataObject.getExample();
        SwagPushDataObject pushDataObject2 = SwagPushDataObject.getExample();
        SwagPushDataObject pushDataObject3 = new SwagPushDataObject();
        SwagPushDataObject pushDataObject4 = new SwagPushDataObject();

        System.assert(pushDataObject1.equals(pushDataObject2));
        System.assert(pushDataObject2.equals(pushDataObject1));
        System.assert(pushDataObject3.equals(pushDataObject4));
        System.assert(pushDataObject4.equals(pushDataObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPushDataObject pushDataObject1 = SwagPushDataObject.getExample();
        SwagPushDataObject pushDataObject2 = new SwagPushDataObject();

        System.assertEquals(false, pushDataObject1.equals(pushDataObject2));
        System.assertEquals(false, pushDataObject2.equals(pushDataObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPushDataObject pushDataObject1 = SwagPushDataObject.getExample();
        SwagPushDataObject pushDataObject2 = new SwagPushDataObject();

        System.assertEquals(false, pushDataObject1.equals('foo'));
        System.assertEquals(false, pushDataObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPushDataObject pushDataObject1 = SwagPushDataObject.getExample();
        SwagPushDataObject pushDataObject2 = new SwagPushDataObject();
        SwagPushDataObject pushDataObject3;

        System.assertEquals(false, pushDataObject1.equals(pushDataObject3));
        System.assertEquals(false, pushDataObject2.equals(pushDataObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPushDataObject pushDataObject1 = SwagPushDataObject.getExample();
        SwagPushDataObject pushDataObject2 = new SwagPushDataObject();

        System.assertEquals(pushDataObject1.hashCode(), pushDataObject1.hashCode());
        System.assertEquals(pushDataObject2.hashCode(), pushDataObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPushDataObject pushDataObject1 = SwagPushDataObject.getExample();
        SwagPushDataObject pushDataObject2 = SwagPushDataObject.getExample();
        SwagPushDataObject pushDataObject3 = new SwagPushDataObject();
        SwagPushDataObject pushDataObject4 = new SwagPushDataObject();

        System.assert(pushDataObject1.equals(pushDataObject2));
        System.assert(pushDataObject3.equals(pushDataObject4));
        System.assertEquals(pushDataObject1.hashCode(), pushDataObject2.hashCode());
        System.assertEquals(pushDataObject3.hashCode(), pushDataObject4.hashCode());
    }
}

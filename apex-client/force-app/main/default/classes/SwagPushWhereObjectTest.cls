@isTest
private class SwagPushWhereObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPushWhereObject pushWhereObject1 = SwagPushWhereObject.getExample();
        SwagPushWhereObject pushWhereObject2 = pushWhereObject1;
        SwagPushWhereObject pushWhereObject3 = new SwagPushWhereObject();
        SwagPushWhereObject pushWhereObject4 = pushWhereObject3;

        System.assert(pushWhereObject1.equals(pushWhereObject2));
        System.assert(pushWhereObject2.equals(pushWhereObject1));
        System.assert(pushWhereObject1.equals(pushWhereObject1));
        System.assert(pushWhereObject3.equals(pushWhereObject4));
        System.assert(pushWhereObject4.equals(pushWhereObject3));
        System.assert(pushWhereObject3.equals(pushWhereObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPushWhereObject pushWhereObject1 = SwagPushWhereObject.getExample();
        SwagPushWhereObject pushWhereObject2 = SwagPushWhereObject.getExample();
        SwagPushWhereObject pushWhereObject3 = new SwagPushWhereObject();
        SwagPushWhereObject pushWhereObject4 = new SwagPushWhereObject();

        System.assert(pushWhereObject1.equals(pushWhereObject2));
        System.assert(pushWhereObject2.equals(pushWhereObject1));
        System.assert(pushWhereObject3.equals(pushWhereObject4));
        System.assert(pushWhereObject4.equals(pushWhereObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPushWhereObject pushWhereObject1 = SwagPushWhereObject.getExample();
        SwagPushWhereObject pushWhereObject2 = new SwagPushWhereObject();

        System.assertEquals(false, pushWhereObject1.equals(pushWhereObject2));
        System.assertEquals(false, pushWhereObject2.equals(pushWhereObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPushWhereObject pushWhereObject1 = SwagPushWhereObject.getExample();
        SwagPushWhereObject pushWhereObject2 = new SwagPushWhereObject();

        System.assertEquals(false, pushWhereObject1.equals('foo'));
        System.assertEquals(false, pushWhereObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPushWhereObject pushWhereObject1 = SwagPushWhereObject.getExample();
        SwagPushWhereObject pushWhereObject2 = new SwagPushWhereObject();
        SwagPushWhereObject pushWhereObject3;

        System.assertEquals(false, pushWhereObject1.equals(pushWhereObject3));
        System.assertEquals(false, pushWhereObject2.equals(pushWhereObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPushWhereObject pushWhereObject1 = SwagPushWhereObject.getExample();
        SwagPushWhereObject pushWhereObject2 = new SwagPushWhereObject();

        System.assertEquals(pushWhereObject1.hashCode(), pushWhereObject1.hashCode());
        System.assertEquals(pushWhereObject2.hashCode(), pushWhereObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPushWhereObject pushWhereObject1 = SwagPushWhereObject.getExample();
        SwagPushWhereObject pushWhereObject2 = SwagPushWhereObject.getExample();
        SwagPushWhereObject pushWhereObject3 = new SwagPushWhereObject();
        SwagPushWhereObject pushWhereObject4 = new SwagPushWhereObject();

        System.assert(pushWhereObject1.equals(pushWhereObject2));
        System.assert(pushWhereObject3.equals(pushWhereObject4));
        System.assertEquals(pushWhereObject1.hashCode(), pushWhereObject2.hashCode());
        System.assertEquals(pushWhereObject3.hashCode(), pushWhereObject4.hashCode());
    }
}

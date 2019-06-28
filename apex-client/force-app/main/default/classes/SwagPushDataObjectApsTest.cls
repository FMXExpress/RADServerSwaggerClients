@isTest
private class SwagPushDataObjectApsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPushDataObjectAps pushDataObjectAps1 = SwagPushDataObjectAps.getExample();
        SwagPushDataObjectAps pushDataObjectAps2 = pushDataObjectAps1;
        SwagPushDataObjectAps pushDataObjectAps3 = new SwagPushDataObjectAps();
        SwagPushDataObjectAps pushDataObjectAps4 = pushDataObjectAps3;

        System.assert(pushDataObjectAps1.equals(pushDataObjectAps2));
        System.assert(pushDataObjectAps2.equals(pushDataObjectAps1));
        System.assert(pushDataObjectAps1.equals(pushDataObjectAps1));
        System.assert(pushDataObjectAps3.equals(pushDataObjectAps4));
        System.assert(pushDataObjectAps4.equals(pushDataObjectAps3));
        System.assert(pushDataObjectAps3.equals(pushDataObjectAps3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPushDataObjectAps pushDataObjectAps1 = SwagPushDataObjectAps.getExample();
        SwagPushDataObjectAps pushDataObjectAps2 = SwagPushDataObjectAps.getExample();
        SwagPushDataObjectAps pushDataObjectAps3 = new SwagPushDataObjectAps();
        SwagPushDataObjectAps pushDataObjectAps4 = new SwagPushDataObjectAps();

        System.assert(pushDataObjectAps1.equals(pushDataObjectAps2));
        System.assert(pushDataObjectAps2.equals(pushDataObjectAps1));
        System.assert(pushDataObjectAps3.equals(pushDataObjectAps4));
        System.assert(pushDataObjectAps4.equals(pushDataObjectAps3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPushDataObjectAps pushDataObjectAps1 = SwagPushDataObjectAps.getExample();
        SwagPushDataObjectAps pushDataObjectAps2 = new SwagPushDataObjectAps();

        System.assertEquals(false, pushDataObjectAps1.equals(pushDataObjectAps2));
        System.assertEquals(false, pushDataObjectAps2.equals(pushDataObjectAps1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPushDataObjectAps pushDataObjectAps1 = SwagPushDataObjectAps.getExample();
        SwagPushDataObjectAps pushDataObjectAps2 = new SwagPushDataObjectAps();

        System.assertEquals(false, pushDataObjectAps1.equals('foo'));
        System.assertEquals(false, pushDataObjectAps2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPushDataObjectAps pushDataObjectAps1 = SwagPushDataObjectAps.getExample();
        SwagPushDataObjectAps pushDataObjectAps2 = new SwagPushDataObjectAps();
        SwagPushDataObjectAps pushDataObjectAps3;

        System.assertEquals(false, pushDataObjectAps1.equals(pushDataObjectAps3));
        System.assertEquals(false, pushDataObjectAps2.equals(pushDataObjectAps3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPushDataObjectAps pushDataObjectAps1 = SwagPushDataObjectAps.getExample();
        SwagPushDataObjectAps pushDataObjectAps2 = new SwagPushDataObjectAps();

        System.assertEquals(pushDataObjectAps1.hashCode(), pushDataObjectAps1.hashCode());
        System.assertEquals(pushDataObjectAps2.hashCode(), pushDataObjectAps2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPushDataObjectAps pushDataObjectAps1 = SwagPushDataObjectAps.getExample();
        SwagPushDataObjectAps pushDataObjectAps2 = SwagPushDataObjectAps.getExample();
        SwagPushDataObjectAps pushDataObjectAps3 = new SwagPushDataObjectAps();
        SwagPushDataObjectAps pushDataObjectAps4 = new SwagPushDataObjectAps();

        System.assert(pushDataObjectAps1.equals(pushDataObjectAps2));
        System.assert(pushDataObjectAps3.equals(pushDataObjectAps4));
        System.assertEquals(pushDataObjectAps1.hashCode(), pushDataObjectAps2.hashCode());
        System.assertEquals(pushDataObjectAps3.hashCode(), pushDataObjectAps4.hashCode());
    }
}

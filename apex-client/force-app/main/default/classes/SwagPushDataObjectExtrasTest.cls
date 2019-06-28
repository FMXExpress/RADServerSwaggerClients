@isTest
private class SwagPushDataObjectExtrasTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPushDataObjectExtras pushDataObjectExtras1 = SwagPushDataObjectExtras.getExample();
        SwagPushDataObjectExtras pushDataObjectExtras2 = pushDataObjectExtras1;
        SwagPushDataObjectExtras pushDataObjectExtras3 = new SwagPushDataObjectExtras();
        SwagPushDataObjectExtras pushDataObjectExtras4 = pushDataObjectExtras3;

        System.assert(pushDataObjectExtras1.equals(pushDataObjectExtras2));
        System.assert(pushDataObjectExtras2.equals(pushDataObjectExtras1));
        System.assert(pushDataObjectExtras1.equals(pushDataObjectExtras1));
        System.assert(pushDataObjectExtras3.equals(pushDataObjectExtras4));
        System.assert(pushDataObjectExtras4.equals(pushDataObjectExtras3));
        System.assert(pushDataObjectExtras3.equals(pushDataObjectExtras3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPushDataObjectExtras pushDataObjectExtras1 = SwagPushDataObjectExtras.getExample();
        SwagPushDataObjectExtras pushDataObjectExtras2 = SwagPushDataObjectExtras.getExample();
        SwagPushDataObjectExtras pushDataObjectExtras3 = new SwagPushDataObjectExtras();
        SwagPushDataObjectExtras pushDataObjectExtras4 = new SwagPushDataObjectExtras();

        System.assert(pushDataObjectExtras1.equals(pushDataObjectExtras2));
        System.assert(pushDataObjectExtras2.equals(pushDataObjectExtras1));
        System.assert(pushDataObjectExtras3.equals(pushDataObjectExtras4));
        System.assert(pushDataObjectExtras4.equals(pushDataObjectExtras3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPushDataObjectExtras pushDataObjectExtras1 = SwagPushDataObjectExtras.getExample();
        SwagPushDataObjectExtras pushDataObjectExtras2 = new SwagPushDataObjectExtras();

        System.assertEquals(false, pushDataObjectExtras1.equals(pushDataObjectExtras2));
        System.assertEquals(false, pushDataObjectExtras2.equals(pushDataObjectExtras1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPushDataObjectExtras pushDataObjectExtras1 = SwagPushDataObjectExtras.getExample();
        SwagPushDataObjectExtras pushDataObjectExtras2 = new SwagPushDataObjectExtras();

        System.assertEquals(false, pushDataObjectExtras1.equals('foo'));
        System.assertEquals(false, pushDataObjectExtras2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPushDataObjectExtras pushDataObjectExtras1 = SwagPushDataObjectExtras.getExample();
        SwagPushDataObjectExtras pushDataObjectExtras2 = new SwagPushDataObjectExtras();
        SwagPushDataObjectExtras pushDataObjectExtras3;

        System.assertEquals(false, pushDataObjectExtras1.equals(pushDataObjectExtras3));
        System.assertEquals(false, pushDataObjectExtras2.equals(pushDataObjectExtras3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPushDataObjectExtras pushDataObjectExtras1 = SwagPushDataObjectExtras.getExample();
        SwagPushDataObjectExtras pushDataObjectExtras2 = new SwagPushDataObjectExtras();

        System.assertEquals(pushDataObjectExtras1.hashCode(), pushDataObjectExtras1.hashCode());
        System.assertEquals(pushDataObjectExtras2.hashCode(), pushDataObjectExtras2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPushDataObjectExtras pushDataObjectExtras1 = SwagPushDataObjectExtras.getExample();
        SwagPushDataObjectExtras pushDataObjectExtras2 = SwagPushDataObjectExtras.getExample();
        SwagPushDataObjectExtras pushDataObjectExtras3 = new SwagPushDataObjectExtras();
        SwagPushDataObjectExtras pushDataObjectExtras4 = new SwagPushDataObjectExtras();

        System.assert(pushDataObjectExtras1.equals(pushDataObjectExtras2));
        System.assert(pushDataObjectExtras3.equals(pushDataObjectExtras4));
        System.assertEquals(pushDataObjectExtras1.hashCode(), pushDataObjectExtras2.hashCode());
        System.assertEquals(pushDataObjectExtras3.hashCode(), pushDataObjectExtras4.hashCode());
    }
}

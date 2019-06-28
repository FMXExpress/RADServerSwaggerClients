@isTest
private class SwagPushDataObjectGcmTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPushDataObjectGcm pushDataObjectGcm1 = SwagPushDataObjectGcm.getExample();
        SwagPushDataObjectGcm pushDataObjectGcm2 = pushDataObjectGcm1;
        SwagPushDataObjectGcm pushDataObjectGcm3 = new SwagPushDataObjectGcm();
        SwagPushDataObjectGcm pushDataObjectGcm4 = pushDataObjectGcm3;

        System.assert(pushDataObjectGcm1.equals(pushDataObjectGcm2));
        System.assert(pushDataObjectGcm2.equals(pushDataObjectGcm1));
        System.assert(pushDataObjectGcm1.equals(pushDataObjectGcm1));
        System.assert(pushDataObjectGcm3.equals(pushDataObjectGcm4));
        System.assert(pushDataObjectGcm4.equals(pushDataObjectGcm3));
        System.assert(pushDataObjectGcm3.equals(pushDataObjectGcm3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPushDataObjectGcm pushDataObjectGcm1 = SwagPushDataObjectGcm.getExample();
        SwagPushDataObjectGcm pushDataObjectGcm2 = SwagPushDataObjectGcm.getExample();
        SwagPushDataObjectGcm pushDataObjectGcm3 = new SwagPushDataObjectGcm();
        SwagPushDataObjectGcm pushDataObjectGcm4 = new SwagPushDataObjectGcm();

        System.assert(pushDataObjectGcm1.equals(pushDataObjectGcm2));
        System.assert(pushDataObjectGcm2.equals(pushDataObjectGcm1));
        System.assert(pushDataObjectGcm3.equals(pushDataObjectGcm4));
        System.assert(pushDataObjectGcm4.equals(pushDataObjectGcm3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPushDataObjectGcm pushDataObjectGcm1 = SwagPushDataObjectGcm.getExample();
        SwagPushDataObjectGcm pushDataObjectGcm2 = new SwagPushDataObjectGcm();

        System.assertEquals(false, pushDataObjectGcm1.equals(pushDataObjectGcm2));
        System.assertEquals(false, pushDataObjectGcm2.equals(pushDataObjectGcm1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPushDataObjectGcm pushDataObjectGcm1 = SwagPushDataObjectGcm.getExample();
        SwagPushDataObjectGcm pushDataObjectGcm2 = new SwagPushDataObjectGcm();

        System.assertEquals(false, pushDataObjectGcm1.equals('foo'));
        System.assertEquals(false, pushDataObjectGcm2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPushDataObjectGcm pushDataObjectGcm1 = SwagPushDataObjectGcm.getExample();
        SwagPushDataObjectGcm pushDataObjectGcm2 = new SwagPushDataObjectGcm();
        SwagPushDataObjectGcm pushDataObjectGcm3;

        System.assertEquals(false, pushDataObjectGcm1.equals(pushDataObjectGcm3));
        System.assertEquals(false, pushDataObjectGcm2.equals(pushDataObjectGcm3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPushDataObjectGcm pushDataObjectGcm1 = SwagPushDataObjectGcm.getExample();
        SwagPushDataObjectGcm pushDataObjectGcm2 = new SwagPushDataObjectGcm();

        System.assertEquals(pushDataObjectGcm1.hashCode(), pushDataObjectGcm1.hashCode());
        System.assertEquals(pushDataObjectGcm2.hashCode(), pushDataObjectGcm2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPushDataObjectGcm pushDataObjectGcm1 = SwagPushDataObjectGcm.getExample();
        SwagPushDataObjectGcm pushDataObjectGcm2 = SwagPushDataObjectGcm.getExample();
        SwagPushDataObjectGcm pushDataObjectGcm3 = new SwagPushDataObjectGcm();
        SwagPushDataObjectGcm pushDataObjectGcm4 = new SwagPushDataObjectGcm();

        System.assert(pushDataObjectGcm1.equals(pushDataObjectGcm2));
        System.assert(pushDataObjectGcm3.equals(pushDataObjectGcm4));
        System.assertEquals(pushDataObjectGcm1.hashCode(), pushDataObjectGcm2.hashCode());
        System.assertEquals(pushDataObjectGcm3.hashCode(), pushDataObjectGcm4.hashCode());
    }
}

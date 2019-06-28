@isTest
private class SwagPushWhereObjectDeviceTokenTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken1 = SwagPushWhereObjectDeviceToken.getExample();
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken2 = pushWhereObjectDeviceToken1;
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken3 = new SwagPushWhereObjectDeviceToken();
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken4 = pushWhereObjectDeviceToken3;

        System.assert(pushWhereObjectDeviceToken1.equals(pushWhereObjectDeviceToken2));
        System.assert(pushWhereObjectDeviceToken2.equals(pushWhereObjectDeviceToken1));
        System.assert(pushWhereObjectDeviceToken1.equals(pushWhereObjectDeviceToken1));
        System.assert(pushWhereObjectDeviceToken3.equals(pushWhereObjectDeviceToken4));
        System.assert(pushWhereObjectDeviceToken4.equals(pushWhereObjectDeviceToken3));
        System.assert(pushWhereObjectDeviceToken3.equals(pushWhereObjectDeviceToken3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken1 = SwagPushWhereObjectDeviceToken.getExample();
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken2 = SwagPushWhereObjectDeviceToken.getExample();
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken3 = new SwagPushWhereObjectDeviceToken();
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken4 = new SwagPushWhereObjectDeviceToken();

        System.assert(pushWhereObjectDeviceToken1.equals(pushWhereObjectDeviceToken2));
        System.assert(pushWhereObjectDeviceToken2.equals(pushWhereObjectDeviceToken1));
        System.assert(pushWhereObjectDeviceToken3.equals(pushWhereObjectDeviceToken4));
        System.assert(pushWhereObjectDeviceToken4.equals(pushWhereObjectDeviceToken3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken1 = SwagPushWhereObjectDeviceToken.getExample();
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken2 = new SwagPushWhereObjectDeviceToken();

        System.assertEquals(false, pushWhereObjectDeviceToken1.equals(pushWhereObjectDeviceToken2));
        System.assertEquals(false, pushWhereObjectDeviceToken2.equals(pushWhereObjectDeviceToken1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken1 = SwagPushWhereObjectDeviceToken.getExample();
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken2 = new SwagPushWhereObjectDeviceToken();

        System.assertEquals(false, pushWhereObjectDeviceToken1.equals('foo'));
        System.assertEquals(false, pushWhereObjectDeviceToken2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken1 = SwagPushWhereObjectDeviceToken.getExample();
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken2 = new SwagPushWhereObjectDeviceToken();
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken3;

        System.assertEquals(false, pushWhereObjectDeviceToken1.equals(pushWhereObjectDeviceToken3));
        System.assertEquals(false, pushWhereObjectDeviceToken2.equals(pushWhereObjectDeviceToken3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken1 = SwagPushWhereObjectDeviceToken.getExample();
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken2 = new SwagPushWhereObjectDeviceToken();

        System.assertEquals(pushWhereObjectDeviceToken1.hashCode(), pushWhereObjectDeviceToken1.hashCode());
        System.assertEquals(pushWhereObjectDeviceToken2.hashCode(), pushWhereObjectDeviceToken2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken1 = SwagPushWhereObjectDeviceToken.getExample();
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken2 = SwagPushWhereObjectDeviceToken.getExample();
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken3 = new SwagPushWhereObjectDeviceToken();
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken4 = new SwagPushWhereObjectDeviceToken();

        System.assert(pushWhereObjectDeviceToken1.equals(pushWhereObjectDeviceToken2));
        System.assert(pushWhereObjectDeviceToken3.equals(pushWhereObjectDeviceToken4));
        System.assertEquals(pushWhereObjectDeviceToken1.hashCode(), pushWhereObjectDeviceToken2.hashCode());
        System.assertEquals(pushWhereObjectDeviceToken3.hashCode(), pushWhereObjectDeviceToken4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken = new SwagPushWhereObjectDeviceToken();
        Map<String, String> propertyMappings = pushWhereObjectDeviceToken.getPropertyMappings();
        System.assertEquals('in', propertyMappings.get('$in'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagPushWhereObjectDeviceToken pushWhereObjectDeviceToken = new SwagPushWhereObjectDeviceToken();
        System.assertEquals(new List<String>(), pushWhereObjectDeviceToken.in);
    }
}

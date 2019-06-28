@isTest
private class SwagUserTokenObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagUserTokenObject userTokenObject1 = SwagUserTokenObject.getExample();
        SwagUserTokenObject userTokenObject2 = userTokenObject1;
        SwagUserTokenObject userTokenObject3 = new SwagUserTokenObject();
        SwagUserTokenObject userTokenObject4 = userTokenObject3;

        System.assert(userTokenObject1.equals(userTokenObject2));
        System.assert(userTokenObject2.equals(userTokenObject1));
        System.assert(userTokenObject1.equals(userTokenObject1));
        System.assert(userTokenObject3.equals(userTokenObject4));
        System.assert(userTokenObject4.equals(userTokenObject3));
        System.assert(userTokenObject3.equals(userTokenObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagUserTokenObject userTokenObject1 = SwagUserTokenObject.getExample();
        SwagUserTokenObject userTokenObject2 = SwagUserTokenObject.getExample();
        SwagUserTokenObject userTokenObject3 = new SwagUserTokenObject();
        SwagUserTokenObject userTokenObject4 = new SwagUserTokenObject();

        System.assert(userTokenObject1.equals(userTokenObject2));
        System.assert(userTokenObject2.equals(userTokenObject1));
        System.assert(userTokenObject3.equals(userTokenObject4));
        System.assert(userTokenObject4.equals(userTokenObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagUserTokenObject userTokenObject1 = SwagUserTokenObject.getExample();
        SwagUserTokenObject userTokenObject2 = new SwagUserTokenObject();

        System.assertEquals(false, userTokenObject1.equals(userTokenObject2));
        System.assertEquals(false, userTokenObject2.equals(userTokenObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagUserTokenObject userTokenObject1 = SwagUserTokenObject.getExample();
        SwagUserTokenObject userTokenObject2 = new SwagUserTokenObject();

        System.assertEquals(false, userTokenObject1.equals('foo'));
        System.assertEquals(false, userTokenObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagUserTokenObject userTokenObject1 = SwagUserTokenObject.getExample();
        SwagUserTokenObject userTokenObject2 = new SwagUserTokenObject();
        SwagUserTokenObject userTokenObject3;

        System.assertEquals(false, userTokenObject1.equals(userTokenObject3));
        System.assertEquals(false, userTokenObject2.equals(userTokenObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagUserTokenObject userTokenObject1 = SwagUserTokenObject.getExample();
        SwagUserTokenObject userTokenObject2 = new SwagUserTokenObject();

        System.assertEquals(userTokenObject1.hashCode(), userTokenObject1.hashCode());
        System.assertEquals(userTokenObject2.hashCode(), userTokenObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagUserTokenObject userTokenObject1 = SwagUserTokenObject.getExample();
        SwagUserTokenObject userTokenObject2 = SwagUserTokenObject.getExample();
        SwagUserTokenObject userTokenObject3 = new SwagUserTokenObject();
        SwagUserTokenObject userTokenObject4 = new SwagUserTokenObject();

        System.assert(userTokenObject1.equals(userTokenObject2));
        System.assert(userTokenObject3.equals(userTokenObject4));
        System.assertEquals(userTokenObject1.hashCode(), userTokenObject2.hashCode());
        System.assertEquals(userTokenObject3.hashCode(), userTokenObject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagUserTokenObject userTokenObject = new SwagUserTokenObject();
        Map<String, String> propertyMappings = userTokenObject.getPropertyMappings();
        System.assertEquals('meta', propertyMappings.get('_meta'));
    }
}

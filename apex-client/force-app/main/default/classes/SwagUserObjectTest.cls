@isTest
private class SwagUserObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagUserObject userObject1 = SwagUserObject.getExample();
        SwagUserObject userObject2 = userObject1;
        SwagUserObject userObject3 = new SwagUserObject();
        SwagUserObject userObject4 = userObject3;

        System.assert(userObject1.equals(userObject2));
        System.assert(userObject2.equals(userObject1));
        System.assert(userObject1.equals(userObject1));
        System.assert(userObject3.equals(userObject4));
        System.assert(userObject4.equals(userObject3));
        System.assert(userObject3.equals(userObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagUserObject userObject1 = SwagUserObject.getExample();
        SwagUserObject userObject2 = SwagUserObject.getExample();
        SwagUserObject userObject3 = new SwagUserObject();
        SwagUserObject userObject4 = new SwagUserObject();

        System.assert(userObject1.equals(userObject2));
        System.assert(userObject2.equals(userObject1));
        System.assert(userObject3.equals(userObject4));
        System.assert(userObject4.equals(userObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagUserObject userObject1 = SwagUserObject.getExample();
        SwagUserObject userObject2 = new SwagUserObject();

        System.assertEquals(false, userObject1.equals(userObject2));
        System.assertEquals(false, userObject2.equals(userObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagUserObject userObject1 = SwagUserObject.getExample();
        SwagUserObject userObject2 = new SwagUserObject();

        System.assertEquals(false, userObject1.equals('foo'));
        System.assertEquals(false, userObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagUserObject userObject1 = SwagUserObject.getExample();
        SwagUserObject userObject2 = new SwagUserObject();
        SwagUserObject userObject3;

        System.assertEquals(false, userObject1.equals(userObject3));
        System.assertEquals(false, userObject2.equals(userObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagUserObject userObject1 = SwagUserObject.getExample();
        SwagUserObject userObject2 = new SwagUserObject();

        System.assertEquals(userObject1.hashCode(), userObject1.hashCode());
        System.assertEquals(userObject2.hashCode(), userObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagUserObject userObject1 = SwagUserObject.getExample();
        SwagUserObject userObject2 = SwagUserObject.getExample();
        SwagUserObject userObject3 = new SwagUserObject();
        SwagUserObject userObject4 = new SwagUserObject();

        System.assert(userObject1.equals(userObject2));
        System.assert(userObject3.equals(userObject4));
        System.assertEquals(userObject1.hashCode(), userObject2.hashCode());
        System.assertEquals(userObject3.hashCode(), userObject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagUserObject userObject = new SwagUserObject();
        Map<String, String> propertyMappings = userObject.getPropertyMappings();
        System.assertEquals('meta', propertyMappings.get('_meta'));
    }
}

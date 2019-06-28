@isTest
private class SwagUserSignUpResponseObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagUserSignUpResponseObject userSignUpResponseObject1 = SwagUserSignUpResponseObject.getExample();
        SwagUserSignUpResponseObject userSignUpResponseObject2 = userSignUpResponseObject1;
        SwagUserSignUpResponseObject userSignUpResponseObject3 = new SwagUserSignUpResponseObject();
        SwagUserSignUpResponseObject userSignUpResponseObject4 = userSignUpResponseObject3;

        System.assert(userSignUpResponseObject1.equals(userSignUpResponseObject2));
        System.assert(userSignUpResponseObject2.equals(userSignUpResponseObject1));
        System.assert(userSignUpResponseObject1.equals(userSignUpResponseObject1));
        System.assert(userSignUpResponseObject3.equals(userSignUpResponseObject4));
        System.assert(userSignUpResponseObject4.equals(userSignUpResponseObject3));
        System.assert(userSignUpResponseObject3.equals(userSignUpResponseObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagUserSignUpResponseObject userSignUpResponseObject1 = SwagUserSignUpResponseObject.getExample();
        SwagUserSignUpResponseObject userSignUpResponseObject2 = SwagUserSignUpResponseObject.getExample();
        SwagUserSignUpResponseObject userSignUpResponseObject3 = new SwagUserSignUpResponseObject();
        SwagUserSignUpResponseObject userSignUpResponseObject4 = new SwagUserSignUpResponseObject();

        System.assert(userSignUpResponseObject1.equals(userSignUpResponseObject2));
        System.assert(userSignUpResponseObject2.equals(userSignUpResponseObject1));
        System.assert(userSignUpResponseObject3.equals(userSignUpResponseObject4));
        System.assert(userSignUpResponseObject4.equals(userSignUpResponseObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagUserSignUpResponseObject userSignUpResponseObject1 = SwagUserSignUpResponseObject.getExample();
        SwagUserSignUpResponseObject userSignUpResponseObject2 = new SwagUserSignUpResponseObject();

        System.assertEquals(false, userSignUpResponseObject1.equals(userSignUpResponseObject2));
        System.assertEquals(false, userSignUpResponseObject2.equals(userSignUpResponseObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagUserSignUpResponseObject userSignUpResponseObject1 = SwagUserSignUpResponseObject.getExample();
        SwagUserSignUpResponseObject userSignUpResponseObject2 = new SwagUserSignUpResponseObject();

        System.assertEquals(false, userSignUpResponseObject1.equals('foo'));
        System.assertEquals(false, userSignUpResponseObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagUserSignUpResponseObject userSignUpResponseObject1 = SwagUserSignUpResponseObject.getExample();
        SwagUserSignUpResponseObject userSignUpResponseObject2 = new SwagUserSignUpResponseObject();
        SwagUserSignUpResponseObject userSignUpResponseObject3;

        System.assertEquals(false, userSignUpResponseObject1.equals(userSignUpResponseObject3));
        System.assertEquals(false, userSignUpResponseObject2.equals(userSignUpResponseObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagUserSignUpResponseObject userSignUpResponseObject1 = SwagUserSignUpResponseObject.getExample();
        SwagUserSignUpResponseObject userSignUpResponseObject2 = new SwagUserSignUpResponseObject();

        System.assertEquals(userSignUpResponseObject1.hashCode(), userSignUpResponseObject1.hashCode());
        System.assertEquals(userSignUpResponseObject2.hashCode(), userSignUpResponseObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagUserSignUpResponseObject userSignUpResponseObject1 = SwagUserSignUpResponseObject.getExample();
        SwagUserSignUpResponseObject userSignUpResponseObject2 = SwagUserSignUpResponseObject.getExample();
        SwagUserSignUpResponseObject userSignUpResponseObject3 = new SwagUserSignUpResponseObject();
        SwagUserSignUpResponseObject userSignUpResponseObject4 = new SwagUserSignUpResponseObject();

        System.assert(userSignUpResponseObject1.equals(userSignUpResponseObject2));
        System.assert(userSignUpResponseObject3.equals(userSignUpResponseObject4));
        System.assertEquals(userSignUpResponseObject1.hashCode(), userSignUpResponseObject2.hashCode());
        System.assertEquals(userSignUpResponseObject3.hashCode(), userSignUpResponseObject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagUserSignUpResponseObject userSignUpResponseObject = new SwagUserSignUpResponseObject();
        Map<String, String> propertyMappings = userSignUpResponseObject.getPropertyMappings();
        System.assertEquals('id', propertyMappings.get('_id'));
    }
}

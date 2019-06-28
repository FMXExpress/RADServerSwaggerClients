@isTest
private class SwagUserCredentialsObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagUserCredentialsObject userCredentialsObject1 = SwagUserCredentialsObject.getExample();
        SwagUserCredentialsObject userCredentialsObject2 = userCredentialsObject1;
        SwagUserCredentialsObject userCredentialsObject3 = new SwagUserCredentialsObject();
        SwagUserCredentialsObject userCredentialsObject4 = userCredentialsObject3;

        System.assert(userCredentialsObject1.equals(userCredentialsObject2));
        System.assert(userCredentialsObject2.equals(userCredentialsObject1));
        System.assert(userCredentialsObject1.equals(userCredentialsObject1));
        System.assert(userCredentialsObject3.equals(userCredentialsObject4));
        System.assert(userCredentialsObject4.equals(userCredentialsObject3));
        System.assert(userCredentialsObject3.equals(userCredentialsObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagUserCredentialsObject userCredentialsObject1 = SwagUserCredentialsObject.getExample();
        SwagUserCredentialsObject userCredentialsObject2 = SwagUserCredentialsObject.getExample();
        SwagUserCredentialsObject userCredentialsObject3 = new SwagUserCredentialsObject();
        SwagUserCredentialsObject userCredentialsObject4 = new SwagUserCredentialsObject();

        System.assert(userCredentialsObject1.equals(userCredentialsObject2));
        System.assert(userCredentialsObject2.equals(userCredentialsObject1));
        System.assert(userCredentialsObject3.equals(userCredentialsObject4));
        System.assert(userCredentialsObject4.equals(userCredentialsObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagUserCredentialsObject userCredentialsObject1 = SwagUserCredentialsObject.getExample();
        SwagUserCredentialsObject userCredentialsObject2 = new SwagUserCredentialsObject();

        System.assertEquals(false, userCredentialsObject1.equals(userCredentialsObject2));
        System.assertEquals(false, userCredentialsObject2.equals(userCredentialsObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagUserCredentialsObject userCredentialsObject1 = SwagUserCredentialsObject.getExample();
        SwagUserCredentialsObject userCredentialsObject2 = new SwagUserCredentialsObject();

        System.assertEquals(false, userCredentialsObject1.equals('foo'));
        System.assertEquals(false, userCredentialsObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagUserCredentialsObject userCredentialsObject1 = SwagUserCredentialsObject.getExample();
        SwagUserCredentialsObject userCredentialsObject2 = new SwagUserCredentialsObject();
        SwagUserCredentialsObject userCredentialsObject3;

        System.assertEquals(false, userCredentialsObject1.equals(userCredentialsObject3));
        System.assertEquals(false, userCredentialsObject2.equals(userCredentialsObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagUserCredentialsObject userCredentialsObject1 = SwagUserCredentialsObject.getExample();
        SwagUserCredentialsObject userCredentialsObject2 = new SwagUserCredentialsObject();

        System.assertEquals(userCredentialsObject1.hashCode(), userCredentialsObject1.hashCode());
        System.assertEquals(userCredentialsObject2.hashCode(), userCredentialsObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagUserCredentialsObject userCredentialsObject1 = SwagUserCredentialsObject.getExample();
        SwagUserCredentialsObject userCredentialsObject2 = SwagUserCredentialsObject.getExample();
        SwagUserCredentialsObject userCredentialsObject3 = new SwagUserCredentialsObject();
        SwagUserCredentialsObject userCredentialsObject4 = new SwagUserCredentialsObject();

        System.assert(userCredentialsObject1.equals(userCredentialsObject2));
        System.assert(userCredentialsObject3.equals(userCredentialsObject4));
        System.assertEquals(userCredentialsObject1.hashCode(), userCredentialsObject2.hashCode());
        System.assertEquals(userCredentialsObject3.hashCode(), userCredentialsObject4.hashCode());
    }
}

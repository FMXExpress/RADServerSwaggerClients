@isTest
private class SwagUpdateObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagUpdateObject updateObject1 = SwagUpdateObject.getExample();
        SwagUpdateObject updateObject2 = updateObject1;
        SwagUpdateObject updateObject3 = new SwagUpdateObject();
        SwagUpdateObject updateObject4 = updateObject3;

        System.assert(updateObject1.equals(updateObject2));
        System.assert(updateObject2.equals(updateObject1));
        System.assert(updateObject1.equals(updateObject1));
        System.assert(updateObject3.equals(updateObject4));
        System.assert(updateObject4.equals(updateObject3));
        System.assert(updateObject3.equals(updateObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagUpdateObject updateObject1 = SwagUpdateObject.getExample();
        SwagUpdateObject updateObject2 = SwagUpdateObject.getExample();
        SwagUpdateObject updateObject3 = new SwagUpdateObject();
        SwagUpdateObject updateObject4 = new SwagUpdateObject();

        System.assert(updateObject1.equals(updateObject2));
        System.assert(updateObject2.equals(updateObject1));
        System.assert(updateObject3.equals(updateObject4));
        System.assert(updateObject4.equals(updateObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagUpdateObject updateObject1 = SwagUpdateObject.getExample();
        SwagUpdateObject updateObject2 = new SwagUpdateObject();

        System.assertEquals(false, updateObject1.equals(updateObject2));
        System.assertEquals(false, updateObject2.equals(updateObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagUpdateObject updateObject1 = SwagUpdateObject.getExample();
        SwagUpdateObject updateObject2 = new SwagUpdateObject();

        System.assertEquals(false, updateObject1.equals('foo'));
        System.assertEquals(false, updateObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagUpdateObject updateObject1 = SwagUpdateObject.getExample();
        SwagUpdateObject updateObject2 = new SwagUpdateObject();
        SwagUpdateObject updateObject3;

        System.assertEquals(false, updateObject1.equals(updateObject3));
        System.assertEquals(false, updateObject2.equals(updateObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagUpdateObject updateObject1 = SwagUpdateObject.getExample();
        SwagUpdateObject updateObject2 = new SwagUpdateObject();

        System.assertEquals(updateObject1.hashCode(), updateObject1.hashCode());
        System.assertEquals(updateObject2.hashCode(), updateObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagUpdateObject updateObject1 = SwagUpdateObject.getExample();
        SwagUpdateObject updateObject2 = SwagUpdateObject.getExample();
        SwagUpdateObject updateObject3 = new SwagUpdateObject();
        SwagUpdateObject updateObject4 = new SwagUpdateObject();

        System.assert(updateObject1.equals(updateObject2));
        System.assert(updateObject3.equals(updateObject4));
        System.assertEquals(updateObject1.hashCode(), updateObject2.hashCode());
        System.assertEquals(updateObject3.hashCode(), updateObject4.hashCode());
    }
}

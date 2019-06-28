@isTest
private class SwagMetaGroupObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagMetaGroupObject metaGroupObject1 = SwagMetaGroupObject.getExample();
        SwagMetaGroupObject metaGroupObject2 = metaGroupObject1;
        SwagMetaGroupObject metaGroupObject3 = new SwagMetaGroupObject();
        SwagMetaGroupObject metaGroupObject4 = metaGroupObject3;

        System.assert(metaGroupObject1.equals(metaGroupObject2));
        System.assert(metaGroupObject2.equals(metaGroupObject1));
        System.assert(metaGroupObject1.equals(metaGroupObject1));
        System.assert(metaGroupObject3.equals(metaGroupObject4));
        System.assert(metaGroupObject4.equals(metaGroupObject3));
        System.assert(metaGroupObject3.equals(metaGroupObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagMetaGroupObject metaGroupObject1 = SwagMetaGroupObject.getExample();
        SwagMetaGroupObject metaGroupObject2 = SwagMetaGroupObject.getExample();
        SwagMetaGroupObject metaGroupObject3 = new SwagMetaGroupObject();
        SwagMetaGroupObject metaGroupObject4 = new SwagMetaGroupObject();

        System.assert(metaGroupObject1.equals(metaGroupObject2));
        System.assert(metaGroupObject2.equals(metaGroupObject1));
        System.assert(metaGroupObject3.equals(metaGroupObject4));
        System.assert(metaGroupObject4.equals(metaGroupObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagMetaGroupObject metaGroupObject1 = SwagMetaGroupObject.getExample();
        SwagMetaGroupObject metaGroupObject2 = new SwagMetaGroupObject();

        System.assertEquals(false, metaGroupObject1.equals(metaGroupObject2));
        System.assertEquals(false, metaGroupObject2.equals(metaGroupObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagMetaGroupObject metaGroupObject1 = SwagMetaGroupObject.getExample();
        SwagMetaGroupObject metaGroupObject2 = new SwagMetaGroupObject();

        System.assertEquals(false, metaGroupObject1.equals('foo'));
        System.assertEquals(false, metaGroupObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagMetaGroupObject metaGroupObject1 = SwagMetaGroupObject.getExample();
        SwagMetaGroupObject metaGroupObject2 = new SwagMetaGroupObject();
        SwagMetaGroupObject metaGroupObject3;

        System.assertEquals(false, metaGroupObject1.equals(metaGroupObject3));
        System.assertEquals(false, metaGroupObject2.equals(metaGroupObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagMetaGroupObject metaGroupObject1 = SwagMetaGroupObject.getExample();
        SwagMetaGroupObject metaGroupObject2 = new SwagMetaGroupObject();

        System.assertEquals(metaGroupObject1.hashCode(), metaGroupObject1.hashCode());
        System.assertEquals(metaGroupObject2.hashCode(), metaGroupObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagMetaGroupObject metaGroupObject1 = SwagMetaGroupObject.getExample();
        SwagMetaGroupObject metaGroupObject2 = SwagMetaGroupObject.getExample();
        SwagMetaGroupObject metaGroupObject3 = new SwagMetaGroupObject();
        SwagMetaGroupObject metaGroupObject4 = new SwagMetaGroupObject();

        System.assert(metaGroupObject1.equals(metaGroupObject2));
        System.assert(metaGroupObject3.equals(metaGroupObject4));
        System.assertEquals(metaGroupObject1.hashCode(), metaGroupObject2.hashCode());
        System.assertEquals(metaGroupObject3.hashCode(), metaGroupObject4.hashCode());
    }
}

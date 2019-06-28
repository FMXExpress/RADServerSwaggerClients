@isTest
private class SwagMetaObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagMetaObject metaObject1 = SwagMetaObject.getExample();
        SwagMetaObject metaObject2 = metaObject1;
        SwagMetaObject metaObject3 = new SwagMetaObject();
        SwagMetaObject metaObject4 = metaObject3;

        System.assert(metaObject1.equals(metaObject2));
        System.assert(metaObject2.equals(metaObject1));
        System.assert(metaObject1.equals(metaObject1));
        System.assert(metaObject3.equals(metaObject4));
        System.assert(metaObject4.equals(metaObject3));
        System.assert(metaObject3.equals(metaObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagMetaObject metaObject1 = SwagMetaObject.getExample();
        SwagMetaObject metaObject2 = SwagMetaObject.getExample();
        SwagMetaObject metaObject3 = new SwagMetaObject();
        SwagMetaObject metaObject4 = new SwagMetaObject();

        System.assert(metaObject1.equals(metaObject2));
        System.assert(metaObject2.equals(metaObject1));
        System.assert(metaObject3.equals(metaObject4));
        System.assert(metaObject4.equals(metaObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagMetaObject metaObject1 = SwagMetaObject.getExample();
        SwagMetaObject metaObject2 = new SwagMetaObject();

        System.assertEquals(false, metaObject1.equals(metaObject2));
        System.assertEquals(false, metaObject2.equals(metaObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagMetaObject metaObject1 = SwagMetaObject.getExample();
        SwagMetaObject metaObject2 = new SwagMetaObject();

        System.assertEquals(false, metaObject1.equals('foo'));
        System.assertEquals(false, metaObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagMetaObject metaObject1 = SwagMetaObject.getExample();
        SwagMetaObject metaObject2 = new SwagMetaObject();
        SwagMetaObject metaObject3;

        System.assertEquals(false, metaObject1.equals(metaObject3));
        System.assertEquals(false, metaObject2.equals(metaObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagMetaObject metaObject1 = SwagMetaObject.getExample();
        SwagMetaObject metaObject2 = new SwagMetaObject();

        System.assertEquals(metaObject1.hashCode(), metaObject1.hashCode());
        System.assertEquals(metaObject2.hashCode(), metaObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagMetaObject metaObject1 = SwagMetaObject.getExample();
        SwagMetaObject metaObject2 = SwagMetaObject.getExample();
        SwagMetaObject metaObject3 = new SwagMetaObject();
        SwagMetaObject metaObject4 = new SwagMetaObject();

        System.assert(metaObject1.equals(metaObject2));
        System.assert(metaObject3.equals(metaObject4));
        System.assertEquals(metaObject1.hashCode(), metaObject2.hashCode());
        System.assertEquals(metaObject3.hashCode(), metaObject4.hashCode());
    }
}

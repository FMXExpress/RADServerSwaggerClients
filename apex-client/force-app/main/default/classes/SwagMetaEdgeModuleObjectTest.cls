@isTest
private class SwagMetaEdgeModuleObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagMetaEdgeModuleObject metaEdgeModuleObject1 = SwagMetaEdgeModuleObject.getExample();
        SwagMetaEdgeModuleObject metaEdgeModuleObject2 = metaEdgeModuleObject1;
        SwagMetaEdgeModuleObject metaEdgeModuleObject3 = new SwagMetaEdgeModuleObject();
        SwagMetaEdgeModuleObject metaEdgeModuleObject4 = metaEdgeModuleObject3;

        System.assert(metaEdgeModuleObject1.equals(metaEdgeModuleObject2));
        System.assert(metaEdgeModuleObject2.equals(metaEdgeModuleObject1));
        System.assert(metaEdgeModuleObject1.equals(metaEdgeModuleObject1));
        System.assert(metaEdgeModuleObject3.equals(metaEdgeModuleObject4));
        System.assert(metaEdgeModuleObject4.equals(metaEdgeModuleObject3));
        System.assert(metaEdgeModuleObject3.equals(metaEdgeModuleObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagMetaEdgeModuleObject metaEdgeModuleObject1 = SwagMetaEdgeModuleObject.getExample();
        SwagMetaEdgeModuleObject metaEdgeModuleObject2 = SwagMetaEdgeModuleObject.getExample();
        SwagMetaEdgeModuleObject metaEdgeModuleObject3 = new SwagMetaEdgeModuleObject();
        SwagMetaEdgeModuleObject metaEdgeModuleObject4 = new SwagMetaEdgeModuleObject();

        System.assert(metaEdgeModuleObject1.equals(metaEdgeModuleObject2));
        System.assert(metaEdgeModuleObject2.equals(metaEdgeModuleObject1));
        System.assert(metaEdgeModuleObject3.equals(metaEdgeModuleObject4));
        System.assert(metaEdgeModuleObject4.equals(metaEdgeModuleObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagMetaEdgeModuleObject metaEdgeModuleObject1 = SwagMetaEdgeModuleObject.getExample();
        SwagMetaEdgeModuleObject metaEdgeModuleObject2 = new SwagMetaEdgeModuleObject();

        System.assertEquals(false, metaEdgeModuleObject1.equals(metaEdgeModuleObject2));
        System.assertEquals(false, metaEdgeModuleObject2.equals(metaEdgeModuleObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagMetaEdgeModuleObject metaEdgeModuleObject1 = SwagMetaEdgeModuleObject.getExample();
        SwagMetaEdgeModuleObject metaEdgeModuleObject2 = new SwagMetaEdgeModuleObject();

        System.assertEquals(false, metaEdgeModuleObject1.equals('foo'));
        System.assertEquals(false, metaEdgeModuleObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagMetaEdgeModuleObject metaEdgeModuleObject1 = SwagMetaEdgeModuleObject.getExample();
        SwagMetaEdgeModuleObject metaEdgeModuleObject2 = new SwagMetaEdgeModuleObject();
        SwagMetaEdgeModuleObject metaEdgeModuleObject3;

        System.assertEquals(false, metaEdgeModuleObject1.equals(metaEdgeModuleObject3));
        System.assertEquals(false, metaEdgeModuleObject2.equals(metaEdgeModuleObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagMetaEdgeModuleObject metaEdgeModuleObject1 = SwagMetaEdgeModuleObject.getExample();
        SwagMetaEdgeModuleObject metaEdgeModuleObject2 = new SwagMetaEdgeModuleObject();

        System.assertEquals(metaEdgeModuleObject1.hashCode(), metaEdgeModuleObject1.hashCode());
        System.assertEquals(metaEdgeModuleObject2.hashCode(), metaEdgeModuleObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagMetaEdgeModuleObject metaEdgeModuleObject1 = SwagMetaEdgeModuleObject.getExample();
        SwagMetaEdgeModuleObject metaEdgeModuleObject2 = SwagMetaEdgeModuleObject.getExample();
        SwagMetaEdgeModuleObject metaEdgeModuleObject3 = new SwagMetaEdgeModuleObject();
        SwagMetaEdgeModuleObject metaEdgeModuleObject4 = new SwagMetaEdgeModuleObject();

        System.assert(metaEdgeModuleObject1.equals(metaEdgeModuleObject2));
        System.assert(metaEdgeModuleObject3.equals(metaEdgeModuleObject4));
        System.assertEquals(metaEdgeModuleObject1.hashCode(), metaEdgeModuleObject2.hashCode());
        System.assertEquals(metaEdgeModuleObject3.hashCode(), metaEdgeModuleObject4.hashCode());
    }
}

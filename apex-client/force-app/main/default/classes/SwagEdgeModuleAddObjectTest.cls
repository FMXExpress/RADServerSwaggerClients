@isTest
private class SwagEdgeModuleAddObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagEdgeModuleAddObject edgeModuleAddObject1 = SwagEdgeModuleAddObject.getExample();
        SwagEdgeModuleAddObject edgeModuleAddObject2 = edgeModuleAddObject1;
        SwagEdgeModuleAddObject edgeModuleAddObject3 = new SwagEdgeModuleAddObject();
        SwagEdgeModuleAddObject edgeModuleAddObject4 = edgeModuleAddObject3;

        System.assert(edgeModuleAddObject1.equals(edgeModuleAddObject2));
        System.assert(edgeModuleAddObject2.equals(edgeModuleAddObject1));
        System.assert(edgeModuleAddObject1.equals(edgeModuleAddObject1));
        System.assert(edgeModuleAddObject3.equals(edgeModuleAddObject4));
        System.assert(edgeModuleAddObject4.equals(edgeModuleAddObject3));
        System.assert(edgeModuleAddObject3.equals(edgeModuleAddObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagEdgeModuleAddObject edgeModuleAddObject1 = SwagEdgeModuleAddObject.getExample();
        SwagEdgeModuleAddObject edgeModuleAddObject2 = SwagEdgeModuleAddObject.getExample();
        SwagEdgeModuleAddObject edgeModuleAddObject3 = new SwagEdgeModuleAddObject();
        SwagEdgeModuleAddObject edgeModuleAddObject4 = new SwagEdgeModuleAddObject();

        System.assert(edgeModuleAddObject1.equals(edgeModuleAddObject2));
        System.assert(edgeModuleAddObject2.equals(edgeModuleAddObject1));
        System.assert(edgeModuleAddObject3.equals(edgeModuleAddObject4));
        System.assert(edgeModuleAddObject4.equals(edgeModuleAddObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagEdgeModuleAddObject edgeModuleAddObject1 = SwagEdgeModuleAddObject.getExample();
        SwagEdgeModuleAddObject edgeModuleAddObject2 = new SwagEdgeModuleAddObject();

        System.assertEquals(false, edgeModuleAddObject1.equals(edgeModuleAddObject2));
        System.assertEquals(false, edgeModuleAddObject2.equals(edgeModuleAddObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagEdgeModuleAddObject edgeModuleAddObject1 = SwagEdgeModuleAddObject.getExample();
        SwagEdgeModuleAddObject edgeModuleAddObject2 = new SwagEdgeModuleAddObject();

        System.assertEquals(false, edgeModuleAddObject1.equals('foo'));
        System.assertEquals(false, edgeModuleAddObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagEdgeModuleAddObject edgeModuleAddObject1 = SwagEdgeModuleAddObject.getExample();
        SwagEdgeModuleAddObject edgeModuleAddObject2 = new SwagEdgeModuleAddObject();
        SwagEdgeModuleAddObject edgeModuleAddObject3;

        System.assertEquals(false, edgeModuleAddObject1.equals(edgeModuleAddObject3));
        System.assertEquals(false, edgeModuleAddObject2.equals(edgeModuleAddObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagEdgeModuleAddObject edgeModuleAddObject1 = SwagEdgeModuleAddObject.getExample();
        SwagEdgeModuleAddObject edgeModuleAddObject2 = new SwagEdgeModuleAddObject();

        System.assertEquals(edgeModuleAddObject1.hashCode(), edgeModuleAddObject1.hashCode());
        System.assertEquals(edgeModuleAddObject2.hashCode(), edgeModuleAddObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagEdgeModuleAddObject edgeModuleAddObject1 = SwagEdgeModuleAddObject.getExample();
        SwagEdgeModuleAddObject edgeModuleAddObject2 = SwagEdgeModuleAddObject.getExample();
        SwagEdgeModuleAddObject edgeModuleAddObject3 = new SwagEdgeModuleAddObject();
        SwagEdgeModuleAddObject edgeModuleAddObject4 = new SwagEdgeModuleAddObject();

        System.assert(edgeModuleAddObject1.equals(edgeModuleAddObject2));
        System.assert(edgeModuleAddObject3.equals(edgeModuleAddObject4));
        System.assertEquals(edgeModuleAddObject1.hashCode(), edgeModuleAddObject2.hashCode());
        System.assertEquals(edgeModuleAddObject3.hashCode(), edgeModuleAddObject4.hashCode());
    }
}

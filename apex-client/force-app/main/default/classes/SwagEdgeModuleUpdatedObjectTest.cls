@isTest
private class SwagEdgeModuleUpdatedObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject1 = SwagEdgeModuleUpdatedObject.getExample();
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject2 = edgeModuleUpdatedObject1;
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject3 = new SwagEdgeModuleUpdatedObject();
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject4 = edgeModuleUpdatedObject3;

        System.assert(edgeModuleUpdatedObject1.equals(edgeModuleUpdatedObject2));
        System.assert(edgeModuleUpdatedObject2.equals(edgeModuleUpdatedObject1));
        System.assert(edgeModuleUpdatedObject1.equals(edgeModuleUpdatedObject1));
        System.assert(edgeModuleUpdatedObject3.equals(edgeModuleUpdatedObject4));
        System.assert(edgeModuleUpdatedObject4.equals(edgeModuleUpdatedObject3));
        System.assert(edgeModuleUpdatedObject3.equals(edgeModuleUpdatedObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject1 = SwagEdgeModuleUpdatedObject.getExample();
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject2 = SwagEdgeModuleUpdatedObject.getExample();
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject3 = new SwagEdgeModuleUpdatedObject();
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject4 = new SwagEdgeModuleUpdatedObject();

        System.assert(edgeModuleUpdatedObject1.equals(edgeModuleUpdatedObject2));
        System.assert(edgeModuleUpdatedObject2.equals(edgeModuleUpdatedObject1));
        System.assert(edgeModuleUpdatedObject3.equals(edgeModuleUpdatedObject4));
        System.assert(edgeModuleUpdatedObject4.equals(edgeModuleUpdatedObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject1 = SwagEdgeModuleUpdatedObject.getExample();
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject2 = new SwagEdgeModuleUpdatedObject();

        System.assertEquals(false, edgeModuleUpdatedObject1.equals(edgeModuleUpdatedObject2));
        System.assertEquals(false, edgeModuleUpdatedObject2.equals(edgeModuleUpdatedObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject1 = SwagEdgeModuleUpdatedObject.getExample();
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject2 = new SwagEdgeModuleUpdatedObject();

        System.assertEquals(false, edgeModuleUpdatedObject1.equals('foo'));
        System.assertEquals(false, edgeModuleUpdatedObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject1 = SwagEdgeModuleUpdatedObject.getExample();
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject2 = new SwagEdgeModuleUpdatedObject();
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject3;

        System.assertEquals(false, edgeModuleUpdatedObject1.equals(edgeModuleUpdatedObject3));
        System.assertEquals(false, edgeModuleUpdatedObject2.equals(edgeModuleUpdatedObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject1 = SwagEdgeModuleUpdatedObject.getExample();
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject2 = new SwagEdgeModuleUpdatedObject();

        System.assertEquals(edgeModuleUpdatedObject1.hashCode(), edgeModuleUpdatedObject1.hashCode());
        System.assertEquals(edgeModuleUpdatedObject2.hashCode(), edgeModuleUpdatedObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject1 = SwagEdgeModuleUpdatedObject.getExample();
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject2 = SwagEdgeModuleUpdatedObject.getExample();
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject3 = new SwagEdgeModuleUpdatedObject();
        SwagEdgeModuleUpdatedObject edgeModuleUpdatedObject4 = new SwagEdgeModuleUpdatedObject();

        System.assert(edgeModuleUpdatedObject1.equals(edgeModuleUpdatedObject2));
        System.assert(edgeModuleUpdatedObject3.equals(edgeModuleUpdatedObject4));
        System.assertEquals(edgeModuleUpdatedObject1.hashCode(), edgeModuleUpdatedObject2.hashCode());
        System.assertEquals(edgeModuleUpdatedObject3.hashCode(), edgeModuleUpdatedObject4.hashCode());
    }
}

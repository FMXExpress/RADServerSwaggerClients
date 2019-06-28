@isTest
private class SwagEdgeModuleResourceUpdatedObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject1 = SwagEdgeModuleResourceUpdatedObject.getExample();
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject2 = edgeModuleResourceUpdatedObject1;
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject3 = new SwagEdgeModuleResourceUpdatedObject();
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject4 = edgeModuleResourceUpdatedObject3;

        System.assert(edgeModuleResourceUpdatedObject1.equals(edgeModuleResourceUpdatedObject2));
        System.assert(edgeModuleResourceUpdatedObject2.equals(edgeModuleResourceUpdatedObject1));
        System.assert(edgeModuleResourceUpdatedObject1.equals(edgeModuleResourceUpdatedObject1));
        System.assert(edgeModuleResourceUpdatedObject3.equals(edgeModuleResourceUpdatedObject4));
        System.assert(edgeModuleResourceUpdatedObject4.equals(edgeModuleResourceUpdatedObject3));
        System.assert(edgeModuleResourceUpdatedObject3.equals(edgeModuleResourceUpdatedObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject1 = SwagEdgeModuleResourceUpdatedObject.getExample();
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject2 = SwagEdgeModuleResourceUpdatedObject.getExample();
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject3 = new SwagEdgeModuleResourceUpdatedObject();
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject4 = new SwagEdgeModuleResourceUpdatedObject();

        System.assert(edgeModuleResourceUpdatedObject1.equals(edgeModuleResourceUpdatedObject2));
        System.assert(edgeModuleResourceUpdatedObject2.equals(edgeModuleResourceUpdatedObject1));
        System.assert(edgeModuleResourceUpdatedObject3.equals(edgeModuleResourceUpdatedObject4));
        System.assert(edgeModuleResourceUpdatedObject4.equals(edgeModuleResourceUpdatedObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject1 = SwagEdgeModuleResourceUpdatedObject.getExample();
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject2 = new SwagEdgeModuleResourceUpdatedObject();

        System.assertEquals(false, edgeModuleResourceUpdatedObject1.equals(edgeModuleResourceUpdatedObject2));
        System.assertEquals(false, edgeModuleResourceUpdatedObject2.equals(edgeModuleResourceUpdatedObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject1 = SwagEdgeModuleResourceUpdatedObject.getExample();
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject2 = new SwagEdgeModuleResourceUpdatedObject();

        System.assertEquals(false, edgeModuleResourceUpdatedObject1.equals('foo'));
        System.assertEquals(false, edgeModuleResourceUpdatedObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject1 = SwagEdgeModuleResourceUpdatedObject.getExample();
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject2 = new SwagEdgeModuleResourceUpdatedObject();
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject3;

        System.assertEquals(false, edgeModuleResourceUpdatedObject1.equals(edgeModuleResourceUpdatedObject3));
        System.assertEquals(false, edgeModuleResourceUpdatedObject2.equals(edgeModuleResourceUpdatedObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject1 = SwagEdgeModuleResourceUpdatedObject.getExample();
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject2 = new SwagEdgeModuleResourceUpdatedObject();

        System.assertEquals(edgeModuleResourceUpdatedObject1.hashCode(), edgeModuleResourceUpdatedObject1.hashCode());
        System.assertEquals(edgeModuleResourceUpdatedObject2.hashCode(), edgeModuleResourceUpdatedObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject1 = SwagEdgeModuleResourceUpdatedObject.getExample();
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject2 = SwagEdgeModuleResourceUpdatedObject.getExample();
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject3 = new SwagEdgeModuleResourceUpdatedObject();
        SwagEdgeModuleResourceUpdatedObject edgeModuleResourceUpdatedObject4 = new SwagEdgeModuleResourceUpdatedObject();

        System.assert(edgeModuleResourceUpdatedObject1.equals(edgeModuleResourceUpdatedObject2));
        System.assert(edgeModuleResourceUpdatedObject3.equals(edgeModuleResourceUpdatedObject4));
        System.assertEquals(edgeModuleResourceUpdatedObject1.hashCode(), edgeModuleResourceUpdatedObject2.hashCode());
        System.assertEquals(edgeModuleResourceUpdatedObject3.hashCode(), edgeModuleResourceUpdatedObject4.hashCode());
    }
}

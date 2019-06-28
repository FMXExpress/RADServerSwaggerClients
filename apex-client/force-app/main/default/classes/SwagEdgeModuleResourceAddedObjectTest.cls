@isTest
private class SwagEdgeModuleResourceAddedObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject1 = SwagEdgeModuleResourceAddedObject.getExample();
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject2 = edgeModuleResourceAddedObject1;
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject3 = new SwagEdgeModuleResourceAddedObject();
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject4 = edgeModuleResourceAddedObject3;

        System.assert(edgeModuleResourceAddedObject1.equals(edgeModuleResourceAddedObject2));
        System.assert(edgeModuleResourceAddedObject2.equals(edgeModuleResourceAddedObject1));
        System.assert(edgeModuleResourceAddedObject1.equals(edgeModuleResourceAddedObject1));
        System.assert(edgeModuleResourceAddedObject3.equals(edgeModuleResourceAddedObject4));
        System.assert(edgeModuleResourceAddedObject4.equals(edgeModuleResourceAddedObject3));
        System.assert(edgeModuleResourceAddedObject3.equals(edgeModuleResourceAddedObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject1 = SwagEdgeModuleResourceAddedObject.getExample();
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject2 = SwagEdgeModuleResourceAddedObject.getExample();
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject3 = new SwagEdgeModuleResourceAddedObject();
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject4 = new SwagEdgeModuleResourceAddedObject();

        System.assert(edgeModuleResourceAddedObject1.equals(edgeModuleResourceAddedObject2));
        System.assert(edgeModuleResourceAddedObject2.equals(edgeModuleResourceAddedObject1));
        System.assert(edgeModuleResourceAddedObject3.equals(edgeModuleResourceAddedObject4));
        System.assert(edgeModuleResourceAddedObject4.equals(edgeModuleResourceAddedObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject1 = SwagEdgeModuleResourceAddedObject.getExample();
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject2 = new SwagEdgeModuleResourceAddedObject();

        System.assertEquals(false, edgeModuleResourceAddedObject1.equals(edgeModuleResourceAddedObject2));
        System.assertEquals(false, edgeModuleResourceAddedObject2.equals(edgeModuleResourceAddedObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject1 = SwagEdgeModuleResourceAddedObject.getExample();
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject2 = new SwagEdgeModuleResourceAddedObject();

        System.assertEquals(false, edgeModuleResourceAddedObject1.equals('foo'));
        System.assertEquals(false, edgeModuleResourceAddedObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject1 = SwagEdgeModuleResourceAddedObject.getExample();
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject2 = new SwagEdgeModuleResourceAddedObject();
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject3;

        System.assertEquals(false, edgeModuleResourceAddedObject1.equals(edgeModuleResourceAddedObject3));
        System.assertEquals(false, edgeModuleResourceAddedObject2.equals(edgeModuleResourceAddedObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject1 = SwagEdgeModuleResourceAddedObject.getExample();
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject2 = new SwagEdgeModuleResourceAddedObject();

        System.assertEquals(edgeModuleResourceAddedObject1.hashCode(), edgeModuleResourceAddedObject1.hashCode());
        System.assertEquals(edgeModuleResourceAddedObject2.hashCode(), edgeModuleResourceAddedObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject1 = SwagEdgeModuleResourceAddedObject.getExample();
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject2 = SwagEdgeModuleResourceAddedObject.getExample();
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject3 = new SwagEdgeModuleResourceAddedObject();
        SwagEdgeModuleResourceAddedObject edgeModuleResourceAddedObject4 = new SwagEdgeModuleResourceAddedObject();

        System.assert(edgeModuleResourceAddedObject1.equals(edgeModuleResourceAddedObject2));
        System.assert(edgeModuleResourceAddedObject3.equals(edgeModuleResourceAddedObject4));
        System.assertEquals(edgeModuleResourceAddedObject1.hashCode(), edgeModuleResourceAddedObject2.hashCode());
        System.assertEquals(edgeModuleResourceAddedObject3.hashCode(), edgeModuleResourceAddedObject4.hashCode());
    }
}

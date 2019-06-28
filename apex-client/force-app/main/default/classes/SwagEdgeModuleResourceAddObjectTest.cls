@isTest
private class SwagEdgeModuleResourceAddObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject1 = SwagEdgeModuleResourceAddObject.getExample();
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject2 = edgeModuleResourceAddObject1;
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject3 = new SwagEdgeModuleResourceAddObject();
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject4 = edgeModuleResourceAddObject3;

        System.assert(edgeModuleResourceAddObject1.equals(edgeModuleResourceAddObject2));
        System.assert(edgeModuleResourceAddObject2.equals(edgeModuleResourceAddObject1));
        System.assert(edgeModuleResourceAddObject1.equals(edgeModuleResourceAddObject1));
        System.assert(edgeModuleResourceAddObject3.equals(edgeModuleResourceAddObject4));
        System.assert(edgeModuleResourceAddObject4.equals(edgeModuleResourceAddObject3));
        System.assert(edgeModuleResourceAddObject3.equals(edgeModuleResourceAddObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject1 = SwagEdgeModuleResourceAddObject.getExample();
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject2 = SwagEdgeModuleResourceAddObject.getExample();
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject3 = new SwagEdgeModuleResourceAddObject();
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject4 = new SwagEdgeModuleResourceAddObject();

        System.assert(edgeModuleResourceAddObject1.equals(edgeModuleResourceAddObject2));
        System.assert(edgeModuleResourceAddObject2.equals(edgeModuleResourceAddObject1));
        System.assert(edgeModuleResourceAddObject3.equals(edgeModuleResourceAddObject4));
        System.assert(edgeModuleResourceAddObject4.equals(edgeModuleResourceAddObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject1 = SwagEdgeModuleResourceAddObject.getExample();
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject2 = new SwagEdgeModuleResourceAddObject();

        System.assertEquals(false, edgeModuleResourceAddObject1.equals(edgeModuleResourceAddObject2));
        System.assertEquals(false, edgeModuleResourceAddObject2.equals(edgeModuleResourceAddObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject1 = SwagEdgeModuleResourceAddObject.getExample();
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject2 = new SwagEdgeModuleResourceAddObject();

        System.assertEquals(false, edgeModuleResourceAddObject1.equals('foo'));
        System.assertEquals(false, edgeModuleResourceAddObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject1 = SwagEdgeModuleResourceAddObject.getExample();
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject2 = new SwagEdgeModuleResourceAddObject();
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject3;

        System.assertEquals(false, edgeModuleResourceAddObject1.equals(edgeModuleResourceAddObject3));
        System.assertEquals(false, edgeModuleResourceAddObject2.equals(edgeModuleResourceAddObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject1 = SwagEdgeModuleResourceAddObject.getExample();
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject2 = new SwagEdgeModuleResourceAddObject();

        System.assertEquals(edgeModuleResourceAddObject1.hashCode(), edgeModuleResourceAddObject1.hashCode());
        System.assertEquals(edgeModuleResourceAddObject2.hashCode(), edgeModuleResourceAddObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject1 = SwagEdgeModuleResourceAddObject.getExample();
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject2 = SwagEdgeModuleResourceAddObject.getExample();
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject3 = new SwagEdgeModuleResourceAddObject();
        SwagEdgeModuleResourceAddObject edgeModuleResourceAddObject4 = new SwagEdgeModuleResourceAddObject();

        System.assert(edgeModuleResourceAddObject1.equals(edgeModuleResourceAddObject2));
        System.assert(edgeModuleResourceAddObject3.equals(edgeModuleResourceAddObject4));
        System.assertEquals(edgeModuleResourceAddObject1.hashCode(), edgeModuleResourceAddObject2.hashCode());
        System.assertEquals(edgeModuleResourceAddObject3.hashCode(), edgeModuleResourceAddObject4.hashCode());
    }
}

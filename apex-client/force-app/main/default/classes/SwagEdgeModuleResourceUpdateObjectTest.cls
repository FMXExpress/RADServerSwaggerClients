@isTest
private class SwagEdgeModuleResourceUpdateObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject1 = SwagEdgeModuleResourceUpdateObject.getExample();
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject2 = edgeModuleResourceUpdateObject1;
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject3 = new SwagEdgeModuleResourceUpdateObject();
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject4 = edgeModuleResourceUpdateObject3;

        System.assert(edgeModuleResourceUpdateObject1.equals(edgeModuleResourceUpdateObject2));
        System.assert(edgeModuleResourceUpdateObject2.equals(edgeModuleResourceUpdateObject1));
        System.assert(edgeModuleResourceUpdateObject1.equals(edgeModuleResourceUpdateObject1));
        System.assert(edgeModuleResourceUpdateObject3.equals(edgeModuleResourceUpdateObject4));
        System.assert(edgeModuleResourceUpdateObject4.equals(edgeModuleResourceUpdateObject3));
        System.assert(edgeModuleResourceUpdateObject3.equals(edgeModuleResourceUpdateObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject1 = SwagEdgeModuleResourceUpdateObject.getExample();
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject2 = SwagEdgeModuleResourceUpdateObject.getExample();
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject3 = new SwagEdgeModuleResourceUpdateObject();
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject4 = new SwagEdgeModuleResourceUpdateObject();

        System.assert(edgeModuleResourceUpdateObject1.equals(edgeModuleResourceUpdateObject2));
        System.assert(edgeModuleResourceUpdateObject2.equals(edgeModuleResourceUpdateObject1));
        System.assert(edgeModuleResourceUpdateObject3.equals(edgeModuleResourceUpdateObject4));
        System.assert(edgeModuleResourceUpdateObject4.equals(edgeModuleResourceUpdateObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject1 = SwagEdgeModuleResourceUpdateObject.getExample();
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject2 = new SwagEdgeModuleResourceUpdateObject();

        System.assertEquals(false, edgeModuleResourceUpdateObject1.equals(edgeModuleResourceUpdateObject2));
        System.assertEquals(false, edgeModuleResourceUpdateObject2.equals(edgeModuleResourceUpdateObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject1 = SwagEdgeModuleResourceUpdateObject.getExample();
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject2 = new SwagEdgeModuleResourceUpdateObject();

        System.assertEquals(false, edgeModuleResourceUpdateObject1.equals('foo'));
        System.assertEquals(false, edgeModuleResourceUpdateObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject1 = SwagEdgeModuleResourceUpdateObject.getExample();
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject2 = new SwagEdgeModuleResourceUpdateObject();
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject3;

        System.assertEquals(false, edgeModuleResourceUpdateObject1.equals(edgeModuleResourceUpdateObject3));
        System.assertEquals(false, edgeModuleResourceUpdateObject2.equals(edgeModuleResourceUpdateObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject1 = SwagEdgeModuleResourceUpdateObject.getExample();
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject2 = new SwagEdgeModuleResourceUpdateObject();

        System.assertEquals(edgeModuleResourceUpdateObject1.hashCode(), edgeModuleResourceUpdateObject1.hashCode());
        System.assertEquals(edgeModuleResourceUpdateObject2.hashCode(), edgeModuleResourceUpdateObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject1 = SwagEdgeModuleResourceUpdateObject.getExample();
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject2 = SwagEdgeModuleResourceUpdateObject.getExample();
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject3 = new SwagEdgeModuleResourceUpdateObject();
        SwagEdgeModuleResourceUpdateObject edgeModuleResourceUpdateObject4 = new SwagEdgeModuleResourceUpdateObject();

        System.assert(edgeModuleResourceUpdateObject1.equals(edgeModuleResourceUpdateObject2));
        System.assert(edgeModuleResourceUpdateObject3.equals(edgeModuleResourceUpdateObject4));
        System.assertEquals(edgeModuleResourceUpdateObject1.hashCode(), edgeModuleResourceUpdateObject2.hashCode());
        System.assertEquals(edgeModuleResourceUpdateObject3.hashCode(), edgeModuleResourceUpdateObject4.hashCode());
    }
}

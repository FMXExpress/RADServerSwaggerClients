@isTest
private class SwagEdgeModuleUpdateObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject1 = SwagEdgeModuleUpdateObject.getExample();
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject2 = edgeModuleUpdateObject1;
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject3 = new SwagEdgeModuleUpdateObject();
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject4 = edgeModuleUpdateObject3;

        System.assert(edgeModuleUpdateObject1.equals(edgeModuleUpdateObject2));
        System.assert(edgeModuleUpdateObject2.equals(edgeModuleUpdateObject1));
        System.assert(edgeModuleUpdateObject1.equals(edgeModuleUpdateObject1));
        System.assert(edgeModuleUpdateObject3.equals(edgeModuleUpdateObject4));
        System.assert(edgeModuleUpdateObject4.equals(edgeModuleUpdateObject3));
        System.assert(edgeModuleUpdateObject3.equals(edgeModuleUpdateObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject1 = SwagEdgeModuleUpdateObject.getExample();
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject2 = SwagEdgeModuleUpdateObject.getExample();
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject3 = new SwagEdgeModuleUpdateObject();
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject4 = new SwagEdgeModuleUpdateObject();

        System.assert(edgeModuleUpdateObject1.equals(edgeModuleUpdateObject2));
        System.assert(edgeModuleUpdateObject2.equals(edgeModuleUpdateObject1));
        System.assert(edgeModuleUpdateObject3.equals(edgeModuleUpdateObject4));
        System.assert(edgeModuleUpdateObject4.equals(edgeModuleUpdateObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject1 = SwagEdgeModuleUpdateObject.getExample();
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject2 = new SwagEdgeModuleUpdateObject();

        System.assertEquals(false, edgeModuleUpdateObject1.equals(edgeModuleUpdateObject2));
        System.assertEquals(false, edgeModuleUpdateObject2.equals(edgeModuleUpdateObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject1 = SwagEdgeModuleUpdateObject.getExample();
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject2 = new SwagEdgeModuleUpdateObject();

        System.assertEquals(false, edgeModuleUpdateObject1.equals('foo'));
        System.assertEquals(false, edgeModuleUpdateObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject1 = SwagEdgeModuleUpdateObject.getExample();
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject2 = new SwagEdgeModuleUpdateObject();
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject3;

        System.assertEquals(false, edgeModuleUpdateObject1.equals(edgeModuleUpdateObject3));
        System.assertEquals(false, edgeModuleUpdateObject2.equals(edgeModuleUpdateObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject1 = SwagEdgeModuleUpdateObject.getExample();
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject2 = new SwagEdgeModuleUpdateObject();

        System.assertEquals(edgeModuleUpdateObject1.hashCode(), edgeModuleUpdateObject1.hashCode());
        System.assertEquals(edgeModuleUpdateObject2.hashCode(), edgeModuleUpdateObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject1 = SwagEdgeModuleUpdateObject.getExample();
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject2 = SwagEdgeModuleUpdateObject.getExample();
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject3 = new SwagEdgeModuleUpdateObject();
        SwagEdgeModuleUpdateObject edgeModuleUpdateObject4 = new SwagEdgeModuleUpdateObject();

        System.assert(edgeModuleUpdateObject1.equals(edgeModuleUpdateObject2));
        System.assert(edgeModuleUpdateObject3.equals(edgeModuleUpdateObject4));
        System.assertEquals(edgeModuleUpdateObject1.hashCode(), edgeModuleUpdateObject2.hashCode());
        System.assertEquals(edgeModuleUpdateObject3.hashCode(), edgeModuleUpdateObject4.hashCode());
    }
}

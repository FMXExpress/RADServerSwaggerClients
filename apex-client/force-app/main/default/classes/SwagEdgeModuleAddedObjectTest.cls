@isTest
private class SwagEdgeModuleAddedObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagEdgeModuleAddedObject edgeModuleAddedObject1 = SwagEdgeModuleAddedObject.getExample();
        SwagEdgeModuleAddedObject edgeModuleAddedObject2 = edgeModuleAddedObject1;
        SwagEdgeModuleAddedObject edgeModuleAddedObject3 = new SwagEdgeModuleAddedObject();
        SwagEdgeModuleAddedObject edgeModuleAddedObject4 = edgeModuleAddedObject3;

        System.assert(edgeModuleAddedObject1.equals(edgeModuleAddedObject2));
        System.assert(edgeModuleAddedObject2.equals(edgeModuleAddedObject1));
        System.assert(edgeModuleAddedObject1.equals(edgeModuleAddedObject1));
        System.assert(edgeModuleAddedObject3.equals(edgeModuleAddedObject4));
        System.assert(edgeModuleAddedObject4.equals(edgeModuleAddedObject3));
        System.assert(edgeModuleAddedObject3.equals(edgeModuleAddedObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagEdgeModuleAddedObject edgeModuleAddedObject1 = SwagEdgeModuleAddedObject.getExample();
        SwagEdgeModuleAddedObject edgeModuleAddedObject2 = SwagEdgeModuleAddedObject.getExample();
        SwagEdgeModuleAddedObject edgeModuleAddedObject3 = new SwagEdgeModuleAddedObject();
        SwagEdgeModuleAddedObject edgeModuleAddedObject4 = new SwagEdgeModuleAddedObject();

        System.assert(edgeModuleAddedObject1.equals(edgeModuleAddedObject2));
        System.assert(edgeModuleAddedObject2.equals(edgeModuleAddedObject1));
        System.assert(edgeModuleAddedObject3.equals(edgeModuleAddedObject4));
        System.assert(edgeModuleAddedObject4.equals(edgeModuleAddedObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagEdgeModuleAddedObject edgeModuleAddedObject1 = SwagEdgeModuleAddedObject.getExample();
        SwagEdgeModuleAddedObject edgeModuleAddedObject2 = new SwagEdgeModuleAddedObject();

        System.assertEquals(false, edgeModuleAddedObject1.equals(edgeModuleAddedObject2));
        System.assertEquals(false, edgeModuleAddedObject2.equals(edgeModuleAddedObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagEdgeModuleAddedObject edgeModuleAddedObject1 = SwagEdgeModuleAddedObject.getExample();
        SwagEdgeModuleAddedObject edgeModuleAddedObject2 = new SwagEdgeModuleAddedObject();

        System.assertEquals(false, edgeModuleAddedObject1.equals('foo'));
        System.assertEquals(false, edgeModuleAddedObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagEdgeModuleAddedObject edgeModuleAddedObject1 = SwagEdgeModuleAddedObject.getExample();
        SwagEdgeModuleAddedObject edgeModuleAddedObject2 = new SwagEdgeModuleAddedObject();
        SwagEdgeModuleAddedObject edgeModuleAddedObject3;

        System.assertEquals(false, edgeModuleAddedObject1.equals(edgeModuleAddedObject3));
        System.assertEquals(false, edgeModuleAddedObject2.equals(edgeModuleAddedObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagEdgeModuleAddedObject edgeModuleAddedObject1 = SwagEdgeModuleAddedObject.getExample();
        SwagEdgeModuleAddedObject edgeModuleAddedObject2 = new SwagEdgeModuleAddedObject();

        System.assertEquals(edgeModuleAddedObject1.hashCode(), edgeModuleAddedObject1.hashCode());
        System.assertEquals(edgeModuleAddedObject2.hashCode(), edgeModuleAddedObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagEdgeModuleAddedObject edgeModuleAddedObject1 = SwagEdgeModuleAddedObject.getExample();
        SwagEdgeModuleAddedObject edgeModuleAddedObject2 = SwagEdgeModuleAddedObject.getExample();
        SwagEdgeModuleAddedObject edgeModuleAddedObject3 = new SwagEdgeModuleAddedObject();
        SwagEdgeModuleAddedObject edgeModuleAddedObject4 = new SwagEdgeModuleAddedObject();

        System.assert(edgeModuleAddedObject1.equals(edgeModuleAddedObject2));
        System.assert(edgeModuleAddedObject3.equals(edgeModuleAddedObject4));
        System.assertEquals(edgeModuleAddedObject1.hashCode(), edgeModuleAddedObject2.hashCode());
        System.assertEquals(edgeModuleAddedObject3.hashCode(), edgeModuleAddedObject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagEdgeModuleAddedObject edgeModuleAddedObject = new SwagEdgeModuleAddedObject();
        Map<String, String> propertyMappings = edgeModuleAddedObject.getPropertyMappings();
        System.assertEquals('id', propertyMappings.get('_id'));
    }
}

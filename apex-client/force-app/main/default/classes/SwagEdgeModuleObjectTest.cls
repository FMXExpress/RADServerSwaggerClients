@isTest
private class SwagEdgeModuleObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagEdgeModuleObject edgeModuleObject1 = SwagEdgeModuleObject.getExample();
        SwagEdgeModuleObject edgeModuleObject2 = edgeModuleObject1;
        SwagEdgeModuleObject edgeModuleObject3 = new SwagEdgeModuleObject();
        SwagEdgeModuleObject edgeModuleObject4 = edgeModuleObject3;

        System.assert(edgeModuleObject1.equals(edgeModuleObject2));
        System.assert(edgeModuleObject2.equals(edgeModuleObject1));
        System.assert(edgeModuleObject1.equals(edgeModuleObject1));
        System.assert(edgeModuleObject3.equals(edgeModuleObject4));
        System.assert(edgeModuleObject4.equals(edgeModuleObject3));
        System.assert(edgeModuleObject3.equals(edgeModuleObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagEdgeModuleObject edgeModuleObject1 = SwagEdgeModuleObject.getExample();
        SwagEdgeModuleObject edgeModuleObject2 = SwagEdgeModuleObject.getExample();
        SwagEdgeModuleObject edgeModuleObject3 = new SwagEdgeModuleObject();
        SwagEdgeModuleObject edgeModuleObject4 = new SwagEdgeModuleObject();

        System.assert(edgeModuleObject1.equals(edgeModuleObject2));
        System.assert(edgeModuleObject2.equals(edgeModuleObject1));
        System.assert(edgeModuleObject3.equals(edgeModuleObject4));
        System.assert(edgeModuleObject4.equals(edgeModuleObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagEdgeModuleObject edgeModuleObject1 = SwagEdgeModuleObject.getExample();
        SwagEdgeModuleObject edgeModuleObject2 = new SwagEdgeModuleObject();

        System.assertEquals(false, edgeModuleObject1.equals(edgeModuleObject2));
        System.assertEquals(false, edgeModuleObject2.equals(edgeModuleObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagEdgeModuleObject edgeModuleObject1 = SwagEdgeModuleObject.getExample();
        SwagEdgeModuleObject edgeModuleObject2 = new SwagEdgeModuleObject();

        System.assertEquals(false, edgeModuleObject1.equals('foo'));
        System.assertEquals(false, edgeModuleObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagEdgeModuleObject edgeModuleObject1 = SwagEdgeModuleObject.getExample();
        SwagEdgeModuleObject edgeModuleObject2 = new SwagEdgeModuleObject();
        SwagEdgeModuleObject edgeModuleObject3;

        System.assertEquals(false, edgeModuleObject1.equals(edgeModuleObject3));
        System.assertEquals(false, edgeModuleObject2.equals(edgeModuleObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagEdgeModuleObject edgeModuleObject1 = SwagEdgeModuleObject.getExample();
        SwagEdgeModuleObject edgeModuleObject2 = new SwagEdgeModuleObject();

        System.assertEquals(edgeModuleObject1.hashCode(), edgeModuleObject1.hashCode());
        System.assertEquals(edgeModuleObject2.hashCode(), edgeModuleObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagEdgeModuleObject edgeModuleObject1 = SwagEdgeModuleObject.getExample();
        SwagEdgeModuleObject edgeModuleObject2 = SwagEdgeModuleObject.getExample();
        SwagEdgeModuleObject edgeModuleObject3 = new SwagEdgeModuleObject();
        SwagEdgeModuleObject edgeModuleObject4 = new SwagEdgeModuleObject();

        System.assert(edgeModuleObject1.equals(edgeModuleObject2));
        System.assert(edgeModuleObject3.equals(edgeModuleObject4));
        System.assertEquals(edgeModuleObject1.hashCode(), edgeModuleObject2.hashCode());
        System.assertEquals(edgeModuleObject3.hashCode(), edgeModuleObject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagEdgeModuleObject edgeModuleObject = new SwagEdgeModuleObject();
        Map<String, String> propertyMappings = edgeModuleObject.getPropertyMappings();
        System.assertEquals('id', propertyMappings.get('_id'));
        System.assertEquals('meta', propertyMappings.get('_meta'));
    }
}

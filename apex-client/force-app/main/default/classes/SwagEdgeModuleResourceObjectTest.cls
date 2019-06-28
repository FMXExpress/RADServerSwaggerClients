@isTest
private class SwagEdgeModuleResourceObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagEdgeModuleResourceObject edgeModuleResourceObject1 = SwagEdgeModuleResourceObject.getExample();
        SwagEdgeModuleResourceObject edgeModuleResourceObject2 = edgeModuleResourceObject1;
        SwagEdgeModuleResourceObject edgeModuleResourceObject3 = new SwagEdgeModuleResourceObject();
        SwagEdgeModuleResourceObject edgeModuleResourceObject4 = edgeModuleResourceObject3;

        System.assert(edgeModuleResourceObject1.equals(edgeModuleResourceObject2));
        System.assert(edgeModuleResourceObject2.equals(edgeModuleResourceObject1));
        System.assert(edgeModuleResourceObject1.equals(edgeModuleResourceObject1));
        System.assert(edgeModuleResourceObject3.equals(edgeModuleResourceObject4));
        System.assert(edgeModuleResourceObject4.equals(edgeModuleResourceObject3));
        System.assert(edgeModuleResourceObject3.equals(edgeModuleResourceObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagEdgeModuleResourceObject edgeModuleResourceObject1 = SwagEdgeModuleResourceObject.getExample();
        SwagEdgeModuleResourceObject edgeModuleResourceObject2 = SwagEdgeModuleResourceObject.getExample();
        SwagEdgeModuleResourceObject edgeModuleResourceObject3 = new SwagEdgeModuleResourceObject();
        SwagEdgeModuleResourceObject edgeModuleResourceObject4 = new SwagEdgeModuleResourceObject();

        System.assert(edgeModuleResourceObject1.equals(edgeModuleResourceObject2));
        System.assert(edgeModuleResourceObject2.equals(edgeModuleResourceObject1));
        System.assert(edgeModuleResourceObject3.equals(edgeModuleResourceObject4));
        System.assert(edgeModuleResourceObject4.equals(edgeModuleResourceObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagEdgeModuleResourceObject edgeModuleResourceObject1 = SwagEdgeModuleResourceObject.getExample();
        SwagEdgeModuleResourceObject edgeModuleResourceObject2 = new SwagEdgeModuleResourceObject();

        System.assertEquals(false, edgeModuleResourceObject1.equals(edgeModuleResourceObject2));
        System.assertEquals(false, edgeModuleResourceObject2.equals(edgeModuleResourceObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagEdgeModuleResourceObject edgeModuleResourceObject1 = SwagEdgeModuleResourceObject.getExample();
        SwagEdgeModuleResourceObject edgeModuleResourceObject2 = new SwagEdgeModuleResourceObject();

        System.assertEquals(false, edgeModuleResourceObject1.equals('foo'));
        System.assertEquals(false, edgeModuleResourceObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagEdgeModuleResourceObject edgeModuleResourceObject1 = SwagEdgeModuleResourceObject.getExample();
        SwagEdgeModuleResourceObject edgeModuleResourceObject2 = new SwagEdgeModuleResourceObject();
        SwagEdgeModuleResourceObject edgeModuleResourceObject3;

        System.assertEquals(false, edgeModuleResourceObject1.equals(edgeModuleResourceObject3));
        System.assertEquals(false, edgeModuleResourceObject2.equals(edgeModuleResourceObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagEdgeModuleResourceObject edgeModuleResourceObject1 = SwagEdgeModuleResourceObject.getExample();
        SwagEdgeModuleResourceObject edgeModuleResourceObject2 = new SwagEdgeModuleResourceObject();

        System.assertEquals(edgeModuleResourceObject1.hashCode(), edgeModuleResourceObject1.hashCode());
        System.assertEquals(edgeModuleResourceObject2.hashCode(), edgeModuleResourceObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagEdgeModuleResourceObject edgeModuleResourceObject1 = SwagEdgeModuleResourceObject.getExample();
        SwagEdgeModuleResourceObject edgeModuleResourceObject2 = SwagEdgeModuleResourceObject.getExample();
        SwagEdgeModuleResourceObject edgeModuleResourceObject3 = new SwagEdgeModuleResourceObject();
        SwagEdgeModuleResourceObject edgeModuleResourceObject4 = new SwagEdgeModuleResourceObject();

        System.assert(edgeModuleResourceObject1.equals(edgeModuleResourceObject2));
        System.assert(edgeModuleResourceObject3.equals(edgeModuleResourceObject4));
        System.assertEquals(edgeModuleResourceObject1.hashCode(), edgeModuleResourceObject2.hashCode());
        System.assertEquals(edgeModuleResourceObject3.hashCode(), edgeModuleResourceObject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagEdgeModuleResourceObject edgeModuleResourceObject = new SwagEdgeModuleResourceObject();
        Map<String, String> propertyMappings = edgeModuleResourceObject.getPropertyMappings();
        System.assertEquals('meta', propertyMappings.get('_meta'));
    }
}

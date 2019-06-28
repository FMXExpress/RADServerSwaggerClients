@isTest
private class SwagFieldsEdgeModuleObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject1 = SwagFieldsEdgeModuleObject.getExample();
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject2 = fieldsEdgeModuleObject1;
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject3 = new SwagFieldsEdgeModuleObject();
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject4 = fieldsEdgeModuleObject3;

        System.assert(fieldsEdgeModuleObject1.equals(fieldsEdgeModuleObject2));
        System.assert(fieldsEdgeModuleObject2.equals(fieldsEdgeModuleObject1));
        System.assert(fieldsEdgeModuleObject1.equals(fieldsEdgeModuleObject1));
        System.assert(fieldsEdgeModuleObject3.equals(fieldsEdgeModuleObject4));
        System.assert(fieldsEdgeModuleObject4.equals(fieldsEdgeModuleObject3));
        System.assert(fieldsEdgeModuleObject3.equals(fieldsEdgeModuleObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject1 = SwagFieldsEdgeModuleObject.getExample();
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject2 = SwagFieldsEdgeModuleObject.getExample();
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject3 = new SwagFieldsEdgeModuleObject();
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject4 = new SwagFieldsEdgeModuleObject();

        System.assert(fieldsEdgeModuleObject1.equals(fieldsEdgeModuleObject2));
        System.assert(fieldsEdgeModuleObject2.equals(fieldsEdgeModuleObject1));
        System.assert(fieldsEdgeModuleObject3.equals(fieldsEdgeModuleObject4));
        System.assert(fieldsEdgeModuleObject4.equals(fieldsEdgeModuleObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject1 = SwagFieldsEdgeModuleObject.getExample();
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject2 = new SwagFieldsEdgeModuleObject();

        System.assertEquals(false, fieldsEdgeModuleObject1.equals(fieldsEdgeModuleObject2));
        System.assertEquals(false, fieldsEdgeModuleObject2.equals(fieldsEdgeModuleObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject1 = SwagFieldsEdgeModuleObject.getExample();
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject2 = new SwagFieldsEdgeModuleObject();

        System.assertEquals(false, fieldsEdgeModuleObject1.equals('foo'));
        System.assertEquals(false, fieldsEdgeModuleObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject1 = SwagFieldsEdgeModuleObject.getExample();
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject2 = new SwagFieldsEdgeModuleObject();
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject3;

        System.assertEquals(false, fieldsEdgeModuleObject1.equals(fieldsEdgeModuleObject3));
        System.assertEquals(false, fieldsEdgeModuleObject2.equals(fieldsEdgeModuleObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject1 = SwagFieldsEdgeModuleObject.getExample();
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject2 = new SwagFieldsEdgeModuleObject();

        System.assertEquals(fieldsEdgeModuleObject1.hashCode(), fieldsEdgeModuleObject1.hashCode());
        System.assertEquals(fieldsEdgeModuleObject2.hashCode(), fieldsEdgeModuleObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject1 = SwagFieldsEdgeModuleObject.getExample();
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject2 = SwagFieldsEdgeModuleObject.getExample();
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject3 = new SwagFieldsEdgeModuleObject();
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject4 = new SwagFieldsEdgeModuleObject();

        System.assert(fieldsEdgeModuleObject1.equals(fieldsEdgeModuleObject2));
        System.assert(fieldsEdgeModuleObject3.equals(fieldsEdgeModuleObject4));
        System.assertEquals(fieldsEdgeModuleObject1.hashCode(), fieldsEdgeModuleObject2.hashCode());
        System.assertEquals(fieldsEdgeModuleObject3.hashCode(), fieldsEdgeModuleObject4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFieldsEdgeModuleObject fieldsEdgeModuleObject = new SwagFieldsEdgeModuleObject();
        System.assertEquals(new List<SwagFieldObjectFields>(), fieldsEdgeModuleObject.fields);
        System.assertEquals(null, fieldsEdgeModuleObject.name);
        System.assertEquals(null, fieldsEdgeModuleObject.custom);
    }
}

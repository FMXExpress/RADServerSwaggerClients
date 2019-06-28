@isTest
private class SwagFieldObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFieldObject fieldObject1 = SwagFieldObject.getExample();
        SwagFieldObject fieldObject2 = fieldObject1;
        SwagFieldObject fieldObject3 = new SwagFieldObject();
        SwagFieldObject fieldObject4 = fieldObject3;

        System.assert(fieldObject1.equals(fieldObject2));
        System.assert(fieldObject2.equals(fieldObject1));
        System.assert(fieldObject1.equals(fieldObject1));
        System.assert(fieldObject3.equals(fieldObject4));
        System.assert(fieldObject4.equals(fieldObject3));
        System.assert(fieldObject3.equals(fieldObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFieldObject fieldObject1 = SwagFieldObject.getExample();
        SwagFieldObject fieldObject2 = SwagFieldObject.getExample();
        SwagFieldObject fieldObject3 = new SwagFieldObject();
        SwagFieldObject fieldObject4 = new SwagFieldObject();

        System.assert(fieldObject1.equals(fieldObject2));
        System.assert(fieldObject2.equals(fieldObject1));
        System.assert(fieldObject3.equals(fieldObject4));
        System.assert(fieldObject4.equals(fieldObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFieldObject fieldObject1 = SwagFieldObject.getExample();
        SwagFieldObject fieldObject2 = new SwagFieldObject();

        System.assertEquals(false, fieldObject1.equals(fieldObject2));
        System.assertEquals(false, fieldObject2.equals(fieldObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFieldObject fieldObject1 = SwagFieldObject.getExample();
        SwagFieldObject fieldObject2 = new SwagFieldObject();

        System.assertEquals(false, fieldObject1.equals('foo'));
        System.assertEquals(false, fieldObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFieldObject fieldObject1 = SwagFieldObject.getExample();
        SwagFieldObject fieldObject2 = new SwagFieldObject();
        SwagFieldObject fieldObject3;

        System.assertEquals(false, fieldObject1.equals(fieldObject3));
        System.assertEquals(false, fieldObject2.equals(fieldObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFieldObject fieldObject1 = SwagFieldObject.getExample();
        SwagFieldObject fieldObject2 = new SwagFieldObject();

        System.assertEquals(fieldObject1.hashCode(), fieldObject1.hashCode());
        System.assertEquals(fieldObject2.hashCode(), fieldObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFieldObject fieldObject1 = SwagFieldObject.getExample();
        SwagFieldObject fieldObject2 = SwagFieldObject.getExample();
        SwagFieldObject fieldObject3 = new SwagFieldObject();
        SwagFieldObject fieldObject4 = new SwagFieldObject();

        System.assert(fieldObject1.equals(fieldObject2));
        System.assert(fieldObject3.equals(fieldObject4));
        System.assertEquals(fieldObject1.hashCode(), fieldObject2.hashCode());
        System.assertEquals(fieldObject3.hashCode(), fieldObject4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFieldObject fieldObject = new SwagFieldObject();
        System.assertEquals(new List<SwagFieldObjectFields>(), fieldObject.fields);
        System.assertEquals(null, fieldObject.name);
        System.assertEquals(null, fieldObject.custom);
    }
}

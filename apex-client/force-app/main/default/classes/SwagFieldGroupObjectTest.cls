@isTest
private class SwagFieldGroupObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFieldGroupObject fieldGroupObject1 = SwagFieldGroupObject.getExample();
        SwagFieldGroupObject fieldGroupObject2 = fieldGroupObject1;
        SwagFieldGroupObject fieldGroupObject3 = new SwagFieldGroupObject();
        SwagFieldGroupObject fieldGroupObject4 = fieldGroupObject3;

        System.assert(fieldGroupObject1.equals(fieldGroupObject2));
        System.assert(fieldGroupObject2.equals(fieldGroupObject1));
        System.assert(fieldGroupObject1.equals(fieldGroupObject1));
        System.assert(fieldGroupObject3.equals(fieldGroupObject4));
        System.assert(fieldGroupObject4.equals(fieldGroupObject3));
        System.assert(fieldGroupObject3.equals(fieldGroupObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFieldGroupObject fieldGroupObject1 = SwagFieldGroupObject.getExample();
        SwagFieldGroupObject fieldGroupObject2 = SwagFieldGroupObject.getExample();
        SwagFieldGroupObject fieldGroupObject3 = new SwagFieldGroupObject();
        SwagFieldGroupObject fieldGroupObject4 = new SwagFieldGroupObject();

        System.assert(fieldGroupObject1.equals(fieldGroupObject2));
        System.assert(fieldGroupObject2.equals(fieldGroupObject1));
        System.assert(fieldGroupObject3.equals(fieldGroupObject4));
        System.assert(fieldGroupObject4.equals(fieldGroupObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFieldGroupObject fieldGroupObject1 = SwagFieldGroupObject.getExample();
        SwagFieldGroupObject fieldGroupObject2 = new SwagFieldGroupObject();

        System.assertEquals(false, fieldGroupObject1.equals(fieldGroupObject2));
        System.assertEquals(false, fieldGroupObject2.equals(fieldGroupObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFieldGroupObject fieldGroupObject1 = SwagFieldGroupObject.getExample();
        SwagFieldGroupObject fieldGroupObject2 = new SwagFieldGroupObject();

        System.assertEquals(false, fieldGroupObject1.equals('foo'));
        System.assertEquals(false, fieldGroupObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFieldGroupObject fieldGroupObject1 = SwagFieldGroupObject.getExample();
        SwagFieldGroupObject fieldGroupObject2 = new SwagFieldGroupObject();
        SwagFieldGroupObject fieldGroupObject3;

        System.assertEquals(false, fieldGroupObject1.equals(fieldGroupObject3));
        System.assertEquals(false, fieldGroupObject2.equals(fieldGroupObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFieldGroupObject fieldGroupObject1 = SwagFieldGroupObject.getExample();
        SwagFieldGroupObject fieldGroupObject2 = new SwagFieldGroupObject();

        System.assertEquals(fieldGroupObject1.hashCode(), fieldGroupObject1.hashCode());
        System.assertEquals(fieldGroupObject2.hashCode(), fieldGroupObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFieldGroupObject fieldGroupObject1 = SwagFieldGroupObject.getExample();
        SwagFieldGroupObject fieldGroupObject2 = SwagFieldGroupObject.getExample();
        SwagFieldGroupObject fieldGroupObject3 = new SwagFieldGroupObject();
        SwagFieldGroupObject fieldGroupObject4 = new SwagFieldGroupObject();

        System.assert(fieldGroupObject1.equals(fieldGroupObject2));
        System.assert(fieldGroupObject3.equals(fieldGroupObject4));
        System.assertEquals(fieldGroupObject1.hashCode(), fieldGroupObject2.hashCode());
        System.assertEquals(fieldGroupObject3.hashCode(), fieldGroupObject4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFieldGroupObject fieldGroupObject = new SwagFieldGroupObject();
        System.assertEquals(new List<SwagFieldObjectFields>(), fieldGroupObject.fields);
        System.assertEquals(null, fieldGroupObject.name);
        System.assertEquals(null, fieldGroupObject.custom);
    }
}

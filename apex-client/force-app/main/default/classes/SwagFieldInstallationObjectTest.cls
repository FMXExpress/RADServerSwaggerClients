@isTest
private class SwagFieldInstallationObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFieldInstallationObject fieldInstallationObject1 = SwagFieldInstallationObject.getExample();
        SwagFieldInstallationObject fieldInstallationObject2 = fieldInstallationObject1;
        SwagFieldInstallationObject fieldInstallationObject3 = new SwagFieldInstallationObject();
        SwagFieldInstallationObject fieldInstallationObject4 = fieldInstallationObject3;

        System.assert(fieldInstallationObject1.equals(fieldInstallationObject2));
        System.assert(fieldInstallationObject2.equals(fieldInstallationObject1));
        System.assert(fieldInstallationObject1.equals(fieldInstallationObject1));
        System.assert(fieldInstallationObject3.equals(fieldInstallationObject4));
        System.assert(fieldInstallationObject4.equals(fieldInstallationObject3));
        System.assert(fieldInstallationObject3.equals(fieldInstallationObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFieldInstallationObject fieldInstallationObject1 = SwagFieldInstallationObject.getExample();
        SwagFieldInstallationObject fieldInstallationObject2 = SwagFieldInstallationObject.getExample();
        SwagFieldInstallationObject fieldInstallationObject3 = new SwagFieldInstallationObject();
        SwagFieldInstallationObject fieldInstallationObject4 = new SwagFieldInstallationObject();

        System.assert(fieldInstallationObject1.equals(fieldInstallationObject2));
        System.assert(fieldInstallationObject2.equals(fieldInstallationObject1));
        System.assert(fieldInstallationObject3.equals(fieldInstallationObject4));
        System.assert(fieldInstallationObject4.equals(fieldInstallationObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFieldInstallationObject fieldInstallationObject1 = SwagFieldInstallationObject.getExample();
        SwagFieldInstallationObject fieldInstallationObject2 = new SwagFieldInstallationObject();

        System.assertEquals(false, fieldInstallationObject1.equals(fieldInstallationObject2));
        System.assertEquals(false, fieldInstallationObject2.equals(fieldInstallationObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFieldInstallationObject fieldInstallationObject1 = SwagFieldInstallationObject.getExample();
        SwagFieldInstallationObject fieldInstallationObject2 = new SwagFieldInstallationObject();

        System.assertEquals(false, fieldInstallationObject1.equals('foo'));
        System.assertEquals(false, fieldInstallationObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFieldInstallationObject fieldInstallationObject1 = SwagFieldInstallationObject.getExample();
        SwagFieldInstallationObject fieldInstallationObject2 = new SwagFieldInstallationObject();
        SwagFieldInstallationObject fieldInstallationObject3;

        System.assertEquals(false, fieldInstallationObject1.equals(fieldInstallationObject3));
        System.assertEquals(false, fieldInstallationObject2.equals(fieldInstallationObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFieldInstallationObject fieldInstallationObject1 = SwagFieldInstallationObject.getExample();
        SwagFieldInstallationObject fieldInstallationObject2 = new SwagFieldInstallationObject();

        System.assertEquals(fieldInstallationObject1.hashCode(), fieldInstallationObject1.hashCode());
        System.assertEquals(fieldInstallationObject2.hashCode(), fieldInstallationObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFieldInstallationObject fieldInstallationObject1 = SwagFieldInstallationObject.getExample();
        SwagFieldInstallationObject fieldInstallationObject2 = SwagFieldInstallationObject.getExample();
        SwagFieldInstallationObject fieldInstallationObject3 = new SwagFieldInstallationObject();
        SwagFieldInstallationObject fieldInstallationObject4 = new SwagFieldInstallationObject();

        System.assert(fieldInstallationObject1.equals(fieldInstallationObject2));
        System.assert(fieldInstallationObject3.equals(fieldInstallationObject4));
        System.assertEquals(fieldInstallationObject1.hashCode(), fieldInstallationObject2.hashCode());
        System.assertEquals(fieldInstallationObject3.hashCode(), fieldInstallationObject4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFieldInstallationObject fieldInstallationObject = new SwagFieldInstallationObject();
        System.assertEquals(new List<SwagFieldObjectFields>(), fieldInstallationObject.fields);
        System.assertEquals(null, fieldInstallationObject.name);
        System.assertEquals(null, fieldInstallationObject.custom);
    }
}

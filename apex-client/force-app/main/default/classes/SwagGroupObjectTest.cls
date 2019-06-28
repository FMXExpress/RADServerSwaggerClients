@isTest
private class SwagGroupObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGroupObject groupObject1 = SwagGroupObject.getExample();
        SwagGroupObject groupObject2 = groupObject1;
        SwagGroupObject groupObject3 = new SwagGroupObject();
        SwagGroupObject groupObject4 = groupObject3;

        System.assert(groupObject1.equals(groupObject2));
        System.assert(groupObject2.equals(groupObject1));
        System.assert(groupObject1.equals(groupObject1));
        System.assert(groupObject3.equals(groupObject4));
        System.assert(groupObject4.equals(groupObject3));
        System.assert(groupObject3.equals(groupObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGroupObject groupObject1 = SwagGroupObject.getExample();
        SwagGroupObject groupObject2 = SwagGroupObject.getExample();
        SwagGroupObject groupObject3 = new SwagGroupObject();
        SwagGroupObject groupObject4 = new SwagGroupObject();

        System.assert(groupObject1.equals(groupObject2));
        System.assert(groupObject2.equals(groupObject1));
        System.assert(groupObject3.equals(groupObject4));
        System.assert(groupObject4.equals(groupObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGroupObject groupObject1 = SwagGroupObject.getExample();
        SwagGroupObject groupObject2 = new SwagGroupObject();

        System.assertEquals(false, groupObject1.equals(groupObject2));
        System.assertEquals(false, groupObject2.equals(groupObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGroupObject groupObject1 = SwagGroupObject.getExample();
        SwagGroupObject groupObject2 = new SwagGroupObject();

        System.assertEquals(false, groupObject1.equals('foo'));
        System.assertEquals(false, groupObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGroupObject groupObject1 = SwagGroupObject.getExample();
        SwagGroupObject groupObject2 = new SwagGroupObject();
        SwagGroupObject groupObject3;

        System.assertEquals(false, groupObject1.equals(groupObject3));
        System.assertEquals(false, groupObject2.equals(groupObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGroupObject groupObject1 = SwagGroupObject.getExample();
        SwagGroupObject groupObject2 = new SwagGroupObject();

        System.assertEquals(groupObject1.hashCode(), groupObject1.hashCode());
        System.assertEquals(groupObject2.hashCode(), groupObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGroupObject groupObject1 = SwagGroupObject.getExample();
        SwagGroupObject groupObject2 = SwagGroupObject.getExample();
        SwagGroupObject groupObject3 = new SwagGroupObject();
        SwagGroupObject groupObject4 = new SwagGroupObject();

        System.assert(groupObject1.equals(groupObject2));
        System.assert(groupObject3.equals(groupObject4));
        System.assertEquals(groupObject1.hashCode(), groupObject2.hashCode());
        System.assertEquals(groupObject3.hashCode(), groupObject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagGroupObject groupObject = new SwagGroupObject();
        Map<String, String> propertyMappings = groupObject.getPropertyMappings();
        System.assertEquals('meta', propertyMappings.get('_meta'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagGroupObject groupObject = new SwagGroupObject();
        System.assertEquals(new List<String>(), groupObject.users);
        System.assertEquals(null, groupObject.name);
        System.assertEquals(null, groupObject.meta);
    }
}

@isTest
private class SwagPushObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPushObject pushObject1 = SwagPushObject.getExample();
        SwagPushObject pushObject2 = pushObject1;
        SwagPushObject pushObject3 = new SwagPushObject();
        SwagPushObject pushObject4 = pushObject3;

        System.assert(pushObject1.equals(pushObject2));
        System.assert(pushObject2.equals(pushObject1));
        System.assert(pushObject1.equals(pushObject1));
        System.assert(pushObject3.equals(pushObject4));
        System.assert(pushObject4.equals(pushObject3));
        System.assert(pushObject3.equals(pushObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPushObject pushObject1 = SwagPushObject.getExample();
        SwagPushObject pushObject2 = SwagPushObject.getExample();
        SwagPushObject pushObject3 = new SwagPushObject();
        SwagPushObject pushObject4 = new SwagPushObject();

        System.assert(pushObject1.equals(pushObject2));
        System.assert(pushObject2.equals(pushObject1));
        System.assert(pushObject3.equals(pushObject4));
        System.assert(pushObject4.equals(pushObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPushObject pushObject1 = SwagPushObject.getExample();
        SwagPushObject pushObject2 = new SwagPushObject();

        System.assertEquals(false, pushObject1.equals(pushObject2));
        System.assertEquals(false, pushObject2.equals(pushObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPushObject pushObject1 = SwagPushObject.getExample();
        SwagPushObject pushObject2 = new SwagPushObject();

        System.assertEquals(false, pushObject1.equals('foo'));
        System.assertEquals(false, pushObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPushObject pushObject1 = SwagPushObject.getExample();
        SwagPushObject pushObject2 = new SwagPushObject();
        SwagPushObject pushObject3;

        System.assertEquals(false, pushObject1.equals(pushObject3));
        System.assertEquals(false, pushObject2.equals(pushObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPushObject pushObject1 = SwagPushObject.getExample();
        SwagPushObject pushObject2 = new SwagPushObject();

        System.assertEquals(pushObject1.hashCode(), pushObject1.hashCode());
        System.assertEquals(pushObject2.hashCode(), pushObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPushObject pushObject1 = SwagPushObject.getExample();
        SwagPushObject pushObject2 = SwagPushObject.getExample();
        SwagPushObject pushObject3 = new SwagPushObject();
        SwagPushObject pushObject4 = new SwagPushObject();

        System.assert(pushObject1.equals(pushObject2));
        System.assert(pushObject3.equals(pushObject4));
        System.assertEquals(pushObject1.hashCode(), pushObject2.hashCode());
        System.assertEquals(pushObject3.hashCode(), pushObject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPushObject pushObject = new SwagPushObject();
        Map<String, String> propertyMappings = pushObject.getPropertyMappings();
        System.assertEquals('r_where', propertyMappings.get('where'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagPushObject pushObject = new SwagPushObject();
        System.assertEquals(new List<String>(), pushObject.channels);
        System.assertEquals(null, pushObject.data);
        System.assertEquals(null, pushObject.r_where);
    }
}

@isTest
private class SwagUseridObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagUseridObject useridObject1 = SwagUseridObject.getExample();
        SwagUseridObject useridObject2 = useridObject1;
        SwagUseridObject useridObject3 = new SwagUseridObject();
        SwagUseridObject useridObject4 = useridObject3;

        System.assert(useridObject1.equals(useridObject2));
        System.assert(useridObject2.equals(useridObject1));
        System.assert(useridObject1.equals(useridObject1));
        System.assert(useridObject3.equals(useridObject4));
        System.assert(useridObject4.equals(useridObject3));
        System.assert(useridObject3.equals(useridObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagUseridObject useridObject1 = SwagUseridObject.getExample();
        SwagUseridObject useridObject2 = SwagUseridObject.getExample();
        SwagUseridObject useridObject3 = new SwagUseridObject();
        SwagUseridObject useridObject4 = new SwagUseridObject();

        System.assert(useridObject1.equals(useridObject2));
        System.assert(useridObject2.equals(useridObject1));
        System.assert(useridObject3.equals(useridObject4));
        System.assert(useridObject4.equals(useridObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagUseridObject useridObject1 = SwagUseridObject.getExample();
        SwagUseridObject useridObject2 = new SwagUseridObject();

        System.assertEquals(false, useridObject1.equals(useridObject2));
        System.assertEquals(false, useridObject2.equals(useridObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagUseridObject useridObject1 = SwagUseridObject.getExample();
        SwagUseridObject useridObject2 = new SwagUseridObject();

        System.assertEquals(false, useridObject1.equals('foo'));
        System.assertEquals(false, useridObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagUseridObject useridObject1 = SwagUseridObject.getExample();
        SwagUseridObject useridObject2 = new SwagUseridObject();
        SwagUseridObject useridObject3;

        System.assertEquals(false, useridObject1.equals(useridObject3));
        System.assertEquals(false, useridObject2.equals(useridObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagUseridObject useridObject1 = SwagUseridObject.getExample();
        SwagUseridObject useridObject2 = new SwagUseridObject();

        System.assertEquals(useridObject1.hashCode(), useridObject1.hashCode());
        System.assertEquals(useridObject2.hashCode(), useridObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagUseridObject useridObject1 = SwagUseridObject.getExample();
        SwagUseridObject useridObject2 = SwagUseridObject.getExample();
        SwagUseridObject useridObject3 = new SwagUseridObject();
        SwagUseridObject useridObject4 = new SwagUseridObject();

        System.assert(useridObject1.equals(useridObject2));
        System.assert(useridObject3.equals(useridObject4));
        System.assertEquals(useridObject1.hashCode(), useridObject2.hashCode());
        System.assertEquals(useridObject3.hashCode(), useridObject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagUseridObject useridObject = new SwagUseridObject();
        Map<String, String> propertyMappings = useridObject.getPropertyMappings();
        System.assertEquals('id', propertyMappings.get('_id'));
    }
}

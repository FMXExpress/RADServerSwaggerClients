@isTest
private class SwagGroupAddObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagGroupAddObject groupAddObject1 = SwagGroupAddObject.getExample();
        SwagGroupAddObject groupAddObject2 = groupAddObject1;
        SwagGroupAddObject groupAddObject3 = new SwagGroupAddObject();
        SwagGroupAddObject groupAddObject4 = groupAddObject3;

        System.assert(groupAddObject1.equals(groupAddObject2));
        System.assert(groupAddObject2.equals(groupAddObject1));
        System.assert(groupAddObject1.equals(groupAddObject1));
        System.assert(groupAddObject3.equals(groupAddObject4));
        System.assert(groupAddObject4.equals(groupAddObject3));
        System.assert(groupAddObject3.equals(groupAddObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagGroupAddObject groupAddObject1 = SwagGroupAddObject.getExample();
        SwagGroupAddObject groupAddObject2 = SwagGroupAddObject.getExample();
        SwagGroupAddObject groupAddObject3 = new SwagGroupAddObject();
        SwagGroupAddObject groupAddObject4 = new SwagGroupAddObject();

        System.assert(groupAddObject1.equals(groupAddObject2));
        System.assert(groupAddObject2.equals(groupAddObject1));
        System.assert(groupAddObject3.equals(groupAddObject4));
        System.assert(groupAddObject4.equals(groupAddObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagGroupAddObject groupAddObject1 = SwagGroupAddObject.getExample();
        SwagGroupAddObject groupAddObject2 = new SwagGroupAddObject();

        System.assertEquals(false, groupAddObject1.equals(groupAddObject2));
        System.assertEquals(false, groupAddObject2.equals(groupAddObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagGroupAddObject groupAddObject1 = SwagGroupAddObject.getExample();
        SwagGroupAddObject groupAddObject2 = new SwagGroupAddObject();

        System.assertEquals(false, groupAddObject1.equals('foo'));
        System.assertEquals(false, groupAddObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagGroupAddObject groupAddObject1 = SwagGroupAddObject.getExample();
        SwagGroupAddObject groupAddObject2 = new SwagGroupAddObject();
        SwagGroupAddObject groupAddObject3;

        System.assertEquals(false, groupAddObject1.equals(groupAddObject3));
        System.assertEquals(false, groupAddObject2.equals(groupAddObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagGroupAddObject groupAddObject1 = SwagGroupAddObject.getExample();
        SwagGroupAddObject groupAddObject2 = new SwagGroupAddObject();

        System.assertEquals(groupAddObject1.hashCode(), groupAddObject1.hashCode());
        System.assertEquals(groupAddObject2.hashCode(), groupAddObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagGroupAddObject groupAddObject1 = SwagGroupAddObject.getExample();
        SwagGroupAddObject groupAddObject2 = SwagGroupAddObject.getExample();
        SwagGroupAddObject groupAddObject3 = new SwagGroupAddObject();
        SwagGroupAddObject groupAddObject4 = new SwagGroupAddObject();

        System.assert(groupAddObject1.equals(groupAddObject2));
        System.assert(groupAddObject3.equals(groupAddObject4));
        System.assertEquals(groupAddObject1.hashCode(), groupAddObject2.hashCode());
        System.assertEquals(groupAddObject3.hashCode(), groupAddObject4.hashCode());
    }
}

@isTest
private class SwagUpdatedGroupObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagUpdatedGroupObject updatedGroupObject1 = SwagUpdatedGroupObject.getExample();
        SwagUpdatedGroupObject updatedGroupObject2 = updatedGroupObject1;
        SwagUpdatedGroupObject updatedGroupObject3 = new SwagUpdatedGroupObject();
        SwagUpdatedGroupObject updatedGroupObject4 = updatedGroupObject3;

        System.assert(updatedGroupObject1.equals(updatedGroupObject2));
        System.assert(updatedGroupObject2.equals(updatedGroupObject1));
        System.assert(updatedGroupObject1.equals(updatedGroupObject1));
        System.assert(updatedGroupObject3.equals(updatedGroupObject4));
        System.assert(updatedGroupObject4.equals(updatedGroupObject3));
        System.assert(updatedGroupObject3.equals(updatedGroupObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagUpdatedGroupObject updatedGroupObject1 = SwagUpdatedGroupObject.getExample();
        SwagUpdatedGroupObject updatedGroupObject2 = SwagUpdatedGroupObject.getExample();
        SwagUpdatedGroupObject updatedGroupObject3 = new SwagUpdatedGroupObject();
        SwagUpdatedGroupObject updatedGroupObject4 = new SwagUpdatedGroupObject();

        System.assert(updatedGroupObject1.equals(updatedGroupObject2));
        System.assert(updatedGroupObject2.equals(updatedGroupObject1));
        System.assert(updatedGroupObject3.equals(updatedGroupObject4));
        System.assert(updatedGroupObject4.equals(updatedGroupObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagUpdatedGroupObject updatedGroupObject1 = SwagUpdatedGroupObject.getExample();
        SwagUpdatedGroupObject updatedGroupObject2 = new SwagUpdatedGroupObject();

        System.assertEquals(false, updatedGroupObject1.equals(updatedGroupObject2));
        System.assertEquals(false, updatedGroupObject2.equals(updatedGroupObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagUpdatedGroupObject updatedGroupObject1 = SwagUpdatedGroupObject.getExample();
        SwagUpdatedGroupObject updatedGroupObject2 = new SwagUpdatedGroupObject();

        System.assertEquals(false, updatedGroupObject1.equals('foo'));
        System.assertEquals(false, updatedGroupObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagUpdatedGroupObject updatedGroupObject1 = SwagUpdatedGroupObject.getExample();
        SwagUpdatedGroupObject updatedGroupObject2 = new SwagUpdatedGroupObject();
        SwagUpdatedGroupObject updatedGroupObject3;

        System.assertEquals(false, updatedGroupObject1.equals(updatedGroupObject3));
        System.assertEquals(false, updatedGroupObject2.equals(updatedGroupObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagUpdatedGroupObject updatedGroupObject1 = SwagUpdatedGroupObject.getExample();
        SwagUpdatedGroupObject updatedGroupObject2 = new SwagUpdatedGroupObject();

        System.assertEquals(updatedGroupObject1.hashCode(), updatedGroupObject1.hashCode());
        System.assertEquals(updatedGroupObject2.hashCode(), updatedGroupObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagUpdatedGroupObject updatedGroupObject1 = SwagUpdatedGroupObject.getExample();
        SwagUpdatedGroupObject updatedGroupObject2 = SwagUpdatedGroupObject.getExample();
        SwagUpdatedGroupObject updatedGroupObject3 = new SwagUpdatedGroupObject();
        SwagUpdatedGroupObject updatedGroupObject4 = new SwagUpdatedGroupObject();

        System.assert(updatedGroupObject1.equals(updatedGroupObject2));
        System.assert(updatedGroupObject3.equals(updatedGroupObject4));
        System.assertEquals(updatedGroupObject1.hashCode(), updatedGroupObject2.hashCode());
        System.assertEquals(updatedGroupObject3.hashCode(), updatedGroupObject4.hashCode());
    }
}

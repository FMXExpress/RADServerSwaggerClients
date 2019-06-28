@isTest
private class SwagUpdatedObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagUpdatedObject updatedObject1 = SwagUpdatedObject.getExample();
        SwagUpdatedObject updatedObject2 = updatedObject1;
        SwagUpdatedObject updatedObject3 = new SwagUpdatedObject();
        SwagUpdatedObject updatedObject4 = updatedObject3;

        System.assert(updatedObject1.equals(updatedObject2));
        System.assert(updatedObject2.equals(updatedObject1));
        System.assert(updatedObject1.equals(updatedObject1));
        System.assert(updatedObject3.equals(updatedObject4));
        System.assert(updatedObject4.equals(updatedObject3));
        System.assert(updatedObject3.equals(updatedObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagUpdatedObject updatedObject1 = SwagUpdatedObject.getExample();
        SwagUpdatedObject updatedObject2 = SwagUpdatedObject.getExample();
        SwagUpdatedObject updatedObject3 = new SwagUpdatedObject();
        SwagUpdatedObject updatedObject4 = new SwagUpdatedObject();

        System.assert(updatedObject1.equals(updatedObject2));
        System.assert(updatedObject2.equals(updatedObject1));
        System.assert(updatedObject3.equals(updatedObject4));
        System.assert(updatedObject4.equals(updatedObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagUpdatedObject updatedObject1 = SwagUpdatedObject.getExample();
        SwagUpdatedObject updatedObject2 = new SwagUpdatedObject();

        System.assertEquals(false, updatedObject1.equals(updatedObject2));
        System.assertEquals(false, updatedObject2.equals(updatedObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagUpdatedObject updatedObject1 = SwagUpdatedObject.getExample();
        SwagUpdatedObject updatedObject2 = new SwagUpdatedObject();

        System.assertEquals(false, updatedObject1.equals('foo'));
        System.assertEquals(false, updatedObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagUpdatedObject updatedObject1 = SwagUpdatedObject.getExample();
        SwagUpdatedObject updatedObject2 = new SwagUpdatedObject();
        SwagUpdatedObject updatedObject3;

        System.assertEquals(false, updatedObject1.equals(updatedObject3));
        System.assertEquals(false, updatedObject2.equals(updatedObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagUpdatedObject updatedObject1 = SwagUpdatedObject.getExample();
        SwagUpdatedObject updatedObject2 = new SwagUpdatedObject();

        System.assertEquals(updatedObject1.hashCode(), updatedObject1.hashCode());
        System.assertEquals(updatedObject2.hashCode(), updatedObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagUpdatedObject updatedObject1 = SwagUpdatedObject.getExample();
        SwagUpdatedObject updatedObject2 = SwagUpdatedObject.getExample();
        SwagUpdatedObject updatedObject3 = new SwagUpdatedObject();
        SwagUpdatedObject updatedObject4 = new SwagUpdatedObject();

        System.assert(updatedObject1.equals(updatedObject2));
        System.assert(updatedObject3.equals(updatedObject4));
        System.assertEquals(updatedObject1.hashCode(), updatedObject2.hashCode());
        System.assertEquals(updatedObject3.hashCode(), updatedObject4.hashCode());
    }
}

@isTest
private class SwagUpdateGroupObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagUpdateGroupObject updateGroupObject1 = SwagUpdateGroupObject.getExample();
        SwagUpdateGroupObject updateGroupObject2 = updateGroupObject1;
        SwagUpdateGroupObject updateGroupObject3 = new SwagUpdateGroupObject();
        SwagUpdateGroupObject updateGroupObject4 = updateGroupObject3;

        System.assert(updateGroupObject1.equals(updateGroupObject2));
        System.assert(updateGroupObject2.equals(updateGroupObject1));
        System.assert(updateGroupObject1.equals(updateGroupObject1));
        System.assert(updateGroupObject3.equals(updateGroupObject4));
        System.assert(updateGroupObject4.equals(updateGroupObject3));
        System.assert(updateGroupObject3.equals(updateGroupObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagUpdateGroupObject updateGroupObject1 = SwagUpdateGroupObject.getExample();
        SwagUpdateGroupObject updateGroupObject2 = SwagUpdateGroupObject.getExample();
        SwagUpdateGroupObject updateGroupObject3 = new SwagUpdateGroupObject();
        SwagUpdateGroupObject updateGroupObject4 = new SwagUpdateGroupObject();

        System.assert(updateGroupObject1.equals(updateGroupObject2));
        System.assert(updateGroupObject2.equals(updateGroupObject1));
        System.assert(updateGroupObject3.equals(updateGroupObject4));
        System.assert(updateGroupObject4.equals(updateGroupObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagUpdateGroupObject updateGroupObject1 = SwagUpdateGroupObject.getExample();
        SwagUpdateGroupObject updateGroupObject2 = new SwagUpdateGroupObject();

        System.assertEquals(false, updateGroupObject1.equals(updateGroupObject2));
        System.assertEquals(false, updateGroupObject2.equals(updateGroupObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagUpdateGroupObject updateGroupObject1 = SwagUpdateGroupObject.getExample();
        SwagUpdateGroupObject updateGroupObject2 = new SwagUpdateGroupObject();

        System.assertEquals(false, updateGroupObject1.equals('foo'));
        System.assertEquals(false, updateGroupObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagUpdateGroupObject updateGroupObject1 = SwagUpdateGroupObject.getExample();
        SwagUpdateGroupObject updateGroupObject2 = new SwagUpdateGroupObject();
        SwagUpdateGroupObject updateGroupObject3;

        System.assertEquals(false, updateGroupObject1.equals(updateGroupObject3));
        System.assertEquals(false, updateGroupObject2.equals(updateGroupObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagUpdateGroupObject updateGroupObject1 = SwagUpdateGroupObject.getExample();
        SwagUpdateGroupObject updateGroupObject2 = new SwagUpdateGroupObject();

        System.assertEquals(updateGroupObject1.hashCode(), updateGroupObject1.hashCode());
        System.assertEquals(updateGroupObject2.hashCode(), updateGroupObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagUpdateGroupObject updateGroupObject1 = SwagUpdateGroupObject.getExample();
        SwagUpdateGroupObject updateGroupObject2 = SwagUpdateGroupObject.getExample();
        SwagUpdateGroupObject updateGroupObject3 = new SwagUpdateGroupObject();
        SwagUpdateGroupObject updateGroupObject4 = new SwagUpdateGroupObject();

        System.assert(updateGroupObject1.equals(updateGroupObject2));
        System.assert(updateGroupObject3.equals(updateGroupObject4));
        System.assertEquals(updateGroupObject1.hashCode(), updateGroupObject2.hashCode());
        System.assertEquals(updateGroupObject3.hashCode(), updateGroupObject4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagUpdateGroupObject updateGroupObject = new SwagUpdateGroupObject();
        System.assertEquals(new List<String>(), updateGroupObject.users);
        System.assertEquals(null, updateGroupObject.fieldName);
    }
}

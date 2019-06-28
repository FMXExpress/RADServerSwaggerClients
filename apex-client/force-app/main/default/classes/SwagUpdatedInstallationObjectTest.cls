@isTest
private class SwagUpdatedInstallationObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagUpdatedInstallationObject updatedInstallationObject1 = SwagUpdatedInstallationObject.getExample();
        SwagUpdatedInstallationObject updatedInstallationObject2 = updatedInstallationObject1;
        SwagUpdatedInstallationObject updatedInstallationObject3 = new SwagUpdatedInstallationObject();
        SwagUpdatedInstallationObject updatedInstallationObject4 = updatedInstallationObject3;

        System.assert(updatedInstallationObject1.equals(updatedInstallationObject2));
        System.assert(updatedInstallationObject2.equals(updatedInstallationObject1));
        System.assert(updatedInstallationObject1.equals(updatedInstallationObject1));
        System.assert(updatedInstallationObject3.equals(updatedInstallationObject4));
        System.assert(updatedInstallationObject4.equals(updatedInstallationObject3));
        System.assert(updatedInstallationObject3.equals(updatedInstallationObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagUpdatedInstallationObject updatedInstallationObject1 = SwagUpdatedInstallationObject.getExample();
        SwagUpdatedInstallationObject updatedInstallationObject2 = SwagUpdatedInstallationObject.getExample();
        SwagUpdatedInstallationObject updatedInstallationObject3 = new SwagUpdatedInstallationObject();
        SwagUpdatedInstallationObject updatedInstallationObject4 = new SwagUpdatedInstallationObject();

        System.assert(updatedInstallationObject1.equals(updatedInstallationObject2));
        System.assert(updatedInstallationObject2.equals(updatedInstallationObject1));
        System.assert(updatedInstallationObject3.equals(updatedInstallationObject4));
        System.assert(updatedInstallationObject4.equals(updatedInstallationObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagUpdatedInstallationObject updatedInstallationObject1 = SwagUpdatedInstallationObject.getExample();
        SwagUpdatedInstallationObject updatedInstallationObject2 = new SwagUpdatedInstallationObject();

        System.assertEquals(false, updatedInstallationObject1.equals(updatedInstallationObject2));
        System.assertEquals(false, updatedInstallationObject2.equals(updatedInstallationObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagUpdatedInstallationObject updatedInstallationObject1 = SwagUpdatedInstallationObject.getExample();
        SwagUpdatedInstallationObject updatedInstallationObject2 = new SwagUpdatedInstallationObject();

        System.assertEquals(false, updatedInstallationObject1.equals('foo'));
        System.assertEquals(false, updatedInstallationObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagUpdatedInstallationObject updatedInstallationObject1 = SwagUpdatedInstallationObject.getExample();
        SwagUpdatedInstallationObject updatedInstallationObject2 = new SwagUpdatedInstallationObject();
        SwagUpdatedInstallationObject updatedInstallationObject3;

        System.assertEquals(false, updatedInstallationObject1.equals(updatedInstallationObject3));
        System.assertEquals(false, updatedInstallationObject2.equals(updatedInstallationObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagUpdatedInstallationObject updatedInstallationObject1 = SwagUpdatedInstallationObject.getExample();
        SwagUpdatedInstallationObject updatedInstallationObject2 = new SwagUpdatedInstallationObject();

        System.assertEquals(updatedInstallationObject1.hashCode(), updatedInstallationObject1.hashCode());
        System.assertEquals(updatedInstallationObject2.hashCode(), updatedInstallationObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagUpdatedInstallationObject updatedInstallationObject1 = SwagUpdatedInstallationObject.getExample();
        SwagUpdatedInstallationObject updatedInstallationObject2 = SwagUpdatedInstallationObject.getExample();
        SwagUpdatedInstallationObject updatedInstallationObject3 = new SwagUpdatedInstallationObject();
        SwagUpdatedInstallationObject updatedInstallationObject4 = new SwagUpdatedInstallationObject();

        System.assert(updatedInstallationObject1.equals(updatedInstallationObject2));
        System.assert(updatedInstallationObject3.equals(updatedInstallationObject4));
        System.assertEquals(updatedInstallationObject1.hashCode(), updatedInstallationObject2.hashCode());
        System.assertEquals(updatedInstallationObject3.hashCode(), updatedInstallationObject4.hashCode());
    }
}

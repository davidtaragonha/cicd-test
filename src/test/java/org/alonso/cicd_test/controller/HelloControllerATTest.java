package org.alonso.cicd_test.controller;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static org.alonso.cicd_test.controller.TestCategories.AT;
import static org.junit.jupiter.api.Assertions.assertTrue;

@Tag(AT)
class HelloControllerATTest {
    @DisplayName("Dummy AT test successful")
    @Test
    void dummySuccessATTest() {
        assertTrue(true);
    }
}
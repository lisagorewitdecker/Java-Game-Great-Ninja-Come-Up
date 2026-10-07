package com.codingdojo.ninjaProject;

import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.nio.charset.StandardCharsets;

import org.junit.jupiter.api.Test;

import com.fasterxml.jackson.core.ErrorReportConfiguration;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;

class JacksonErrorTokenLimitTest {

	@Test
	void dataInputInvalidTokenRespectsMaxErrorTokenLength() throws Exception {
		int maxErrorTokenLength = 32;
		JsonFactory factory = JsonFactory.builder()
				.errorReportConfiguration(ErrorReportConfiguration.builder()
						.maxErrorTokenLength(maxErrorTokenLength)
						.build())
				.build();
		String invalidToken = "a".repeat(maxErrorTokenLength * 50);
		byte[] json = (invalidToken + " ").getBytes(StandardCharsets.UTF_8);

		try (DataInputStream input = new DataInputStream(new ByteArrayInputStream(json));
				JsonParser parser = factory.createParser((DataInput) input)) {
			JsonParseException exception = assertThrows(JsonParseException.class, parser::nextToken);

			assertTrue(exception.getOriginalMessage().startsWith(
					"Unrecognized token '" + invalidToken.substring(0, maxErrorTokenLength) + "...':"));
		}
	}
}

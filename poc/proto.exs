defmodule PacketParser do
  def parse_packet(binary) do
    <<0,
      opcode::little-32,
      0,
      hash::little-32,
      0,
      strlen1::little-32, str1::binary-size(strlen1),
      int1::little-32,
      int2::little-32,
      int3::little-32,
      0,
      strlen2::little-32, str2::binary-size(strlen2),
      0,
      strlen3::little-32, str3::binary-size(strlen3),
      0,
      int4::little-32,
      0,
      strlen4::little-32, str4::binary-size(strlen4),
      0,
      strlen5::little-32, str5::binary-size(strlen5),
      0,
      strlen6::little-32, str6::binary-size(strlen6),
      0,
      strlen7::little-32, str7::binary-size(strlen7),
      int5::little-32,
      0,
      strlen8::little-32, str8::binary-size(strlen8),
      0,
      strlen9::little-32, str9::binary-size(strlen9),
      0,
      strlen10::little-32, str10::binary-size(strlen10),
      0,
      strlen11::little-32, str11::binary-size(strlen11),
      0,
      strlen12::little-32, str12::binary-size(strlen12),
      int6::little-32,
      int7::little-32>> = binary

    IO.puts("""
    Opcode: \n#{opcode}\n
    Hash: \n#{hash}\n
    local_area_network_adress: \n#{str1}\n
    market: \n#{int1}\n
    authentication_kind: \n#{int2}\n
    os_kind: \n#{int3}\n
    os_version: \n#{str2}\n
    device_model: \n#{str3}\n
    adid: \n#{int4}\n
    idfv: \n#{str4}\n
    country_code: \n#{str5}\n
    language: \n#{str6}\n
    app_version: \n#{str7}\n
    os_type: \n#{int5}\n
    os_name: \n#{str8}\n
    npsn: \n#{str9}\n
    np_token: \n#{str10}\n
    ngsm_token: \n#{str11}\n
    npa_code: \n#{str12}\n
    nexon_sn: \n#{int6}\n
    terminator: \n#{int7}\n
    """)
  end
end

packet = <<0, 208, 13, 160, 235, 0, 64, 134, 244, 147, 0, 32, 0, 0, 0, 91, 102, 101, 56, 48, 58, 58, 56, 51, 53, 58, 99, 51, 98, 100, 58, 55, 98, 55, 101, 58, 49, 50, 102, 100, 93, 58, 52, 57, 55, 52, 49, 2, 0, 0, 0, 103, 0, 0, 0, 2, 0, 0, 0, 0, 6, 0, 0, 0, 49, 52, 46, 55, 46, 49, 0, 10, 0, 0, 0, 105, 80, 104, 111, 110, 101, 49, 50, 44, 49, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 53, 56, 53, 54, 56, 55, 50, 55, 45, 67, 69, 48, 49, 45, 52, 68, 48, 67, 45, 56, 52, 69, 70, 45, 53, 48, 51, 57, 50, 65, 65, 54, 50, 68, 57, 56, 0, 2, 0, 0, 0, 67, 78, 0, 5, 0, 0, 0, 122, 104, 95, 84, 87, 0, 9, 0, 0, 0, 49, 46, 49, 57, 48, 49, 46, 50, 48, 1, 0, 0, 0, 0, 10, 0, 0, 0, 105, 79, 83, 32, 49, 52, 46, 55, 46, 49, 0, 17, 0, 0, 0, 50, 51, 55, 52, 48, 48, 48, 48, 48, 48, 48, 49, 55, 51, 57, 53, 55, 0, 33, 0, 0, 0, 84, 79, 85, 97, 100, 114, 70, 119, 114, 68, 56, 49, 106, 122, 68, 50, 67, 86, 71, 118, 70, 90, 74, 69, 118, 105, 79, 71, 106, 104, 100, 89, 110, 0, 88, 0, 0, 0, 54, 86, 103, 74, 90, 111, 53, 86, 76, 99, 75, 120, 121, 110, 122, 111, 116, 98, 84, 114, 67, 71, 120, 113, 50, 79, 49, 49, 52, 115, 77, 49, 119, 113, 57, 66, 70, 106, 103, 67, 86, 105, 50, 117, 100, 54, 80, 117, 98, 105, 97, 89, 85, 87, 52, 52, 81, 79, 66, 102, 73, 116, 73, 88, 47, 97, 75, 86, 54, 88, 120, 52, 86, 52, 122, 112, 103, 57, 108, 51, 112, 75, 84, 116, 67, 81, 61, 61, 0, 13, 0, 0, 0, 48, 84, 55, 48, 48, 87, 48, 49, 48, 52, 48, 50, 48, 240, 46, 17, 0, 0, 0, 0, 0>>

PacketParser.parse_packet(packet)

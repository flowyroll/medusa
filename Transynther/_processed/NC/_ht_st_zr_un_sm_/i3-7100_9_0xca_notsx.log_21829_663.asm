.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x17601, %rdi
nop
nop
nop
nop
add $28855, %r10
movb $0x61, (%rdi)
dec %r9
lea addresses_WT_ht+0x1e941, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%rdi)
nop
and %r9, %r9
lea addresses_WT_ht+0x51f1, %r15
nop
nop
nop
nop
nop
inc %rbx
mov $0x6162636465666768, %rax
movq %rax, (%r15)
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x17481, %r9
clflush (%r9)
nop
nop
dec %r13
movw $0x6162, (%r9)
and %rdi, %rdi
lea addresses_A_ht+0x3b01, %r10
nop
cmp $21771, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm2
and $0xffffffffffffffc0, %r10
vmovaps %ymm2, (%r10)
nop
nop
nop
nop
cmp $19156, %r13
lea addresses_normal_ht+0x10081, %r13
nop
nop
nop
nop
add %rax, %rax
mov (%r13), %r9w
nop
nop
and %rax, %rax
lea addresses_WT_ht+0xe461, %r13
nop
nop
nop
nop
xor $41064, %r10
movw $0x6162, (%r13)
nop
nop
nop
mfence
lea addresses_normal_ht+0x13f91, %r13
dec %rax
movb (%r13), %bl
nop
nop
cmp $49321, %r10
lea addresses_WT_ht+0x13781, %r9
nop
nop
nop
cmp %r13, %r13
movw $0x6162, (%r9)
xor $34289, %r10
lea addresses_A_ht+0x17181, %r15
nop
nop
nop
nop
nop
xor %rax, %rax
vmovups (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
dec %rdi
lea addresses_WC_ht+0x9281, %rdi
clflush (%rdi)
nop
nop
inc %r9
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x8171, %rsi
lea addresses_A_ht+0x1e501, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $8, %rcx
rep movsl
nop
nop
nop
xor $9105, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rdx

// Store
mov $0x2222630000000381, %rax
nop
nop
nop
sub $61499, %r14
movb $0x51, (%rax)

// Exception!!!
nop
mov (0), %r15
nop
nop
nop
cmp $49042, %r14

// Faulty Load
mov $0x2222630000000381, %rdx
nop
nop
and $36110, %r14
mov (%rdx), %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rdx
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'9a': 72, 'ec': 96, '66': 48, 'a2': 49, 'e6': 96, '8c': 72, '2e': 58, 'fc': 101, 'd0': 90, '84': 69, '30': 57, '2c': 61, '7c': 67, '3a': 49, '6e': 77, '54': 62, '24': 61, '68': 63, 'aa': 61, '62': 54, 'b8': 46, '82': 54, '3e': 54, 'dc': 71, '0a': 72, '38': 58, 'de': 62, '7a': 54, '42': 63, '26': 52, '34': 63, 'b6': 60, '40': 70, '20': 75, 'a8': 67, '88': 63, 'ba': 61, '58': 64, 'fe': 95, 'f0': 105, '1a': 51, '6a': 50, '08': 69, 'c8': 54, '0e': 54, '10': 64, '5e': 70, '7e': 75, '5c': 74, 'd4': 75, '60': 62, '28': 63, '76': 58, '18': 53, '70': 56, '5a': 60, 'd2': 83, '46': 43, 'b2': 77, '32': 65, '02': 56, 'f4': 89, 'c2': 119, '6d': 1, 'f6': 83, 'b0': 78, '04': 66, 'be': 48, '96': 73, '14': 69, '92': 61, 'e4': 103, '4c': 80, '8a': 55, '1c': 61, '6c': 60, 'ce': 57, '12': 61, 'ae': 60, 'e2': 81, '44': 52, '1e': 59, '00': 404, 'ac': 69, '50': 76, 'd6': 92, '48': 50, '52': 52, 'ea': 105, '06': 64, '56': 55, 'ca': 54, 'a4': 73, 'fa': 111, 'c4': 55, '2a': 61, 'e8': 64, '80': 64, '9c': 71, '22': 59, 'f2': 83, 'c0': 119, '4a': 61, '74': 63, 'da': 57, 'bc': 66, 'b4': 58, 'd8': 70, '64': 77, '78': 52, '4e': 53, '72': 51, '3c': 59, 'a6': 59, '9e': 64, '8e': 57, 'a0': 63, '86': 43, '51': 12877, '98': 62, '16': 62, 'cc': 67, 'f8': 59, '94': 77, '0c': 64, '36': 57, 'ee': 94, 'e0': 99, 'c6': 107, '90': 70}
c0 00 48 9e 16 51 51 7e 51 1e 51 80 51 51 51 51 51 51 51 51 51 51 d8 51 7a f6 51 a4 51 51 92 51 aa 51 7c 51 fa 51 51 f0 51 51 8a 51 c0 06 da 51 51 51 ea 51 d6 51 dc 51 dc 32 51 ea 51 51 46 ac 28 00 51 51 fe 06 51 70 51 51 ee 51 51 51 51 9e 51 20 51 51 cc ec ec 6c 51 9c 51 a6 51 40 51 e0 42 51 50 51 51 51 5a 51 e2 08 d0 51 aa ba 06 cc 51 5a 04 b4 00 00 10 51 8e b0 36 f4 51 06 51 d6 9c 51 51 cc 51 a4 51 5a 51 e8 51 51 51 51 52 51 a0 51 da ce 51 90 51 ea 8a d0 2a ee 2c 51 a4 51 51 f2 51 b2 51 b8 51 a0 51 51 51 58 1e 51 51 8e 51 e4 fa 51 51 ca 51 51 51 51 51 51 56 94 51 02 20 51 94 51 00 51 51 6a 51 d6 51 b8 51 46 51 f4 b2 54 4c ec 51 51 f8 c6 51 72 51 3a 51 4a 1e 51 ac a4 51 04 51 3e 78 51 4c 51 51 62 51 51 51 51 6a 00 98 51 4c 51 51 2a 51 51 ac 51 51 51 3a 6e 51 51 00 51 22 51 51 88 51 51 51 38 f6 50 48 5e 51 51 f0 3c ec 50 51 51 e2 6e 1a 51 51 51 51 51 62 b0 51 51 de 51 2c 51 10 51 51 c8 1e bc 51 a6 51 51 51 51 51 3e 51 e0 51 51 c6 51 d6 0e 66 50 74 51 e2 3e 30 51 51 12 51 2e 51 9a 0a a8 51 51 f2 ba 51 f6 16 51 51 e2 52 51 51 51 51 51 4c 51 1a 51 76 fe a4 51 d4 51 51 00 d2 51 60 e2 bc 51 6c 51 51 51 de 51 1c 51 51 51 dc 51 51 28 51 20 51 51 51 51 51 51 51 88 51 2c 6a 58 da 51 fc a0 2e e0 51 fc 51 0e 32 a6 ea 51 51 10 51 51 f0 51 51 51 00 51 51 51 51 52 51 51 51 10 18 51 51 7a 51 51 51 51 51 51 51 76 3e 44 51 51 48 51 51 d2 5e 51 0a 51 d8 51 54 7a 51 51 2e 51 cc 84 51 26 51 90 51 51 22 51 98 51 fc 51 51 94 51 60 51 51 c6 51 3a 9e 51 51 b8 51 51 51 51 3a 51 51 51 f4 51 51 d0 51 51 51 51 51 51 51 51 51 51 51 51 22 51 51 51 51 98 c4 51 9a 51 51 36 4e 51 f8 cc 51 f0 51 8c b6 b6 51 f4 51 b8 51 51 ec 51 cc 6e 54 51 ee b0 38 70 51 ca 51 3a 68 16 aa 51 51 cc 9c 51 51 51 82 51 f6 96 51 fe 60 51 cc 51 fa ca 70 9a 51 12 51 ee 51 8a d8 51 06 b8 16 51 51 51 51 51 51 c6 b2 51 51 51 fe 51 51 51 51 ce 51 51 3e ec 51 51 51 51 5e 51 fe 51 34 ac 24 51 51 40 ce fc 86 51 c2 51 51 e0 51 24 51 22 51 b8 51 51 28 7c 51 51 da 51 58 4e 51 62 5a 72 d0 51 a4 2c 51 5c 02 d4 51 60 51 51 12 02 6a 51 98 aa 51 58 4c 51 51 51 51 51 51 c2 06 ee d8 51 51 22 26 51 8e 51 ac 51 ea 51 51 51 51 51 ec 02 51 51 e4 b4 30 51 51 51 6a 20 52 51 7c 51 0a 68 72 68 00 aa aa 2c e0 e2 51 88 64 51 32 b4 64 51 70 51 51 51 74 00 76 51 86 51 18 51 51 52 51 51 90 51 51 cc 8a 00 c2 51 a0 51 b4 51 be 92 51 51 e6 51 fc 30 4a 00 51 51 be 51 9e 51 51 00 51 51 51 98 51 51 51 51 51 3c d0 51 5e 51 51 51 3c 9c 51 51 e0 6c 40 f2 cc fa e6 de 51 f8 dc 51 51 51 51 d2 51 7c 51 be b0 51 51 51 5c a0 51 48 51 51 f6 84 51 c4 51 68 51 80 51 66 80 6a 51 5c 72 51 a2 96 f0 51 51 18 51 d8 51 51 51 51 51 51 51 51 08 51 24 51 51 14 51 b6 51 84 51 51 51 ee 51 51 51 51 ae 5c 51 c6 a6 51 36 51 fc b2 51 00 51 9a 51 51 51 04 51 50 51 51 51 ac 92 51 76 51 51 50 51 51 24 1c 51 b0 51 6e 56 fa 51 62 8e 51 ea 51 51 b0 60 e4 ce ec 54 16 51 51 b6 51 51 86 51 e6 4e 00 06 51 51 51 9a ba dc 51 d8 51 06 51 72 51 8e 51 44 51 fc 56 16 51 dc f8 80 51 46 ba 51 ea 51 04 51 50 51 ae 51 51 4a 9e b2 51 51 51 51 b2 51 51 80 51 51 54 00 51 92 51 16 22 51
*/

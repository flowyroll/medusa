.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xc314, %rsi
lea addresses_A_ht+0xe914, %rdi
nop
nop
nop
sub %r11, %r11
mov $123, %rcx
rep movsq
nop
nop
cmp $11555, %rdi
lea addresses_A_ht+0x13284, %r10
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r10), %rdi
nop
nop
nop
sub $10283, %r11
lea addresses_WT_ht+0x11c08, %rbx
nop
nop
nop
lfence
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x14614, %rsi
lea addresses_A_ht+0x1eabc, %rdi
nop
nop
add $44997, %rbx
mov $17, %rcx
rep movsb
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x19230, %r10
nop
nop
nop
dec %rsi
movups (%r10), %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
nop
nop
sub $35299, %rdi
lea addresses_UC_ht+0x2694, %rsi
lea addresses_A_ht+0x12314, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $39448, %rbx
mov $46, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r11
lea addresses_normal_ht+0x1a314, %rsi
lea addresses_D_ht+0x1ab14, %rdi
clflush (%rdi)
add %r13, %r13
mov $46, %rcx
rep movsw
sub %r13, %r13
lea addresses_normal_ht+0x14314, %rsi
lea addresses_UC_ht+0x96a4, %rdi
nop
xor %rbx, %rbx
mov $127, %rcx
rep movsl
nop
nop
xor $31832, %rcx
lea addresses_WC_ht+0x7214, %rcx
sub $55380, %r13
mov (%rcx), %r10
nop
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rbx
push %rsi

// Store
lea addresses_normal+0x16c34, %r15
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, (%r15)
nop
nop
add %r8, %r8

// Store
lea addresses_UC+0x6b3e, %rbx
nop
nop
nop
sub $47738, %r11
mov $0x5152535455565758, %r8
movq %r8, (%rbx)
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_UC+0x6383, %r15
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r15)
nop
nop
add $57820, %r15

// Load
mov $0x3edfa90000000b14, %r8
nop
nop
sub %r15, %r15
mov (%r8), %r11d
nop
nop
nop
nop
nop
and %r11, %r11

// Load
lea addresses_A+0x6894, %rax
clflush (%rax)
nop
nop
nop
nop
nop
xor $44787, %r15
mov (%rax), %r11
xor $55361, %rbx

// Store
lea addresses_normal+0x1fc14, %r8
nop
cmp $6176, %rbx
mov $0x5152535455565758, %r11
movq %r11, (%r8)
nop
nop
add %r8, %r8

// Store
mov $0x3edfa90000000b14, %r11
nop
nop
nop
nop
sub $25171, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%r11)
nop
xor %r10, %r10

// Faulty Load
mov $0x3edfa90000000b14, %rax
nop
and %rsi, %rsi
mov (%rax), %r11w
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'a4': 1, '0a': 2, 'c6': 1, 'dc': 1, '48': 3, '5c': 3, 'fc': 2, '4c': 3, '90': 3, '3e': 6, '1e': 1, 'b6': 3, 'd6': 1, '4a': 1, '6c': 2, '32': 3, 'ca': 2, 'de': 2, 'd2': 2, 'd8': 3, '60': 2, '36': 1, '5a': 1, '02': 2, '14': 2, '40': 1, 'd0': 1, '34': 1, '16': 5, 'a0': 2, 'b0': 1, 'ac': 1, '98': 1, '8e': 1, '7a': 3, '2a': 2, 'aa': 1, 'c4': 1, '0c': 3, '94': 3, 'da': 2, 'c0': 1, '12': 2, '76': 1, 'ae': 2, 'ba': 1, 'd4': 1, '6a': 4, '46': 3, '1c': 1, 'e0': 2, 'a6': 1, '44': 1, '86': 3, '58': 21471, '5e': 1, '00': 171, '74': 1, '0e': 1, '7c': 2, 'b8': 2, '6e': 1, 'e8': 2, 'c2': 2, '18': 1, '3c': 2, 'e2': 3, 'f6': 2, 'fa': 2, '2c': 2, '4e': 2, 'c8': 1, '72': 1, 'f8': 2, '54': 1, '8c': 1, '22': 1, 'e4': 1, '8a': 2, '7e': 2, '08': 3, '80': 2, 'bc': 1, '10': 2, 'e6': 1, 'f2': 3, '1a': 2, '26': 1, '28': 2, '2e': 2, '30': 2, 'a8': 2, '78': 2, '9c': 4, '66': 2, '82': 4, '38': 1, '9a': 1, 'ec': 5, 'ce': 2}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 d6 58 58 58 58 58 58 58 58 58 58 58 58 58 58 f2 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 66 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e8 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e8 58 58 58 58 58 58 58 58 58 58 58 58 0a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 08 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 ec 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/

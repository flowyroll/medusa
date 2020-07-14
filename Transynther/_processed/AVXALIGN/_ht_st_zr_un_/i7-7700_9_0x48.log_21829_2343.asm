.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19161, %rax
clflush (%rax)
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
and $0xffffffffffffffc0, %rax
movaps %xmm2, (%rax)
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x1661, %rsi
lea addresses_WT_ht+0x6951, %rdi
nop
nop
nop
nop
nop
cmp $24708, %r12
mov $97, %rcx
rep movsb
add %rdi, %rdi
lea addresses_UC_ht+0x3361, %r12
nop
nop
nop
nop
xor $18355, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
sub $40914, %rcx
lea addresses_normal_ht+0x188f9, %rbp
nop
nop
cmp $51736, %rax
mov (%rbp), %rsi
and %rsi, %rsi
lea addresses_normal_ht+0x3561, %r13
nop
xor $53065, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%r13)
nop
nop
nop
xor $416, %r12
lea addresses_A_ht+0xd18a, %r13
nop
nop
nop
and $32863, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r13)
nop
nop
sub $25562, %rsi
lea addresses_A_ht+0x62d1, %rsi
lea addresses_A_ht+0x29e1, %rdi
nop
inc %r10
mov $58, %rcx
rep movsl
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x2d61, %r12
add $53422, %rsi
movw $0x6162, (%r12)
nop
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx

// Store
lea addresses_normal+0x8851, %r13
nop
cmp %r9, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r13)
nop
add $10270, %rbx

// Store
lea addresses_normal+0x15161, %rbx
nop
nop
inc %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
dec %r11

// Load
mov $0x161, %rcx
nop
sub $50857, %r8
mov (%rcx), %r9w
nop
add $5433, %r10

// Store
lea addresses_US+0x16a92, %rbx
cmp $26528, %r11
movb $0x51, (%rbx)
nop
xor $43432, %rbx

// Faulty Load
mov $0x161, %r10
nop
xor %r8, %r8
vmovntdqa (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'4b': 3, '4c': 57, '63': 8, '03': 2, '8c': 2, '94': 9, '78': 2, '00': 10055, '3e': 2, '70': 2, 'b8': 3, '60': 1, '8a': 1, '02': 1, '48': 2, 'a8': 10, '9f': 5, '45': 11617, '88': 10, '5c': 2, 'c4': 6, 'af': 9, 'e7': 7, '7a': 6, '33': 7}
00 00 02 45 00 00 00 00 00 45 45 00 45 45 45 45 45 45 45 45 00 00 45 00 45 00 00 45 45 00 00 00 00 00 45 00 45 45 00 45 00 00 00 00 45 00 00 45 00 00 45 45 00 00 00 00 00 00 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 00 45 45 45 45 00 45 00 45 00 45 45 00 00 45 00 00 45 00 00 00 00 45 45 00 45 45 00 45 45 45 00 00 45 45 45 00 00 00 45 45 00 45 00 00 45 00 45 00 45 45 45 45 45 45 00 00 00 00 45 45 45 00 00 45 00 45 45 00 45 45 45 45 45 00 45 45 45 00 00 00 00 00 00 00 45 45 45 00 45 45 00 00 00 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 45 45 45 00 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 00 45 00 45 00 45 00 45 45 45 45 00 45 00 00 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 45 45 45 00 45 00 00 00 45 00 00 00 00 00 00 00 45 45 45 00 00 45 45 45 00 45 45 45 45 45 45 45 45 00 00 45 00 45 45 45 45 00 00 00 00 00 00 00 00 45 00 45 00 00 45 45 00 45 00 00 45 00 45 45 45 45 45 45 00 45 45 00 00 00 45 45 45 00 00 45 00 45 00 45 00 45 45 00 00 00 45 45 00 45 00 45 00 45 45 00 45 00 45 45 45 45 45 45 45 45 00 00 00 00 00 00 45 45 45 45 00 00 00 00 45 45 45 00 00 00 45 45 45 45 45 00 45 00 00 45 00 00 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 00 00 45 45 45 45 45 00 00 45 00 00 00 45 45 45 00 45 45 00 45 45 00 45 45 45 00 00 45 00 00 45 45 45 00 45 45 00 45 00 00 00 45 00 45 00 00 00 45 00 45 45 00 45 00 45 45 45 00 45 45 45 45 00 00 00 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 00 00 00 00 45 45 00 00 45 00 45 00 45 45 45 45 45 45 45 00 45 45 00 45 00 00 45 45 00 00 45 00 45 45 00 00 00 00 00 00 00 00 00 45 45 45 00 45 00 00 00 00 00 45 00 45 45 45 00 00 45 00 45 45 45 45 00 00 45 45 45 45 45 45 45 45 00 00 00 45 00 00 45 45 45 00 45 45 00 4c 00 4c 4c 4c 4c 4c 4c 4c 4c 4c 00 45 00 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 00 00 45 00 00 45 00 00 45 00 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 00 45 00 00 45 00 45 45 45 45 45 45 45 00 45 45 00 00 00 00 00 00 00 45 45 88 88 88 00 88 88 88 88 88 88 88 45 45 45 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 45 00 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 45 00 00 00 00 45 00 45 00 45 00 45 45 00 45 00 45 00 45 45 45 00 00 45 00 45 00 45 00 00 45 00 45 00 00 45 45 45 00 00 45 45 45 00 00 00 45 45 45 45 45 00 45 00 00 00 45 45 45 45 45 45 45 45 00 00 45 00 45 00 45 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 45 45 45 45 45 45 45 00 00 00 00 45 45 00 45 00 00 00 00 45 00 45 00 00 00 00 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 45 45 45 45 00 00 45 45 45 00 45 00 00 00 45 45 00 45 45 45 00 00 45 45 00 00 45 45 45 45 00 00 00 45 00 00 00 45 45 45 00 45 00 00 00 45 45 00 45 00 00 45 00 00 00 45 00 45 45 00 45 00 45 00 00 00 00 45 45 45 00 45 45 45 00 00 00 00 45 00 45 00 45 45 45 45 45 00 45 00 00 00 45 00 45 00 45 00 00 00 00 45 00 45 45 00 00 45 45 45 45 00
*/

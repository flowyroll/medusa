.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xd1df, %r15
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
nop
nop
dec %r15
lea addresses_D_ht+0x1791f, %r8
nop
nop
nop
nop
and $58732, %r14
movb (%r8), %cl
nop
xor $41107, %r14
lea addresses_D_ht+0x81a3, %r13
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, (%r13)
nop
add %r10, %r10
lea addresses_WC_ht+0xcdf, %r13
nop
nop
mfence
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
nop
nop
xor $28758, %r13
lea addresses_A_ht+0x14edf, %r10
nop
nop
nop
nop
sub %rsi, %rsi
movups (%r10), %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
nop
sub $47817, %r8
lea addresses_A_ht+0xec5f, %r13
nop
nop
nop
nop
nop
add %r15, %r15
movups (%r13), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
nop
sub $54463, %r14
lea addresses_D_ht+0x691f, %r13
nop
nop
nop
nop
nop
sub $21193, %r10
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
and $41271, %r15
lea addresses_A_ht+0xd0df, %r10
clflush (%r10)
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, (%r10)
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x1ca7f, %rsi
lea addresses_D_ht+0x1b35f, %rdi
nop
nop
add $23722, %r14
mov $19, %rcx
rep movsb
nop
nop
xor $30818, %r14
lea addresses_D_ht+0x44df, %rsi
lea addresses_A_ht+0x14bf7, %rdi
nop
nop
nop
cmp %r10, %r10
mov $39, %rcx
rep movsl
nop
sub $35451, %r8
lea addresses_UC_ht+0x1a67f, %rdi
nop
sub $30754, %rcx
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
add $37614, %rcx
lea addresses_normal_ht+0x152df, %r8
nop
nop
nop
cmp %r10, %r10
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
add $44457, %rcx
lea addresses_UC_ht+0xeb7f, %rsi
lea addresses_normal_ht+0x8157, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $24, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1ab9f, %rsi
lea addresses_WT_ht+0x5d4f, %rdi
and %r14, %r14
mov $59, %rcx
rep movsb
cmp $19685, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rax
push %rsi

// Load
mov $0x7d3ed700000004ff, %r8
nop
add $46527, %r14
vmovups (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
dec %r14

// Store
mov $0x15f, %rax
nop
nop
nop
xor $43089, %r12
movl $0x51525354, (%rax)
nop
and $54585, %r8

// Load
lea addresses_A+0x8df, %rsi
nop
nop
and %r13, %r13
movb (%rsi), %al
nop
nop
nop
nop
nop
cmp $44717, %r8

// Faulty Load
mov $0x445afe00000000df, %r12
nop
nop
nop
nop
and $13269, %r13
vmovups (%r12), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r11
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rsi
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/

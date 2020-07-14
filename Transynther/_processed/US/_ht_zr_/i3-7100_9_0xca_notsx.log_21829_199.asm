.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1efd3, %r14
nop
nop
sub %rdx, %rdx
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
cmp $55335, %rcx
lea addresses_D_ht+0x56d3, %rsi
lea addresses_normal_ht+0xee07, %rdi
nop
nop
nop
nop
xor $37506, %r9
mov $87, %rcx
rep movsq
sub $60881, %rsi
lea addresses_UC_ht+0xb893, %r14
xor $46788, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_A_ht+0xed73, %r12
clflush (%r12)
nop
nop
nop
add $58215, %r14
mov (%r12), %rdx
nop
nop
xor $49391, %rsi
lea addresses_A_ht+0xe903, %rdx
nop
sub %rdi, %rdi
mov (%rdx), %r9d
nop
add $10672, %rdx
lea addresses_D_ht+0x149d3, %rdx
add $10560, %r12
movups (%rdx), %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0xa681, %rsi
lea addresses_UC_ht+0x1c04b, %rdi
nop
nop
nop
nop
nop
sub $50724, %r8
mov $78, %rcx
rep movsq
nop
nop
add $31273, %r8
lea addresses_WC_ht+0x82d3, %rsi
lea addresses_UC_ht+0x13053, %rdi
cmp $62852, %r12
mov $67, %rcx
rep movsl
add $22144, %rdi
lea addresses_WC_ht+0x6747, %rsi
lea addresses_normal_ht+0x145f3, %rdi
nop
sub $56987, %r14
mov $22, %rcx
rep movsw
nop
nop
nop
and $32109, %r12
lea addresses_A_ht+0xd4d3, %rsi
clflush (%rsi)
nop
nop
nop
cmp $3201, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rsi)
dec %rdi
lea addresses_WC_ht+0x1d053, %rdx
nop
nop
nop
sub $8352, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm5
and $0xffffffffffffffc0, %rdx
movaps %xmm5, (%rdx)
nop
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0x56d3, %rsi
nop
nop
nop
add $38637, %rcx
mov $0x5152535455565758, %r11
movq %r11, (%rsi)
and $10127, %r11

// Load
mov $0x6e9f8b00000003a5, %r10
nop
nop
xor $46231, %r11
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_D+0xe8d3, %rax
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
nop
nop
and $57535, %r13

// Faulty Load
lea addresses_US+0x1d6d3, %rcx
clflush (%rcx)
nop
nop
nop
cmp $22810, %r13
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True}}
{'46': 5382, '00': 16447}
00 00 46 00 46 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 46 00 46 00 00 00 00 46 46 00 00 46 46 00 00 46 46 00 00 46 00 46 00 00 00 00 00 00 00 00 46 46 00 00 00 46 46 46 46 00 00 00 00 46 00 46 00 46 00 00 00 00 46 00 00 46 46 00 46 00 00 00 00 00 00 46 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 00 46 46 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 46 46 00 46 00 00 00 00 46 00 00 46 00 00 46 00 00 00 46 00 46 00 00 00 46 46 00 00 00 46 00 00 00 00 00 00 46 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 46 00 00 46 46 00 46 00 00 00 00 00 00 00 00 46 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 46 46 00 00 46 00 00 00 00 46 46 46 00 00 46 46 46 00 00 00 00 00 00 46 00 00 00 46 00 46 00 46 46 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 46 00 46 00 00 00 46 00 46 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 46 00 00 46 46 46 46 00 00 00 46 46 00 00 00 00 00 00 00 46 00 46 46 00 00 46 46 00 00 00 00 00 00 00 00 46 00 00 00 46 46 46 00 46 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 46 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 46 00 00 00 46 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 46 00 46 46 00 00 46 46 00 00 00 00 46 00 46 00 00 00 00 00 46 46 00 46 46 00 00 00 00 46 00 00 46 00 46 00 46 00 00 00 46 00 00 00 46 46 46 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 46 46 46 00 00 00 00 46 00 00 00 46 00 46 00 00 00 46 00 00 46 00 00 00 46 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 46 46 46 46 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 00 46 00 00 00 46 46 00 46 00 46 00 00 00 00 46 00 46 46 46 00 46 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 46 46 00 46 46 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 46 46 46 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 46 46 00 00 00 46 00 00 46 00 00 00
*/

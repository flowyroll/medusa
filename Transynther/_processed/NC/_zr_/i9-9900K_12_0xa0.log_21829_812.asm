.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x6c72, %r10
nop
dec %rbp
mov (%r10), %edi
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x1225e, %rsi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movl $0x61626364, (%rsi)
xor $62198, %rbx
lea addresses_UC_ht+0xce5c, %r12
nop
nop
nop
cmp $32428, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r12)
nop
xor %r12, %r12
lea addresses_WT_ht+0x96de, %rsi
lea addresses_WC_ht+0xe1de, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $54867, %r9
mov $75, %rcx
rep movsq
nop
xor %r9, %r9
lea addresses_WC_ht+0x14a1e, %r10
and $58032, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r10)
nop
nop
and %r9, %r9
lea addresses_normal_ht+0xa7de, %rsi
nop
nop
nop
nop
nop
cmp $29638, %rcx
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
nop
sub $9354, %rbp
lea addresses_UC_ht+0x1c1de, %r10
nop
nop
nop
sub %rbx, %rbx
mov (%r10), %ecx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x1eb5e, %rbx
nop
nop
and $17723, %rsi
movb (%rbx), %r9b
nop
nop
sub $20019, %r12
lea addresses_D_ht+0xcc1e, %rdi
clflush (%rdi)
nop
nop
nop
add %r9, %r9
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
sub $4874, %r9
lea addresses_WC_ht+0x1c63e, %rsi
lea addresses_D_ht+0x1b7de, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $52, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $42324, %rsi
lea addresses_A_ht+0xc1de, %r9
nop
nop
nop
nop
xor $22790, %r10
movw $0x6162, (%r9)
nop
nop
nop
nop
inc %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rsi

// Store
mov $0xf9e, %rcx
nop
nop
nop
nop
nop
and $13211, %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
mov $0x421b7e0000000aae, %rsi
nop
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
nop
sub $60895, %r10

// Load
mov $0x6af889000000071e, %rcx
nop
nop
nop
sub %rsi, %rsi
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %r11

// Exception!!!
nop
nop
nop
mov (0), %r10
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_US+0x469a, %r8
nop
nop
nop
nop
add $34666, %rdi
movb $0x51, (%r8)
nop
add %r8, %r8

// Load
lea addresses_RW+0x45de, %r10
nop
nop
xor $8442, %r13
vmovups (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
add $2238, %rcx

// Store
lea addresses_A+0x1edfe, %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x5152, (%rdi)
nop
nop
nop
cmp $38641, %rcx

// Store
lea addresses_WC+0x99de, %r8
nop
cmp $26770, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%r8)
nop
nop
add %r13, %r13

// Faulty Load
mov $0x3b797c00000001de, %rsi
nop
nop
nop
nop
sub %rcx, %rcx
mov (%rsi), %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': True, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

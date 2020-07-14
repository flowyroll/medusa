.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc10e, %r13
nop
nop
nop
nop
cmp $28441, %rbp
mov $0x6162636465666768, %r10
movq %r10, (%r13)
nop
nop
nop
nop
add $43110, %r10
lea addresses_WC_ht+0x1a35a, %r11
nop
nop
nop
nop
nop
xor %rax, %rax
mov (%r11), %r8
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0xdc36, %r11
nop
nop
nop
nop
sub %rbx, %rbx
movb (%r11), %r8b
nop
nop
nop
xor $62078, %r10
lea addresses_A_ht+0xc6, %rax
nop
nop
nop
cmp %rbp, %rbp
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
sub $62414, %r10
lea addresses_D_ht+0x1e7c7, %rbx
nop
nop
nop
nop
nop
and $41521, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%rbx)
cmp $63284, %rax
lea addresses_D_ht+0x18436, %r8
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %r10
movq %r10, (%r8)
sub %rbx, %rbx
lea addresses_UC_ht+0xaa36, %rbx
cmp %r8, %r8
mov (%rbx), %ax
cmp %rax, %rax
lea addresses_WT_ht+0x1e8e, %rax
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rax)
and %r8, %r8
lea addresses_D_ht+0x19196, %rsi
lea addresses_A_ht+0xc68e, %rdi
nop
xor $27335, %r10
mov $98, %rcx
rep movsq
add $63890, %r11
lea addresses_A_ht+0x1c436, %rbp
nop
add %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%rbp)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0xc94e, %rbx
nop
nop
nop
nop
nop
sub $57803, %r10
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x6aff, %rsi
lea addresses_WT_ht+0xc836, %rdi
clflush (%rsi)
inc %rbx
mov $17, %rcx
rep movsq
nop
nop
add $34032, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_normal+0x1ed36, %rbx
nop
nop
nop
nop
cmp %rsi, %rsi
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
inc %rbx

// REPMOV
lea addresses_normal+0xee36, %rsi
lea addresses_RW+0x6206, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $50, %rcx
rep movsb
nop
nop
nop
sub $8082, %rsi

// Load
lea addresses_US+0x7836, %rbp
nop
nop
nop
nop
add %rdi, %rdi
movb (%rbp), %bl
cmp %rcx, %rcx

// Store
lea addresses_UC+0x2ad6, %rax
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
nop
nop
inc %rax

// Load
lea addresses_US+0xb658, %rcx
nop
nop
nop
nop
nop
and %rbp, %rbp
movntdqa (%rcx), %xmm2
vpextrq $1, %xmm2, %r10
nop
nop
nop
nop
cmp $50133, %rbp

// Store
lea addresses_RW+0x9f5a, %rbp
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_US+0xf155, %rcx
clflush (%rcx)
xor $14968, %rbp
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_US+0x7836, %rbp
nop
nop
nop
nop
dec %rax
movb (%rbp), %r10b
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 3, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'00': 20570}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

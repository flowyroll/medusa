.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb186, %r9
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, (%r9)
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1dc75, %rsi
lea addresses_normal_ht+0x7dde, %rdi
nop
nop
xor $4234, %rax
mov $86, %rcx
rep movsl
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x1699e, %r12
add %r14, %r14
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
sub $18830, %rcx
lea addresses_WC_ht+0x18bb4, %rax
clflush (%rax)
nop
nop
nop
nop
nop
inc %r9
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x1481e, %rcx
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%rcx)
nop
nop
and $31941, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x11f1e, %rbp
nop
nop
nop
cmp $45471, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm1
and $0xffffffffffffffc0, %rbp
movaps %xmm1, (%rbp)
nop
nop
nop
xor %rsi, %rsi

// REPMOV
lea addresses_WC+0x550e, %rsi
lea addresses_UC+0x251e, %rdi
nop
nop
nop
nop
inc %rbx
mov $22, %rcx
rep movsq
nop
and $5823, %rbx

// Load
lea addresses_UC+0xbd9e, %rcx
nop
nop
nop
nop
sub $52469, %rsi
movb (%rcx), %r14b
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_PSE+0x1403e, %rsi
nop
nop
cmp $67, %rbx
mov $0x5152535455565758, %r14
movq %r14, (%rsi)
nop
and %rcx, %rcx

// Store
lea addresses_normal+0x1033e, %r11
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r11)
nop
dec %rsi

// Store
mov $0xf9e, %rax
clflush (%rax)
nop
cmp $34038, %rsi
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_PSE+0x12d9e, %r11
add %rcx, %rcx
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Faulty Load
mov $0x2eff4b0000000d9e, %rbp
clflush (%rbp)
nop
nop
nop
nop
add %rcx, %rcx
mov (%rbp), %eax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'54': 20044, '00': 1785}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 00 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 00 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/

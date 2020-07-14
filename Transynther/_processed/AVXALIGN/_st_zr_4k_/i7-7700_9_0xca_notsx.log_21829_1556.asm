.global s_prepare_buffers
s_prepare_buffers:
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xc5f1, %rsi
lea addresses_normal_ht+0x9aa3, %rdi
nop
nop
and $17940, %rax
mov $63, %rcx
rep movsq
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_RW+0x98d0, %rdi
nop
nop
inc %rbx
movb $0x51, (%rdi)
inc %rdi

// Store
lea addresses_WT+0x9d50, %rcx
nop
nop
nop
nop
nop
xor %r12, %r12
movw $0x5152, (%rcx)
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_normal+0x3550, %rdi
and %r8, %r8
movl $0x51525354, (%rdi)
nop
xor $31373, %rax

// Store
mov $0x4480d20000000b50, %r9
nop
nop
cmp $58982, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r9)

// Exception!!!
nop
nop
nop
mov (0), %r8
sub %rbx, %rbx

// Store
lea addresses_normal+0x9cf0, %rcx
nop
nop
nop
nop
cmp $5352, %r8
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Faulty Load
mov $0x17a9ec0000000d50, %r8
nop
nop
nop
sub $1999, %rbx
mov (%r8), %di
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'00': 7160, '52': 14669}
52 52 00 52 52 52 00 52 00 52 52 00 52 00 52 52 00 52 00 52 52 00 52 52 00 00 00 52 52 52 52 00 52 52 00 52 00 52 00 52 52 00 52 00 00 52 00 52 52 00 52 00 52 52 00 52 52 00 52 00 52 52 00 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 00 00 52 00 52 00 52 52 52 52 00 00 52 00 00 52 52 52 52 52 52 52 52 00 52 00 52 00 00 00 00 52 52 52 52 52 52 00 52 52 00 00 52 00 00 52 52 00 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 00 52 00 52 52 52 00 52 52 00 52 52 52 52 00 52 00 52 00 00 00 00 00 52 52 00 00 52 52 52 00 52 52 52 00 52 52 00 52 52 52 00 00 52 52 52 52 52 52 00 52 52 00 00 00 00 00 52 52 52 52 00 00 52 00 52 00 00 52 00 52 52 00 00 52 52 00 52 00 52 52 52 52 52 00 00 52 52 00 52 00 52 52 52 52 52 52 00 52 00 00 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 00 52 00 00 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 00 52 52 52 52 00 00 52 00 00 52 00 52 52 00 00 52 00 52 52 00 52 00 52 00 52 00 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 00 52 00 52 00 52 00 52 52 52 00 52 52 00 52 52 00 52 52 52 00 52 52 52 00 52 52 52 00 52 00 52 00 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 00 00 52 52 52 00 00 52 52 00 52 52 00 52 52 00 00 52 00 52 52 00 52 52 52 00 00 52 52 52 52 00 52 52 00 52 52 52 52 52 52 00 52 52 52 52 00 00 52 00 52 52 52 52 00 52 00 52 52 00 52 52 00 00 52 52 52 52 00 00 52 00 52 52 52 52 52 00 52 00 00 52 52 00 00 52 52 52 52 00 00 52 52 52 52 52 00 52 52 00 52 52 52 52 00 00 52 52 52 52 52 52 00 00 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 00 00 00 52 52 52 52 52 52 52 00 00 52 52 00 52 52 52 52 00 00 52 52 52 52 00 00 00 52 00 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 00 00 00 00 52 52 52 52 00 52 52 52 52 00 00 52 52 52 52 52 52 00 52 52 52 52 00 00 00 00 00 52 52 52 00 52 00 52 52 52 00 00 00 52 00 00 52 00 52 52 00 52 52 00 52 52 52 52 52 52 00 00 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 00 00 00 52 52 52 00 52 52 52 00 00 00 52 52 52 52 00 52 00 52 00 00 52 52 52 00 00 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 00 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 00 52 00 52 52 00 00 52 52 00 52 52 00 52 52 52 52 00 52 52 00 52 52 00 52 00 00 52 00 52 00 52 00 52 00 52 00 52 52 52 00 52 52 52 00 52 52 52 00 52 52 52 00 52 52 52 00 52 52 52 52 52 00 00 52 00 52 52 52 52 52 52 00 52 52 52 52 00 52 00 00 52 00 52 52 00 52 00 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 00 00 52 52 52 52 00 00 52 52 52 52 00 52 52 52 00 52 52 00 52 00 52 00 00 52 52 52 52 52 00 00 00 00 00 00 00 52 52 52 00 00 52 52 52 00 52 52 52 00 00 52 00 52 52 00 00 52 52 00 52 52 52 52 52 52 52 52 00 52 00 00 52 52 52 52 52 52 00 52 52 52 52 00 52 00 00 52 00 52 52 00 52 52 52 00 52 52 00 52 52 52 00 00 00 52 52 52 00
*/

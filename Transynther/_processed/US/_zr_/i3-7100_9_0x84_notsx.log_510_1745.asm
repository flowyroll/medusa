.global s_prepare_buffers
s_prepare_buffers:
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x5a2f, %rsi
lea addresses_A_ht+0x15baf, %rdi
nop
nop
nop
nop
cmp $64198, %rbx
mov $108, %rcx
rep movsw
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_US+0x1b927, %r15
clflush (%r15)
nop
nop
nop
nop
sub $50619, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_A+0x9a27, %rax
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
nop
add $10484, %rbx

// Load
lea addresses_normal+0x1a347, %rax
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movups (%rax), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
nop
sub %r9, %r9

// Load
lea addresses_D+0xde27, %r15
nop
nop
nop
nop
nop
and %rax, %rax
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_UC+0xbd7e, %rdx
dec %rbp
movw $0x5152, (%rdx)
nop
and %rsi, %rsi

// Faulty Load
lea addresses_US+0x1b627, %rsi
inc %r9
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'00': 510}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

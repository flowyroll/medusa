.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
lea addresses_D_ht+0xa548, %rcx
nop
nop
nop
nop
nop
add %r14, %r14
movb $0x61, (%rcx)
nop
add %rdi, %rdi
lea addresses_WT_ht+0x19230, %rcx
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
nop
nop
nop
nop
xor $19873, %r14
lea addresses_UC_ht+0x106f0, %rbp
sub %r8, %r8
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm2
vpextrq $0, %xmm2, %rdi
nop
add %rcx, %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rbx

// Load
lea addresses_RW+0x1b630, %rbp
clflush (%rbp)
nop
add $31745, %r15
movaps (%rbp), %xmm2
vpextrq $1, %xmm2, %r8
nop
xor $2578, %rbx

// Store
lea addresses_normal+0x9769, %rax
nop
and $65058, %r14
movb $0x51, (%rax)
nop
nop
nop
and %r14, %r14

// Store
lea addresses_RW+0x373e, %r15
nop
dec %r13
movb $0x51, (%r15)
nop
nop
add $31777, %rax

// Store
lea addresses_UC+0x1dbd0, %rbx
nop
sub $58335, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
nop
nop
cmp $54944, %rbp

// Store
lea addresses_normal+0x18630, %r14
nop
cmp %r15, %r15
movl $0x51525354, (%r14)
nop
nop
nop
nop
and %r8, %r8

// Faulty Load
lea addresses_RW+0x1b630, %r14
xor %r15, %r15
movb (%r14), %r8b
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'32': 8}
32 32 32 32 32 32 32 32
*/

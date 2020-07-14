.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x126fe, %rbp
nop
add $30973, %rax
mov $0x6162636465666768, %r12
movq %r12, (%rbp)
nop
nop
nop
nop
sub $13696, %r14
lea addresses_UC_ht+0x142be, %rbx
nop
nop
nop
nop
nop
and %r14, %r14
movb (%rbx), %r13b
nop
cmp %r14, %r14
lea addresses_D_ht+0x29f6, %rsi
lea addresses_UC_ht+0x15ebe, %rdi
nop
nop
inc %r12
mov $81, %rcx
rep movsl
nop
nop
xor $1049, %rcx
lea addresses_normal_ht+0xefee, %rsi
lea addresses_normal_ht+0x8bae, %rdi
xor %r12, %r12
mov $22, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_WT+0xc6fe, %r9
clflush (%r9)
nop
nop
nop
cmp $26380, %rbp
movb $0x51, (%r9)
nop
nop
nop
nop
inc %rax

// Store
lea addresses_WC+0x4dd0, %r12
nop
nop
nop
xor $37264, %r15
movl $0x51525354, (%r12)
nop
nop
dec %rax

// Store
mov $0x72107000000009b2, %rbp
nop
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movaps %xmm2, (%rbp)
xor %rax, %rax

// Faulty Load
lea addresses_RW+0x1c6be, %r12
nop
nop
nop
inc %rcx
vmovups (%r12), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'32': 48}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/

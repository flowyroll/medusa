.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x14e32, %rdi
nop
nop
add %r14, %r14
mov (%rdi), %ebx
nop
and %rsi, %rsi
lea addresses_UC_ht+0x55a6, %r9
clflush (%r9)
nop
nop
nop
nop
inc %r10
mov (%r9), %ecx
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x1ec52, %r10
nop
nop
nop
nop
nop
dec %r9
mov (%r10), %rbx
nop
nop
nop
dec %r14
lea addresses_WC_ht+0x1cb32, %r14
nop
nop
nop
nop
nop
xor $13422, %rbx
movb (%r14), %r9b
nop
nop
inc %r14
lea addresses_WC_ht+0xe632, %rbx
nop
nop
nop
nop
nop
sub $2848, %r14
movb $0x61, (%rbx)
nop
add $33759, %r10
lea addresses_WC_ht+0x2a32, %rsi
nop
nop
nop
nop
nop
xor $57369, %rdi
movw $0x6162, (%rsi)
xor $43910, %rsi
lea addresses_A_ht+0x17132, %r9
nop
nop
nop
nop
inc %r10
mov (%r9), %ecx
nop
xor %rdi, %rdi
lea addresses_A_ht+0x8ef2, %r10
nop
nop
nop
nop
nop
add $4445, %rbx
movb (%r10), %r9b
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x14592, %r15
nop
nop
nop
nop
nop
sub $42137, %r14
movw $0x5152, (%r15)
and $41277, %r15

// REPMOV
lea addresses_WC+0x1897e, %rsi
lea addresses_UC+0xca98, %rdi
cmp $15402, %rdx
mov $62, %rcx
rep movsb
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_PSE+0x5e32, %rsi
nop
nop
nop
nop
nop
add $55264, %rcx
movl $0x51525354, (%rsi)
dec %rcx

// Faulty Load
lea addresses_PSE+0x5e32, %rsi
nop
nop
nop
cmp %r15, %r15
movntdqa (%rsi), %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 1}
00
*/

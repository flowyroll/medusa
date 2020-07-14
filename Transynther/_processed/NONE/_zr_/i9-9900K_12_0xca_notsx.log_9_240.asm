.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rbx
push %rcx
push %rdx
lea addresses_WT_ht+0x1a773, %r14
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
nop
sub $57693, %rcx
pop %rdx
pop %rcx
pop %rbx
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r8
push %r9
push %rdi

// Store
lea addresses_UC+0x46cb, %r8
nop
nop
nop
nop
xor $32444, %r12
movw $0x5152, (%r8)
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_D+0x8373, %rdi
dec %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movntdq %xmm1, (%rdi)
cmp %r9, %r9

// Store
lea addresses_PSE+0x15173, %r14
nop
nop
nop
nop
xor %r9, %r9
movl $0x51525354, (%r14)
dec %r10

// Faulty Load
lea addresses_A+0x1eb73, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov (%rdi), %r8
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/

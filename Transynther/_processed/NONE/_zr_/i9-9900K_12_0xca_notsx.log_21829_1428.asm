.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xf42d, %rsi
lea addresses_A_ht+0xeded, %rdi
nop
nop
nop
nop
nop
add $5743, %rdx
mov $76, %rcx
rep movsw
nop
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x160ed, %rbp
nop
nop
and %r8, %r8
mov (%rbp), %cx
nop
nop
nop
nop
nop
cmp $58266, %r14
lea addresses_D_ht+0xbced, %rdi
clflush (%rdi)
nop
dec %rdx
movb (%rdi), %cl
nop
nop
nop
nop
xor $1484, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WC+0xaaed, %rcx
nop
cmp %r8, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
dec %rdi

// Store
lea addresses_WT+0x984, %rcx
nop
nop
nop
and $23491, %r13
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Load
lea addresses_WT+0x1db2d, %rdi
nop
and $61384, %r8
movb (%rdi), %r15b
nop
nop
inc %rcx

// Store
lea addresses_PSE+0x1c2ed, %rcx
nop
xor $48295, %rdi
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_UC+0x1cc6d, %rbp
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
nop
sub $43062, %r12

// Faulty Load
lea addresses_WC+0xaaed, %rdi
nop
xor $6924, %rbp
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

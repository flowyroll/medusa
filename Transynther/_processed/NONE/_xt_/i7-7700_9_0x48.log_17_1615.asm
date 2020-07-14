.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rbx
push %rdi
lea addresses_UC_ht+0xe052, %r9
nop
nop
nop
nop
inc %r10
movb $0x61, (%r9)
nop
nop
nop
mfence
lea addresses_D_ht+0x14e32, %r10
nop
nop
nop
nop
sub %r15, %r15
mov (%r10), %bx
nop
nop
nop
nop
nop
sub $61460, %r10
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WT+0xd9b2, %rbx
nop
nop
and $4236, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rbx)
nop
xor %r11, %r11

// Faulty Load
lea addresses_RW+0x14232, %rbp
nop
nop
nop
and %rdx, %rdx
vmovups (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': True, 'NT': False}}
{'32': 17}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/

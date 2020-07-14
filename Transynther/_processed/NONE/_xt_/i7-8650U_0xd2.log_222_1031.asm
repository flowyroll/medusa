.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdx
lea addresses_UC_ht+0x745d, %r14
nop
nop
nop
nop
nop
add %r9, %r9
mov (%r14), %r13w
nop
nop
add $33195, %r10
lea addresses_WC_ht+0x2cdd, %rbx
nop
nop
and $9616, %r10
movl $0x61626364, (%rbx)
nop
dec %rcx
lea addresses_A_ht+0x1e59d, %rbx
nop
xor %rdx, %rdx
mov (%rbx), %r9w
and %rdx, %rdx
lea addresses_WT_ht+0x1e5f1, %rdx
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
add $6988, %r13
lea addresses_UC_ht+0x11d1d, %r9
nop
sub $62812, %r14
movw $0x6162, (%r9)
nop
nop
nop
nop
cmp $22135, %rdx
lea addresses_WC_ht+0x9eed, %r10
nop
sub $23196, %rbx
mov (%r10), %cx
nop
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x11873, %rcx
clflush (%rcx)
nop
nop
xor %r13, %r13
movl $0x61626364, (%rcx)
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x172a4, %r14
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%r14)
nop
nop
nop
nop
xor $50589, %r9
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rdi
push %rdx
push %rsi

// Faulty Load
lea addresses_RW+0x1431d, %rsi
nop
nop
nop
nop
nop
xor %rdi, %rdi
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'32': 222}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/

.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rcx
push %rdx
lea addresses_WC_ht+0xe3a2, %r10
nop
nop
nop
and $7484, %rdx
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
add %rdx, %rdx
pop %rdx
pop %rcx
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_US+0xe064, %rsi
xor $13139, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movntdq %xmm0, (%rsi)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rsi
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_WT+0x18aa2, %rdi
nop
nop
nop
nop
nop
add $41807, %r13
movl $0x51525354, (%rdi)
nop
nop
nop
xor $990, %r10

// Faulty Load
lea addresses_RW+0x60a2, %r9
nop
nop
nop
cmp %rdi, %rdi
movb (%r9), %r10b
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'32': 10}
32 32 32 32 32 32 32 32 32 32
*/

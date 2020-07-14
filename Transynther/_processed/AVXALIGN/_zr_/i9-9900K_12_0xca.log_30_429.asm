.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x7dd9, %rax
clflush (%rax)
nop
xor $24038, %rsi
movw $0x5152, (%rax)
nop
nop
nop
nop
add $7176, %r12

// Load
lea addresses_RW+0xa5e7, %r10
nop
nop
cmp $48035, %rsi
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
inc %r13

// Load
lea addresses_UC+0x9ea7, %r13
clflush (%r13)
nop
nop
nop
nop
xor %r12, %r12
mov (%r13), %ax
nop
nop
nop
nop
nop
add $2207, %rsi

// Load
lea addresses_normal+0x1a9e7, %r12
nop
nop
dec %rdi
mov (%r12), %r13w
nop
xor %r13, %r13

// Faulty Load
lea addresses_normal+0x1a9e7, %r12
nop
dec %rdx
vmovntdqa (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 30}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

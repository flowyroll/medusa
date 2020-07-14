.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbx
push %rdi
push %rdx
lea addresses_D_ht+0x8c33, %rdx
nop
nop
nop
sub $26069, %rbx
mov (%rdx), %r13
inc %r13
lea addresses_UC_ht+0x400f, %r9
nop
nop
add $13642, %r15
mov (%r9), %di
nop
nop
nop
xor $65487, %rdi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_PSE+0xc033, %rax
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rax)
cmp $3139, %rax

// Load
lea addresses_WC+0x1bb33, %r15
nop
nop
nop
nop
add %rsi, %rsi
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
nop
cmp $24013, %rax

// Load
lea addresses_RW+0xd833, %rax
nop
nop
nop
nop
nop
xor %r9, %r9
vmovntdqa (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
add $5820, %rsi

// Faulty Load
lea addresses_US+0x9033, %r12
and $9225, %r13
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 21}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

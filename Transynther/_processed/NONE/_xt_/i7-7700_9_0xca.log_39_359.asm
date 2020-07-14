.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x19182, %r12
nop
nop
nop
nop
nop
sub $59301, %r13
movups (%r12), %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x1f3e, %r10
nop
nop
nop
and $7478, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm6
movups %xmm6, (%r10)
cmp %rbx, %rbx
lea addresses_WT_ht+0x393e, %r10
nop
nop
add %r9, %r9
movb (%r10), %bl
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x73e, %rsi
lea addresses_D_ht+0x96c7, %rdi
nop
nop
nop
nop
nop
add $18586, %r13
mov $62, %rcx
rep movsb
nop
nop
nop
and %r9, %r9
lea addresses_D_ht+0x1d83e, %rbx
nop
nop
sub $41986, %r9
mov (%rbx), %esi
nop
nop
add $4787, %rcx
lea addresses_A_ht+0x8d3e, %r9
nop
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
and $0xffffffffffffffc0, %r9
movntdq %xmm2, (%r9)
nop
nop
nop
nop
dec %rdx
lea addresses_D_ht+0x6236, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
add %rdi, %rdi
vmovups (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
xor $33067, %rsi
lea addresses_D_ht+0x1d1ae, %rdi
xor %r9, %r9
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
sub $57687, %r15
lea addresses_normal_ht+0x1e33e, %rsi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov (%rsi), %r10
nop
add %rdi, %rdi
lea addresses_D_ht+0xcf3e, %rcx
xor $8378, %rbx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
cmp $22400, %r10
lea addresses_D_ht+0x19cda, %rsi
lea addresses_A_ht+0x15f5e, %rdi
clflush (%rsi)
nop
nop
nop
xor $1672, %r13
mov $123, %rcx
rep movsq
nop
nop
cmp $37722, %r13
lea addresses_normal_ht+0xf251, %rsi
lea addresses_normal_ht+0x4b02, %rdi
clflush (%rdi)
nop
nop
xor $17117, %rdx
mov $79, %rcx
rep movsb
nop
nop
nop
inc %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x179fe, %rsi
lea addresses_WC+0x13a4e, %rdi
nop
nop
lfence
mov $110, %rcx
rep movsw
nop
nop
nop
nop
nop
add $39893, %r13

// Faulty Load
lea addresses_normal+0x5f3e, %r8
add %r14, %r14
movb (%r8), %cl
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'34': 39}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/

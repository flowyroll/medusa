.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x8556, %rbp
clflush (%rbp)
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x1ae56, %r10
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%r10)
and %r11, %r11
lea addresses_A_ht+0x1de56, %r11
nop
xor %r15, %r15
movups (%r11), %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
cmp $1109, %r10
lea addresses_WT_ht+0xddd6, %rcx
nop
nop
nop
and %rdx, %rdx
movl $0x61626364, (%rcx)
cmp %r15, %r15
lea addresses_UC_ht+0xe0d6, %r11
nop
nop
nop
nop
sub %r15, %r15
movups (%r11), %xmm1
vpextrq $0, %xmm1, %r10
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x6416, %r10
nop
and %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r10)
nop
dec %rcx
lea addresses_UC_ht+0x520e, %rbx
nop
nop
nop
and %r10, %r10
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x1c596, %rsi
lea addresses_WT_ht+0x5a56, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $90, %rcx
rep movsb
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rax
push %rbp

// Store
lea addresses_US+0x3956, %rbp
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovaps %ymm4, (%rbp)
nop
add $29280, %r10

// Load
lea addresses_WC+0xf56, %r13
nop
cmp $12854, %rax
vmovups (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
nop
nop
nop
cmp $45198, %r9

// Faulty Load
lea addresses_WT+0x11656, %r10
clflush (%r10)
nop
nop
and $24544, %rax
mov (%r10), %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'39': 94}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/

.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a1ae, %rsi
lea addresses_D_ht+0x1211b, %rdi
nop
nop
dec %r11
mov $73, %rcx
rep movsl
dec %rdi
lea addresses_WC_ht+0x35ce, %r10
nop
nop
nop
nop
nop
xor $17132, %rax
mov (%r10), %r11w
cmp $2362, %rcx
lea addresses_WT_ht+0xc4ae, %rdi
nop
nop
nop
nop
nop
and $47236, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
and $42442, %r11
lea addresses_normal_ht+0x204e, %rcx
nop
nop
xor $45860, %r12
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
nop
dec %rcx
lea addresses_WT_ht+0x684e, %rsi
lea addresses_WC_ht+0x21aa, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov $84, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x1e74e, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
cmp $45931, %r10
lea addresses_WT_ht+0xa42, %r14
cmp %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, (%r14)
nop
nop
nop
nop
nop
cmp $34028, %r12
lea addresses_D_ht+0xdf7e, %rdi
nop
nop
nop
nop
nop
add $48086, %r10
mov (%rdi), %ax
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0x206, %r12
nop
nop
nop
nop
sub %r11, %r11
movw $0x5152, (%r12)
nop
and $28761, %rdi

// Load
lea addresses_PSE+0xd44e, %r11
nop
nop
inc %r9
mov (%r11), %si
nop
nop
nop
nop
inc %r11

// Store
mov $0x3e1792000000044e, %r11
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
nop
xor %r11, %r11

// Faulty Load
lea addresses_A+0x1104e, %rdi
nop
nop
sub $58751, %r11
vmovaps (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 14815, '48': 6962, '44': 52}
48 00 48 48 00 00 48 48 00 00 00 48 48 00 00 48 00 48 00 48 48 00 00 00 00 48 00 00 00 48 48 00 48 00 48 00 00 00 48 00 48 00 00 00 00 00 48 48 00 48 00 00 48 00 00 00 48 00 00 00 00 48 00 00 48 00 00 48 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 48 00 00 48 00 48 00 48 00 00 00 00 00 00 48 48 00 00 00 48 48 00 48 00 00 00 48 00 48 00 00 00 48 00 00 48 00 00 48 48 00 00 48 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 48 00 00 00 48 00 00 48 00 00 00 48 00 00 00 48 00 48 00 00 48 00 00 00 48 00 48 00 48 00 00 00 48 48 00 00 48 00 48 00 48 00 00 48 00 00 48 00 48 00 48 00 48 48 00 48 48 00 00 48 00 00 48 00 48 00 00 00 00 00 00 48 00 00 48 00 00 48 48 00 00 48 00 48 00 48 00 00 48 00 48 00 00 00 00 48 00 00 48 00 00 00 48 00 00 00 00 48 00 48 00 00 00 48 00 00 48 00 48 00 00 48 00 48 00 48 00 48 00 48 00 00 48 00 48 48 00 00 00 00 00 48 00 00 48 00 48 00 00 00 48 48 00 00 00 48 00 00 48 00 00 48 00 00 00 48 00 48 00 48 00 00 00 48 00 48 48 00 48 00 00 00 00 48 00 48 00 00 00 48 00 00 48 00 48 00 48 00 00 48 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 48 00 48 00 00 48 00 00 48 00 00 48 00 00 48 00 48 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 48 00 00 48 00 48 00 48 00 00 00 00 48 00 00 00 00 48 00 00 48 00 00 00 00 00 48 00 00 48 00 00 48 00 48 00 48 00 00 00 00 48 00 00 00 48 00 48 00 48 00 00 48 00 00 00 48 00 48 00 00 00 48 00 00 00 00 48 48 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 48 48 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 48 00 48 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 44 00 48 00 00 48 48 00 00 48 00 48 00 48 00 00 00 48 00 00 00 00 48 00 48 00 48 00 00 00 00 00 48 00 48 48 00 00 48 00 00 48 00 48 00 48 00 48 00 48 00 00 00 48 48 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 48 48 00 48 00 00 48 48 00 00 48 00 48 00 00 00 48 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 48 00 48 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 48 48 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 00 48 00 00 48 00 48 00 48 00 00 00 00 48 00 00 48 00 48 00 48 00 00 48 00 00 00 00 00 48 00 00 48 00 48 00 48 48 00 48 48 00 00 48 00 00 00 48 48 00 48 48 00 00 00 00 00 48 00 00 48 00 00 48 00 00 48 00 48 00 48 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 00 48 00 00 48 00 00 48 00 48 00 00 48 00 00 00 00 00 48 00 00 00 48 00 48 00 00 00 48 00 00 00 00 00 48 00 48 00 48 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 48 00 48 00 48 00 48 00 00 00 00 48 00 48 00 00 00 00 00 48 48 00 00 00 00 48 00 00 00 48 00 00 00 00 48 00 48 00 00 00 48 00 00 48 00 48 00 00 48 00 00 48 00 00 00 00 48 00 00 48 00 48 00 48 00 00 00 00 00 48 48 00 00 48 00 00 48 00 00 48 48 00 00 48 00 00 00 00 48 48 00 00 48 00 00 00 48 48 00 00 48 00 48 00 00 48 00 00 00 00 00 00 48 48 00 00 00 00 48 00 00 48 00 00 00 00 00
*/

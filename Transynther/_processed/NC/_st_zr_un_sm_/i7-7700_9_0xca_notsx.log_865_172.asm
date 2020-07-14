.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x4fbd, %rbx
nop
nop
inc %r9
movw $0x6162, (%rbx)
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x149bd, %rsi
lea addresses_WC_ht+0xa03d, %rdi
xor $2411, %r14
mov $5, %rcx
rep movsw
mfence
lea addresses_WT_ht+0x8f96, %rcx
nop
nop
cmp %rsi, %rsi
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x4dc9, %rbx
nop
nop
nop
dec %r11
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
add $47157, %rsi
lea addresses_WT_ht+0xd03d, %rsi
lea addresses_WC_ht+0x1aa3d, %rdi
nop
nop
nop
cmp $54107, %rax
mov $83, %rcx
rep movsw
nop
add %rcx, %rcx
lea addresses_WT_ht+0x1390d, %r11
and $42527, %rcx
movb $0x61, (%r11)
nop
dec %rcx
lea addresses_UC_ht+0x1ef7d, %rax
sub %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
nop
add $55132, %r14
lea addresses_A_ht+0x1483d, %rcx
nop
cmp $34529, %r9
movw $0x6162, (%rcx)
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0x14d3d, %rsi
and $64830, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
and $55579, %r11
lea addresses_UC_ht+0x161a5, %rsi
lea addresses_UC_ht+0x184bd, %rdi
add %rax, %rax
mov $51, %rcx
rep movsl
inc %r11
lea addresses_WC_ht+0x18c3d, %r14
nop
xor %r9, %r9
movups (%r14), %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x1d7bd, %r14
nop
nop
xor %r11, %r11
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
sub $65467, %r11
lea addresses_A_ht+0x7dd, %rax
nop
xor %rcx, %rcx
mov (%rax), %r9
nop
cmp $15298, %r14
lea addresses_A_ht+0x1d83d, %r9
nop
and %rbx, %rbx
movb (%r9), %r14b
nop
nop
nop
nop
nop
inc %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rbx
push %rdx
push %rsi

// Load
mov $0x9d8f0000000c3d, %r12
cmp $7501, %r15
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
cmp $49420, %r15

// Store
mov $0x1d71560000000c3d, %rsi
and $34585, %r15
movb $0x51, (%rsi)
nop
nop
nop
nop
cmp $33312, %rdx

// Store
mov $0x9d8f0000000c3d, %r12
nop
nop
cmp $37482, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%r12)
nop
nop
and %r12, %r12

// Store
mov $0x507c63000000043d, %rdx
clflush (%rdx)
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%rdx)
nop
nop
nop
nop
nop
and $21615, %r10

// Faulty Load
mov $0x9d8f0000000c3d, %r12
nop
nop
nop
nop
dec %rdx
mov (%r12), %r10d
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'6d': 418, '00': 7, '58': 440}
6d 58 58 6d 58 58 6d 58 6d 6d 6d 6d 58 6d 58 58 58 6d 58 6d 58 6d 6d 6d 6d 6d 58 58 6d 6d 6d 00 58 6d 6d 6d 6d 58 6d 6d 58 58 58 58 58 6d 58 58 6d 58 6d 6d 58 58 6d 58 6d 6d 58 6d 58 6d 6d 58 6d 6d 6d 6d 58 58 6d 6d 58 6d 58 58 58 58 58 6d 6d 58 58 6d 58 58 58 58 6d 58 6d 58 58 6d 6d 6d 6d 58 58 58 58 58 6d 58 6d 6d 58 58 58 58 58 58 6d 58 58 6d 58 6d 6d 6d 58 6d 58 6d 58 6d 6d 6d 6d 6d 58 58 58 6d 58 58 58 6d 6d 6d 58 58 58 6d 6d 6d 6d 58 6d 58 58 6d 6d 6d 58 58 58 58 58 6d 58 58 6d 6d 58 58 6d 58 58 6d 6d 6d 58 6d 58 6d 6d 58 58 58 6d 6d 58 58 58 58 6d 58 58 58 6d 58 6d 6d 58 6d 58 6d 58 6d 6d 58 58 58 6d 58 6d 6d 6d 58 6d 58 58 6d 58 58 6d 58 6d 58 58 6d 6d 6d 6d 6d 58 6d 6d 58 6d 58 58 6d 58 58 58 6d 58 58 58 58 6d 6d 6d 00 58 58 6d 6d 58 6d 6d 6d 6d 58 6d 58 6d 6d 58 58 58 58 58 6d 58 6d 6d 6d 58 58 58 58 58 58 6d 58 6d 58 6d 58 6d 58 6d 6d 6d 58 58 58 58 6d 58 6d 6d 6d 6d 58 6d 58 58 6d 58 6d 6d 6d 6d 58 6d 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 6d 6d 58 6d 6d 6d 58 6d 6d 6d 6d 6d 58 58 6d 6d 58 6d 58 6d 6d 58 6d 58 58 6d 6d 58 6d 6d 58 6d 58 00 6d 58 58 6d 6d 58 58 58 6d 6d 58 6d 58 58 6d 6d 6d 58 6d 6d 6d 6d 6d 58 6d 6d 58 58 6d 58 6d 58 58 6d 58 58 6d 6d 6d 58 6d 6d 6d 58 58 58 6d 58 6d 6d 6d 58 58 58 6d 58 6d 6d 58 58 58 58 6d 6d 58 6d 6d 6d 6d 6d 58 58 00 6d 58 6d 58 6d 6d 58 6d 58 6d 58 58 58 58 58 58 6d 58 6d 6d 58 6d 58 58 6d 6d 58 6d 58 58 58 58 6d 58 58 58 6d 6d 58 58 58 6d 6d 6d 58 58 6d 6d 58 58 6d 58 58 58 58 58 58 6d 58 58 58 58 58 58 6d 58 58 58 6d 6d 6d 6d 58 58 6d 58 6d 6d 58 58 58 6d 58 6d 6d 58 58 6d 6d 58 6d 6d 58 6d 58 58 6d 58 58 6d 58 6d 6d 6d 6d 58 58 6d 58 58 6d 58 58 58 58 58 58 58 6d 6d 58 58 58 6d 58 6d 58 58 58 6d 58 6d 6d 6d 6d 58 6d 58 58 58 58 6d 58 58 58 58 6d 6d 58 6d 58 6d 58 6d 00 6d 6d 6d 58 58 58 6d 58 6d 58 6d 58 58 6d 58 6d 6d 58 6d 6d 6d 58 58 58 6d 58 58 6d 6d 6d 58 58 58 58 58 6d 58 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 58 58 6d 6d 58 6d 58 58 58 6d 58 6d 58 58 58 58 6d 6d 58 6d 6d 6d 58 58 6d 6d 6d 58 6d 6d 6d 58 6d 58 6d 6d 6d 58 6d 58 6d 6d 58 6d 58 6d 58 6d 6d 6d 58 6d 6d 58 58 58 58 58 6d 58 58 58 58 6d 6d 58 6d 6d 58 6d 6d 58 58 6d 6d 6d 58 6d 6d 6d 6d 58 6d 6d 58 58 58 58 6d 58 6d 6d 58 58 6d 6d 6d 6d 58 58 6d 58 6d 6d 58 6d 58 6d 6d 6d 58 58 6d 6d 58 00 6d 6d 58 6d 6d 6d 6d 00 58 6d 6d 6d 58 58 58 58 58 6d 6d 58 6d 6d 58 58 58 58 6d 58 58 6d 6d 6d 6d 6d 58 6d 58 6d 6d 6d 58 58 6d 58 6d 6d 6d 6d 58 58 58 58 58 58 58 58 6d 6d 58 6d 58 6d 6d 6d 58 6d 58 58 6d 6d 6d 6d 58 58 6d 6d 58 58 58 6d 58 6d 58 6d 6d 58 58 58 58 58 6d 58 58 58 6d 58 58 6d 6d 58 58 6d 6d 6d 58
*/

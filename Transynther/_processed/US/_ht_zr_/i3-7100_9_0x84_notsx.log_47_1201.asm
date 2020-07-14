.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x7d7b, %r14
nop
nop
nop
nop
xor $16312, %rax
vmovups (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0x1f, %rsi
lea addresses_WC_ht+0x9b3b, %rdi
nop
add $49353, %rbx
mov $19, %rcx
rep movsb
nop
add $41440, %rsi
lea addresses_WC_ht+0x707, %rdi
clflush (%rdi)
inc %rdx
mov $0x6162636465666768, %r14
movq %r14, (%rdi)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x1707b, %rdx
add $31168, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rdx)
cmp %rcx, %rcx
lea addresses_D_ht+0xa97b, %rbx
clflush (%rbx)
nop
cmp %rdx, %rdx
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x1cebb, %rsi
nop
nop
nop
and $7740, %rcx
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
nop
nop
sub $43183, %rdx
lea addresses_normal_ht+0x1b73b, %rbx
cmp %rax, %rax
mov (%rbx), %edx
nop
nop
nop
sub $26167, %rdi
lea addresses_UC_ht+0x127fb, %rsi
lea addresses_D_ht+0x1ed7b, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $104, %rcx
rep movsb
nop
add %rdi, %rdi
lea addresses_A_ht+0xe6cb, %rcx
dec %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
and $33364, %rdx
lea addresses_normal_ht+0x623b, %r14
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x12a22, %rbx
nop
add $14280, %rax
movw $0x6162, (%rbx)
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_normal+0x6f9b, %r9
nop
nop
nop
nop
nop
and %r11, %r11
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WC+0x233b, %r10
nop
nop
nop
xor %r13, %r13
movb $0x51, (%r10)
nop
xor %r13, %r13

// Faulty Load
lea addresses_US+0x1fd7b, %r13
nop
nop
nop
nop
inc %rdx
vmovups (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'46': 19, '00': 1, '47': 23, '49': 4}
00 46 47 49 49 46 46 46 47 47 46 49 46 47 47 47 47 46 46 46 47 46 47 47 46 47 47 46 47 47 47 46 49 47 47 47 46 46 46 47 46 47 47 47 46 47 46
*/

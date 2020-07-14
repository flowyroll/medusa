.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdx
lea addresses_UC_ht+0x4ea, %rcx
nop
nop
nop
cmp $33309, %rdx
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
nop
nop
nop
dec %r11
lea addresses_WT_ht+0x122ea, %r12
nop
xor $20316, %r9
vmovups (%r12), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x142ea, %rdx
nop
nop
nop
inc %rbx
mov (%rdx), %r12
nop
nop
nop
xor $17663, %rdx
lea addresses_A_ht+0x252a, %r10
nop
mfence
movb $0x61, (%r10)
nop
nop
add $12377, %r9
lea addresses_normal_ht+0x9aea, %r10
add %rbx, %rbx
movl $0x61626364, (%r10)
nop
nop
inc %rcx
lea addresses_A_ht+0x1e45a, %r9
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r9)
nop
and %rbx, %rbx
lea addresses_UC_ht+0x3cea, %rcx
nop
nop
nop
nop
and %r9, %r9
movw $0x6162, (%rcx)
nop
nop
dec %rdx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x162ea, %r13
nop
nop
nop
nop
nop
and %rsi, %rsi
movw $0x5152, (%r13)
nop
nop
nop
add %r13, %r13

// Load
lea addresses_D+0xb3ea, %r13
nop
nop
nop
xor $59643, %r12
mov (%r13), %r14w
nop
nop
add $19950, %r13

// Store
mov $0x36aa770000000eea, %r13
xor %r14, %r14
movw $0x5152, (%r13)
nop
nop
nop
nop
cmp $16385, %r13

// REPMOV
lea addresses_WT+0xbaea, %rsi
lea addresses_WC+0x36ea, %rdi
nop
nop
inc %r9
mov $31, %rcx
rep movsw
nop
nop
nop
sub $50244, %r9

// Faulty Load
lea addresses_WT+0xbaea, %rsi
clflush (%rsi)
xor $12454, %rcx
movaps (%rsi), %xmm1
vpextrq $0, %xmm1, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'00': 4}
00 00 00 00
*/

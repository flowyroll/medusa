.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x12446, %rsi
lea addresses_WC_ht+0x8d46, %rdi
nop
nop
nop
nop
nop
sub $43606, %r9
mov $102, %rcx
rep movsq
nop
xor $47810, %r12
lea addresses_UC_ht+0x1bf5e, %rsi
lea addresses_A_ht+0xce46, %rdi
nop
and %r11, %r11
mov $75, %rcx
rep movsq
nop
nop
nop
sub $20507, %rcx
lea addresses_UC_ht+0x1da42, %rsi
nop
xor %rdx, %rdx
movb $0x61, (%rsi)
nop
nop
add $21345, %rcx
lea addresses_WT_ht+0x791a, %r11
nop
and %rdi, %rdi
mov (%r11), %ecx
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x188c6, %rsi
lea addresses_normal_ht+0x5e76, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $92, %rcx
rep movsw
nop
nop
xor $52485, %r12
lea addresses_D_ht+0xa786, %rsi
lea addresses_A_ht+0x1b2be, %rdi
nop
nop
xor $29046, %r11
mov $12, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $37867, %rdi
lea addresses_WC_ht+0x7c8e, %rsi
lea addresses_WT_ht+0x9946, %rdi
nop
nop
nop
cmp $8755, %r11
mov $48, %rcx
rep movsb
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x11ee, %r12
nop
nop
nop
nop
xor %rdx, %rdx
vmovups (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
and $3020, %r9
lea addresses_D_ht+0x77c6, %r12
nop
add $10671, %r11
mov (%r12), %ecx
nop
sub $54063, %r12
lea addresses_WT_ht+0x16536, %r8
nop
nop
nop
nop
nop
sub $14468, %r9
movups (%r8), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x1a386, %r9
nop
nop
nop
nop
nop
and $59576, %r12
vmovups (%r9), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0xc386, %rsi
lea addresses_A_ht+0x1126, %rdi
nop
add %rdx, %rdx
mov $122, %rcx
rep movsq
nop
nop
nop
lfence
lea addresses_UC_ht+0x147f8, %rsi
nop
nop
sub %rcx, %rcx
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x3b46, %rcx
nop
nop
cmp $31776, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rcx)
nop
add $47321, %r9
lea addresses_A_ht+0x1b326, %rsi
lea addresses_UC_ht+0xa946, %rdi
nop
nop
nop
nop
cmp $43428, %r8
mov $59, %rcx
rep movsq
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rdi

// Store
lea addresses_RW+0x7f46, %rbx
nop
nop
nop
nop
dec %rdi
movb $0x51, (%rbx)
and %r11, %r11

// Load
lea addresses_US+0xb7a2, %r8
nop
nop
sub $5588, %rdi
mov (%r8), %r14w
and $48997, %r14

// Load
lea addresses_D+0x7aee, %r14
nop
nop
nop
nop
nop
cmp %r10, %r10
mov (%r14), %r8d
nop
nop
cmp %r14, %r14

// Faulty Load
mov $0x68dca30000000d46, %r8
nop
nop
nop
cmp %r14, %r14
vmovaps (%r8), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 1960, '44': 5, '46': 6, '49': 1380, '45': 9580, '47': 8898}
49 47 47 47 45 45 45 45 45 45 49 45 45 49 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 49 45 45 45 45 47 47 47 47 47 47 47 47 00 00 00 00 45 45 45 45 45 45 45 45 45 49 49 45 45 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 49 45 45 45 45 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 45 49 45 49 45 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 49 45 49 45 49 45 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 49 45 49 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 00 00 00 00 49 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 49 45 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 49 49 45 45 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 49 45 45 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 49 45 45 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 45 45 45 49 45 47 47 47 47 47 47 47 47 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 49 45 45 45 45 49 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 49 45 45 49 45 45 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 49 45 45 49 45 49 45 49 47 47 47 47 47 47 47 47 47 47 47 47 00 00 00 45 45 45 45 45 45 45 45 49 45 45 49 45 49 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 49 45 00 00 00 00 00 00 00 00 00 00 00 47 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 49 45 45 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 49 49 45 49 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 49 49 45 45 47 47 47 47 47 47 47 47 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 49 00 00 00 00 00 00 49 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 49 45 45 00 46 49 45 45 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 49 45 45 45 45 49 45 49 47 47 47 47 47 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 49 45 49 45 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 47 47 47 47 47 47 47 47 47 47 47 47 47 47 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 45 45 45 45 45 45 45 45 45 49 45 49 45 47 47 47
*/

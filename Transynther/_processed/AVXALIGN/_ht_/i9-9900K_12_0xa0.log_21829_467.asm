.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xa6a1, %r12
cmp $15523, %rbx
movb $0x61, (%r12)
nop
nop
nop
cmp $35936, %rbp
lea addresses_D_ht+0x14d21, %r14
clflush (%r14)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
and $0xffffffffffffffc0, %r14
vmovntdq %ymm1, (%r14)
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x35e1, %r11
nop
nop
nop
nop
sub $25999, %rdi
vmovups (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
xor $10569, %r11
lea addresses_UC_ht+0x6c21, %rdx
nop
nop
nop
and %rbp, %rbp
movb (%rdx), %r11b
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x14b21, %rsi
lea addresses_D_ht+0xc721, %rdi
nop
nop
nop
sub $21720, %rbx
mov $92, %rcx
rep movsq
nop
nop
nop
nop
nop
and $45930, %r12
lea addresses_WC_ht+0x15521, %rsi
nop
nop
nop
nop
nop
xor $46486, %rdx
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
nop
nop
nop
cmp $27094, %rdx
lea addresses_UC_ht+0x4721, %rcx
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
cmp $53214, %r12
lea addresses_normal_ht+0x12f21, %r11
nop
cmp $19231, %rsi
movl $0x61626364, (%r11)
nop
nop
and $53777, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Faulty Load
mov $0x7e37f20000000721, %rdi
nop
nop
nop
nop
cmp $9566, %rbx
vmovaps (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'45': 14871, '47': 6958}
45 45 45 47 47 45 47 47 45 45 47 45 45 47 47 47 45 47 47 47 47 45 45 45 45 47 47 45 47 47 45 45 45 45 47 45 45 47 45 45 47 47 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 47 45 47 45 47 47 45 45 47 47 45 45 45 47 45 47 47 45 47 45 45 45 45 47 45 45 45 47 45 47 47 47 47 47 45 47 45 45 47 47 47 45 47 45 45 47 45 45 45 45 45 45 47 47 45 45 45 47 45 45 45 47 45 45 47 45 45 47 45 45 47 47 47 45 47 45 47 45 47 47 45 47 47 45 45 47 47 45 45 45 47 45 47 45 47 47 47 47 45 45 45 47 45 45 45 47 45 45 47 47 45 47 45 47 47 45 47 45 47 45 47 47 47 47 45 47 47 47 45 47 47 47 47 45 47 47 45 45 45 45 45 45 47 47 47 47 45 45 45 47 47 45 45 47 45 45 47 47 45 45 45 47 47 47 45 47 45 45 47 47 45 47 45 47 45 45 45 47 47 45 47 45 45 45 45 47 45 47 45 45 47 47 47 47 47 47 47 45 45 47 45 45 47 47 45 45 45 45 47 47 47 47 47 45 47 47 45 47 45 47 47 47 47 47 47 45 45 45 47 47 45 45 47 47 45 45 45 47 45 45 45 47 47 47 47 45 47 47 45 45 47 47 45 47 47 47 45 45 45 47 47 45 47 47 45 45 45 45 45 47 45 45 47 47 47 45 47 47 45 45 47 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 47 47 47 45 45 45 47 47 45 45 45 45 45 47 47 45 45 45 45 47 47 45 47 45 47 45 47 45 45 47 47 45 45 45 47 47 45 45 47 47 45 47 45 45 47 45 45 47 47 45 45 47 45 45 47 47 45 45 47 45 45 47 45 45 45 45 47 47 45 47 45 45 47 45 45 47 47 45 45 47 45 45 45 47 45 47 45 45 45 45 47 47 47 45 45 45 45 47 47 45 47 45 45 45 45 47 47 45 45 47 45 47 47 45 45 45 45 45 47 47 45 47 45 47 47 47 45 45 45 47 45 45 47 47 45 47 47 45 47 45 45 47 47 45 45 45 45 45 45 45 47 47 45 45 45 47 45 45 45 47 47 45 47 47 47 47 47 47 47 45 45 47 45 45 47 47 45 47 47 45 47 45 47 45 45 47 45 45 47 45 47 47 45 45 45 47 47 47 45 47 47 47 47 47 45 45 47 47 47 45 47 45 45 45 47 47 47 47 45 45 47 45 47 47 47 45 47 47 47 45 47 47 47 45 45 47 47 45 47 47 47 45 47 47 47 47 45 45 47 45 45 47 47 45 45 45 47 47 47 47 47 47 45 47 47 45 45 47 47 45 47 47 47 47 45 45 47 47 45 45 47 45 45 47 45 45 45 47 47 47 47 45 45 47 47 45 47 47 45 45 47 47 47 45 47 45 47 45 47 45 45 47 45 45 47 47 45 45 45 45 45 47 47 45 47 45 45 47 45 45 47 45 45 45 45 47 45 45 45 47 47 45 45 47 45 47 45 45 47 47 45 45 47 47 47 45 45 47 45 45 45 47 45 45 47 47 47 47 47 47 47 45 45 47 47 45 47 45 47 45 45 45 45 45 45 45 45 45
*/

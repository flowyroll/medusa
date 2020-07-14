.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xab9, %r13
inc %rbx
movb $0x61, (%r13)
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x3b53, %rsi
lea addresses_D_ht+0x2753, %rdi
nop
nop
nop
and $19735, %r10
mov $94, %rcx
rep movsl
nop
nop
nop
cmp $15291, %rsi
lea addresses_WT_ht+0x7b53, %rsi
lea addresses_WC_ht+0xb613, %rdi
nop
nop
add $15110, %r15
mov $6, %rcx
rep movsb
nop
nop
add $15723, %r11
lea addresses_WT_ht+0xaed3, %rsi
lea addresses_D_ht+0x1154d, %rdi
nop
nop
add %r11, %r11
mov $87, %rcx
rep movsl
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0xf853, %rsi
lea addresses_D_ht+0x1bba3, %rdi
and $32328, %rbx
mov $95, %rcx
rep movsw
add $21901, %rcx
lea addresses_normal_ht+0x5f53, %rcx
dec %rsi
movb (%rcx), %r15b
nop
nop
nop
nop
xor $53596, %rsi
lea addresses_WC_ht+0x12ad, %rsi
lea addresses_A_ht+0x14f53, %rdi
nop
nop
nop
nop
and $6088, %r10
mov $45, %rcx
rep movsw
nop
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x13669, %rsi
lea addresses_normal_ht+0x16f53, %rdi
nop
nop
nop
sub %r10, %r10
mov $28, %rcx
rep movsl
cmp %r15, %r15
lea addresses_A_ht+0xbfa7, %rsi
lea addresses_WT_ht+0xb53, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $50, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x13503, %rsi
lea addresses_UC_ht+0x1cc93, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r10, %r10
mov $104, %rcx
rep movsl
nop
nop
and %r10, %r10
lea addresses_D_ht+0xc033, %rdi
nop
nop
nop
inc %rcx
movl $0x61626364, (%rdi)
cmp $56119, %rbx
lea addresses_WT_ht+0x71d3, %r10
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r10)
nop
nop
cmp %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbp
push %rcx
push %rsi

// Faulty Load
mov $0x753, %r12
sub $32733, %rsi
vmovaps (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'48': 48, '49': 59, '46': 2697, '45': 323, '44': 3594, '00': 2, '99': 1}
45 46 46 44 44 46 46 44 44 44 46 46 46 44 44 44 44 44 46 44 44 46 46 46 44 44 45 46 46 44 44 46 46 46 46 46 46 44 44 44 46 44 44 44 44 45 46 46 46 44 44 45 46 46 46 44 44 44 44 45 46 46 44 44 44 44 46 46 46 46 46 46 44 44 46 46 46 44 44 45 46 46 46 46 46 44 44 44 44 45 46 46 44 44 44 44 46 46 44 46 46 44 45 46 46 46 44 44 44 44 44 44 44 49 46 46 44 44 45 46 46 46 46 46 44 44 48 46 46 46 44 45 46 46 44 44 44 44 46 46 44 44 44 44 46 46 46 46 46 46 44 44 46 46 46 44 44 44 44 46 46 46 44 44 44 48 46 44 48 46 46 44 44 44 44 44 44 46 46 46 46 46 46 46 49 44 44 44 44 44 44 44 45 46 46 44 44 44 44 44 45 46 46 46 44 45 46 46 46 46 44 44 44 44 44 44 44 45 46 46 46 46 46 46 44 44 46 46 46 44 44 46 44 46 44 44 44 46 44 44 45 46 46 44 44 44 44 45 46 46 44 44 45 46 46 46 44 44 46 46 44 44 44 44 44 44 44 44 46 46 44 44 46 46 46 46 44 44 44 44 46 44 44 44 46 46 46 46 44 46 46 44 46 46 46 46 46 44 44 44 45 46 46 44 44 46 46 46 44 44 46 46 46 46 46 44 46 44 44 44 46 44 46 46 44 44 46 46 46 44 44 44 46 46 44 44 44 44 44 44 45 46 46 46 46 44 44 44 45 46 46 46 44 44 44 44 44 44 46 46 46 46 46 44 44 44 45 46 46 49 44 44 46 46 46 44 44 44 46 44 44 44 49 44 44 49 44 46 46 44 46 46 44 44 44 44 44 44 44 44 46 46 46 46 44 44 44 44 45 46 44 46 44 44 44 44 44 44 48 46 44 44 44 46 46 49 44 44 44 44 45 46 46 44 44 44 44 44 44 46 46 46 44 44 44 44 46 46 44 44 44 46 46 46 49 44 44 44 46 46 46 44 44 44 44 44 45 46 44 46 46 46 46 45 46 46 44 46 46 44 44 44 46 46 46 44 44 44 44 46 44 46 46 44 44 44 44 45 46 46 46 46 44 44 44 45 46 46 44 44 45 46 46 46 44 45 46 46 44 46 45 46 46 46 44 46 44 44 46 44 44 44 44 44 46 46 46 44 46 46 46 44 44 44 46 46 44 44 44 46 46 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 46 44 44 44 44 46 46 46 44 44 46 46 46 46 46 44 44 44 44 46 46 46 44 44 48 46 46 46 44 44 46 46 46 44 45 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 46 44 44 46 46 46 46 46 44 44 46 46 44 46 46 44 46 46 46 44 44 44 44 44 44 44 48 46 46 44 44 44 44 46 46 46 44 44 46 46 44 48 44 46 46 44 44 46 46 44 46 44 44 44 44 44 44 45 46 46 44 46 44 46 46 44 44 44 44 44 44 46 46 46 46 44 44 44 44 44 48 46 46 44 44 44 46 44 44 46 44 44 49 44 44 46 46 46 46 44 44 44 46 46 46 46 46 49 44 44 46 46 44 44 44 45 46 44 44 44 44 46 46 44 44 44 44 46 46 46 46 46 44 44 44 46 46 46 44 44 44 46 46 46 46 44 46 45 46 44 44 44 44 44 44 44 44 44 46 44 44 46 45 44 44 44 46 46 46 46 46 46 44 46 44 46 46 44 44 46 45 46 44 44 45 46 46 44 44 44 44 46 44 44 44 44 46 46 44 46 46 46 49 46 44 44 44 44 44 45 46 46 44 46 46 46 46 44 44 44 44 46 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 44 45 46 46 46 46 44 46 46 44 44 46 46 44 44 44 46 46 44 44 44 44 44 44 44 46 46 44 44 45 46 46 46 44 44 46 44 44 45 46 46 44 46 46 46 44 44 44 46 44 46 46 46 46 44 44 46 44 46 44 46 44 44 44 44 44 44 44 44 46 46 44 44 46 46 46 44 44 44 44 44 46 46 46 44 45 46 46 44 44 44 44 44 46 46 46 44 46 46 44 46 46 44 44 44 44 44 44 46 46 44 44 44 46 46 44 44 46 46 44 44 46 46 46 44 44
*/

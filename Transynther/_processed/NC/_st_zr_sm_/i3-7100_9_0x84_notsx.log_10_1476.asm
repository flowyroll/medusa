.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x198b6, %rsi
lea addresses_A_ht+0x12efa, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $0, %rcx
rep movsw
nop
nop
dec %rbx
lea addresses_UC_ht+0x2fb6, %r14
nop
nop
nop
nop
nop
sub %rbx, %rbx
movl $0x61626364, (%r14)
nop
nop
nop
sub $9940, %rcx
lea addresses_D_ht+0xe1b6, %rsi
clflush (%rsi)
nop
nop
and $2986, %r15
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
xor $19771, %r15
lea addresses_A_ht+0x152b6, %rbx
nop
nop
nop
nop
nop
add $14177, %r12
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0xedb6, %rsi
lea addresses_WT_ht+0x100b6, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $22, %rcx
rep movsq
nop
inc %rdi
lea addresses_WC_ht+0x102b6, %rbx
nop
nop
nop
nop
xor %r15, %r15
mov (%rbx), %cx
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x1a6b6, %r14
add $53137, %r11
movl $0x61626364, (%r14)
nop
nop
nop
and $16419, %rdi
lea addresses_A_ht+0xb17e, %rcx
nop
xor $62205, %rdi
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
cmp %rcx, %rcx
lea addresses_normal_ht+0xca23, %rsi
lea addresses_WT_ht+0xf0b6, %rdi
nop
nop
nop
and %r11, %r11
mov $95, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x75b6, %r11
add %rsi, %rsi
movb (%r11), %r12b
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0x1aab6, %rsi
lea addresses_UC_ht+0x11ffc, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $33, %rcx
rep movsb
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1eeb6, %rsi
lea addresses_WT+0x1b2b6, %rdi
nop
nop
sub $19091, %r15
mov $103, %rcx
rep movsq
nop
nop
nop
cmp $26241, %r15

// Store
mov $0x6c80e900000006b6, %r14
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%r14)
nop
and %rbx, %rbx

// Store
lea addresses_UC+0x16836, %r15
cmp %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%r15)
nop
nop
nop
xor $14291, %rsi

// Load
mov $0xb, %r15
add %r14, %r14
mov (%r15), %ecx
nop
nop
sub $28154, %r14

// Load
lea addresses_WT+0x1a6b6, %r8
nop
nop
nop
nop
cmp %rdi, %rdi
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
nop
sub $46404, %rcx

// Store
lea addresses_D+0x1e416, %r8
nop
nop
cmp %rsi, %rsi
movw $0x5152, (%r8)
nop
and $15235, %r8

// Store
lea addresses_RW+0x18db6, %rbx
nop
nop
nop
xor $41059, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%rbx)
nop
nop
nop
cmp $65173, %r15

// Faulty Load
mov $0x6c80e900000006b6, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $19791, %r14
mov (%rsi), %edi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'34': 1, '51': 4, '00': 5}
51 34 00 51 51 00 00 51 00 00
*/

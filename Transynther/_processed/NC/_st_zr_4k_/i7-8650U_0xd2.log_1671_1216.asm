.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xea6f, %rsi
lea addresses_A_ht+0x2b6f, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $78, %rcx
rep movsw
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x121bf, %rbp
add $4626, %r11
movw $0x6162, (%rbp)
nop
nop
nop
nop
sub $14395, %rax
lea addresses_UC_ht+0x1856f, %rsi
lea addresses_normal_ht+0x1716f, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $110, %rcx
rep movsq
nop
nop
nop
add $44927, %r12
lea addresses_WC_ht+0x16ff7, %r12
nop
nop
and $7419, %rsi
movb (%r12), %r11b
nop
nop
and $48057, %rax
lea addresses_normal_ht+0xb36f, %rsi
lea addresses_normal_ht+0x7bff, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $28, %rcx
rep movsq
nop
sub $65090, %rcx
lea addresses_A_ht+0x11b6f, %rsi
nop
nop
nop
nop
add %rbp, %rbp
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x1edff, %rsi
lea addresses_D_ht+0x1e04b, %rdi
nop
nop
and $9478, %rax
mov $107, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $27262, %rsi
lea addresses_WC_ht+0x11915, %r12
nop
nop
add $60488, %rax
movb $0x61, (%r12)
nop
nop
and $42148, %r12
lea addresses_normal_ht+0x1b96f, %rsi
lea addresses_UC_ht+0x1336f, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $123, %rcx
rep movsb
nop
nop
nop
xor $7964, %rbp
lea addresses_normal_ht+0x15167, %r11
nop
nop
nop
nop
nop
inc %rax
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0xceaf, %rsi
lea addresses_WT_ht+0x9d6f, %rdi
nop
nop
nop
dec %rax
mov $30, %rcx
rep movsw
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0xbf6f, %rcx
clflush (%rcx)
nop
nop
cmp %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
add $48573, %rax
lea addresses_normal_ht+0x16f6f, %rax
nop
nop
nop
nop
and $36087, %r12
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0xfc07, %rdi
nop
xor %rbp, %rbp
movl $0x61626364, (%rdi)
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_WT+0xa16f, %rdx
nop
nop
nop
and $517, %r9
mov $0x5152535455565758, %rax
movq %rax, (%rdx)
dec %r8

// Store
lea addresses_WT+0xe605, %r11
nop
nop
nop
nop
add $60200, %rbp
movl $0x51525354, (%r11)
nop
nop
add $50816, %rax

// Store
lea addresses_D+0x1ffef, %rbp
nop
cmp %r9, %r9
movw $0x5152, (%rbp)
nop
cmp $63251, %r9

// Load
lea addresses_UC+0x1230f, %r8
nop
nop
nop
and $17244, %rbp
movb (%r8), %al
nop
nop
and $21281, %r9

// Store
lea addresses_A+0xd76f, %r11
nop
nop
nop
nop
nop
xor %r8, %r8
movb $0x51, (%r11)
nop
nop
nop
nop
nop
dec %r9

// Store
lea addresses_normal+0x696f, %rdx
nop
nop
nop
nop
xor $14640, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rdx)
nop
cmp %r11, %r11

// Faulty Load
mov $0x2f913e000000016f, %r8
add $32523, %r9
mov (%r8), %edx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 1613, '58': 58}
00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

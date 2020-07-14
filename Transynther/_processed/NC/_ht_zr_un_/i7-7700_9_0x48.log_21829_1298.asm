.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c0d6, %r14
nop
nop
cmp $42203, %r15
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
nop
nop
nop
cmp $842, %r8
lea addresses_WC_ht+0x16536, %r11
nop
nop
nop
dec %rsi
mov (%r11), %ebx
nop
nop
nop
sub $15165, %r14
lea addresses_WC_ht+0xa366, %r8
nop
and %r15, %r15
movw $0x6162, (%r8)
nop
nop
nop
nop
dec %r13
lea addresses_WC_ht+0xabe6, %rsi
lea addresses_A_ht+0x1d5e6, %rdi
nop
add %r11, %r11
mov $92, %rcx
rep movsw
nop
inc %r13
lea addresses_A_ht+0x141e6, %rsi
lea addresses_A_ht+0x7566, %rdi
nop
sub %r8, %r8
mov $65, %rcx
rep movsl
nop
nop
nop
and $61389, %r8
lea addresses_WT_ht+0x171e6, %rsi
lea addresses_A_ht+0x4b86, %rdi
nop
nop
add %rbx, %rbx
mov $46, %rcx
rep movsw
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0xdfe6, %rsi
nop
nop
add $933, %r14
mov (%rsi), %r15d
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_normal+0x10866, %rdi
nop
nop
nop
xor $16175, %rdx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
add $23623, %rbp

// Faulty Load
mov $0x1570400000005e6, %r11
nop
nop
cmp %r9, %r9
vmovups (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'45': 2039, '7e': 2, '00': 9699, '49': 763, '48': 9323, 'ff': 3}
48 00 00 00 48 48 48 48 00 00 00 48 00 00 00 49 48 48 48 00 00 45 00 45 48 00 48 00 48 45 48 00 48 00 48 48 00 00 48 00 00 00 48 48 48 00 00 00 00 48 45 48 48 48 00 00 48 00 48 00 48 00 48 48 48 00 00 48 00 00 00 00 48 45 00 48 45 00 48 00 48 48 00 48 45 00 00 48 48 00 48 48 48 00 48 48 48 48 00 48 00 48 45 48 00 48 00 48 45 48 48 45 00 00 45 00 48 48 00 48 48 48 49 00 00 48 00 00 48 48 00 00 48 00 45 45 00 00 00 48 00 00 48 48 48 48 48 48 48 00 00 48 00 00 48 48 48 00 45 00 00 45 48 00 45 48 48 48 48 00 45 00 48 45 00 00 00 48 00 00 48 00 45 00 00 48 00 00 00 48 48 00 00 00 00 48 00 00 48 00 48 48 48 48 48 00 00 00 00 48 48 48 48 48 48 48 00 48 00 45 48 00 49 48 49 00 00 48 48 00 00 00 48 48 00 00 48 00 00 48 00 48 00 45 48 48 48 49 45 48 48 45 48 48 48 00 00 48 00 45 48 00 00 00 00 00 48 00 48 45 48 00 00 00 48 00 49 49 48 45 00 48 00 00 00 00 00 00 45 48 48 45 00 00 48 48 48 00 48 48 45 00 48 00 48 48 48 00 00 00 48 00 00 00 00 00 48 00 48 48 00 00 48 48 48 48 48 45 00 00 49 00 48 48 00 00 00 48 49 48 00 48 00 00 00 00 48 00 00 00 00 48 48 00 48 48 00 48 00 45 48 45 00 45 49 00 00 00 00 00 00 48 48 00 48 00 00 48 48 00 00 48 48 00 00 48 00 48 48 00 00 00 48 00 48 48 00 48 48 00 00 48 00 48 49 00 48 00 48 00 00 45 00 00 00 45 48 49 48 00 48 48 00 00 48 00 00 48 48 00 48 00 48 00 00 45 48 00 48 00 45 00 00 48 48 00 49 48 48 48 00 00 00 00 48 00 48 00 48 00 48 00 49 48 48 00 45 48 45 00 48 00 45 00 48 00 45 48 48 00 00 48 45 48 48 00 45 48 00 48 00 00 48 00 00 48 49 48 00 49 45 00 00 00 00 45 48 48 48 48 48 00 48 48 00 48 00 00 48 00 48 00 45 00 00 48 48 00 48 00 00 48 48 48 00 00 48 48 ff 48 00 45 00 48 48 48 00 00 00 48 00 48 48 00 48 00 48 48 00 48 00 00 49 00 48 00 00 00 45 48 00 45 00 00 48 00 00 48 48 00 00 00 48 00 48 00 00 48 48 48 49 00 48 00 00 48 48 00 00 48 48 00 00 48 00 48 48 45 48 00 48 48 00 00 00 48 48 00 48 00 48 00 48 00 48 48 00 48 00 00 00 48 48 45 00 00 48 00 48 00 48 48 48 00 48 48 48 48 00 00 00 48 00 48 48 48 48 48 00 00 45 45 48 48 00 45 00 48 48 48 00 48 00 48 48 48 48 48 00 48 45 00 48 00 45 48 00 00 00 48 00 45 48 49 48 00 00 00 48 00 48 00 00 45 00 00 48 48 48 00 48 00 00 00 48 48 48 45 48 00 00 00 48 00 45 00 48 00 00 00 48 00 00 00 00 48 00 48 49 48 00 45 48 00 00 00 00 00 48 00 48 48 00 00 48 00 00 00 45 00 49 48 00 48 48 48 00 00 00 00 48 48 00 00 00 48 00 00 00 00 45 00 48 00 48 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 48 00 00 00 48 48 48 00 00 00 48 48 00 48 00 00 48 00 48 00 00 48 48 00 00 48 48 00 45 48 00 48 48 48 48 49 00 48 45 00 00 00 00 48 45 48 00 00 00 00 00 00 00 45 48 48 48 00 48 00 00 00 00 00 00 00 48 00 45 48 00 00 00 45 00 00 00 48 48 45 48 00 48 49 48 48 00 00 00 48 45 00 00 48 48 00 00 00 48 00 48 00 00 48 48 00 45 00 00 48 48 45 00 00 48 00 48 48 48 00 48 48 48 48 48 00 48 48 45 00 48 48 00 48 48 48 48 00 49 48 00 00 00 48 48 48 48 48 00 48 48 45 00 00 48 00 00 49 00 48 00 48 00 48 45 00 48 48 48 00 00 48 48 48 48 00 00 45 48 48 49 00 00 48 49 49 00 48 48 45 48 00 00 00 00 48 48 00 45 48
*/

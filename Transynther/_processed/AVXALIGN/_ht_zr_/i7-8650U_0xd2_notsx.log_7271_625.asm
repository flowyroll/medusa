.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xd5ff, %rsi
lea addresses_UC_ht+0xdf, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r15, %r15
mov $81, %rcx
rep movsw
nop
nop
nop
nop
nop
and $56831, %r9
lea addresses_WC_ht+0x41bf, %rbp
nop
nop
and $16162, %rax
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x1ca07, %rsi
inc %rcx
mov (%rsi), %bp
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x84df, %rsi
clflush (%rsi)
nop
nop
nop
sub $5867, %r9
mov (%rsi), %edi
nop
nop
inc %r15
lea addresses_WC_ht+0x15edf, %rsi
lea addresses_WC_ht+0x1b259, %rdi
nop
nop
nop
cmp $21361, %r11
mov $47, %rcx
rep movsl
nop
nop
nop
nop
nop
and $5970, %rdi
lea addresses_A_ht+0xadf, %rcx
add %rdi, %rdi
mov (%rcx), %r15d
nop
nop
nop
nop
nop
add $61379, %r11
lea addresses_normal_ht+0xfb3f, %r11
clflush (%r11)
nop
nop
nop
nop
nop
and %r9, %r9
vmovups (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
and $28540, %rsi
lea addresses_UC_ht+0x193, %rax
nop
nop
nop
nop
sub %r15, %r15
movw $0x6162, (%rax)
nop
nop
and $26567, %rdi
lea addresses_normal_ht+0x128df, %rbp
nop
nop
add $15669, %rsi
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0x2cdf, %rsi
lea addresses_normal_ht+0x62df, %rdi
nop
nop
nop
nop
nop
xor $20145, %r11
mov $46, %rcx
rep movsl
nop
nop
inc %rdi
lea addresses_WC_ht+0xd5e3, %rax
nop
nop
nop
nop
cmp $2872, %rcx
movups (%rax), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
dec %rcx
lea addresses_A_ht+0xc1df, %rbp
nop
and %r15, %r15
mov (%rbp), %ecx
nop
nop
nop
nop
and $37810, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_WT+0x7adf, %rsi
nop
add %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
mfence

// Store
lea addresses_A+0x17bd7, %r12
nop
nop
add $55093, %r8
movb $0x51, (%r12)
nop
nop
and $3270, %r12

// Store
lea addresses_UC+0x7ddf, %rsi
nop
nop
nop
nop
sub $21657, %r12
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
xor $37669, %rbp

// Store
lea addresses_D+0x1d713, %r14
nop
nop
nop
add $46267, %rdi
movl $0x51525354, (%r14)
nop
nop
nop
nop
dec %r14

// Faulty Load
lea addresses_RW+0xc4df, %rsi
nop
xor %rdi, %rdi
movaps (%rsi), %xmm1
vpextrq $1, %xmm1, %r8
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 2818, '48': 619, '46': 3473, '44': 361}
00 48 00 46 00 46 44 46 48 48 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 46 00 44 00 00 00 00 46 48 00 46 00 00 48 46 46 00 46 00 46 46 44 48 00 46 00 46 48 00 00 46 00 00 46 46 00 00 00 00 46 00 00 00 46 44 00 00 00 00 46 00 46 46 00 00 00 46 48 00 46 00 46 00 46 46 46 00 46 46 00 46 00 46 44 46 00 46 48 46 00 00 44 00 46 46 00 46 00 00 00 00 00 46 00 46 00 46 44 00 00 00 46 00 00 00 46 46 00 00 44 00 00 46 00 00 00 00 00 46 46 46 46 00 00 00 00 46 46 00 46 46 46 00 00 46 00 46 00 00 00 00 00 46 00 46 00 00 00 46 46 00 48 46 46 44 48 46 46 46 44 46 46 00 46 48 00 00 48 46 46 46 48 00 46 48 00 46 48 00 46 00 00 46 00 46 46 00 00 00 46 48 46 00 00 00 46 00 46 46 00 46 00 46 00 46 48 00 46 46 00 46 46 46 00 46 46 00 00 46 00 46 00 00 00 00 00 46 48 00 00 00 46 00 46 46 46 48 46 46 44 46 46 44 46 46 00 00 00 46 46 46 00 46 46 46 46 00 46 44 46 00 48 00 46 46 00 46 00 46 46 46 46 48 46 46 46 46 00 46 46 46 00 46 00 46 46 48 46 46 46 46 48 46 46 44 46 46 00 46 44 00 00 00 00 00 46 48 46 46 44 46 48 46 44 48 46 44 00 46 46 00 00 00 00 00 46 48 46 00 46 48 00 46 46 46 46 46 00 00 00 46 46 46 00 46 46 46 46 46 00 00 48 00 00 00 46 00 46 48 00 46 48 00 46 46 46 46 00 46 00 00 00 00 00 00 46 00 00 46 44 00 46 46 00 46 00 46 00 00 00 00 00 00 00 00 00 00 46 00 46 48 00 00 46 00 00 46 46 00 00 00 46 00 46 46 46 46 00 46 00 46 44 00 00 46 00 46 00 00 46 00 48 46 46 00 46 46 46 00 48 00 46 46 46 48 00 00 00 00 00 46 46 00 46 00 46 46 00 00 46 46 48 46 00 46 00 46 00 46 46 44 46 44 46 00 48 46 48 46 00 00 00 46 00 46 44 46 46 46 46 46 46 44 46 46 46 44 46 00 48 46 44 46 46 00 46 00 00 46 46 00 46 46 44 00 46 00 46 46 00 46 00 00 00 46 46 44 46 46 46 44 46 44 46 46 46 46 46 00 00 46 00 46 00 00 46 44 46 46 00 46 46 46 46 46 44 44 46 46 00 46 46 00 46 44 48 46 48 46 46 44 46 46 00 00 00 44 00 46 00 46 46 46 46 00 00 48 46 48 00 44 46 46 00 46 00 00 00 46 44 48 46 48 46 46 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 46 46 00 00 48 46 48 46 00 46 46 00 00 44 46 00 46 00 00 46 00 00 00 48 00 48 48 00 00 00 00 00 00 00 00 46 00 00 00 48 46 00 00 46 48 46 46 46 00 00 00 46 00 00 46 44 00 46 46 46 46 46 44 48 46 44 46 00 46 48 46 48 46 46 44 46 46 46 46 44 46 00 46 46 46 44 48 00 00 00 00 46 00 46 00 46 00 46 48 48 00 46 44 46 46 46 46 46 46 00 46 00 00 48 44 46 46 46 00 44 00 00 00 00 46 44 48 00 44 00 00 46 46 00 46 00 46 00 00 00 00 46 46 00 46 00 44 00 44 00 46 46 00 46 46 00 44 00 46 46 46 00 00 00 00 00 48 46 00 46 48 00 00 46 00 00 46 48 00 46 46 00 00 00 00 46 48 46 00 00 46 46 46 46 46 44 46 46 00 46 46 00 00 46 46 00 00 46 46 44 46 44 46 46 46 46 46 46 00 00 48 46 00 46 00 00 00 46 00 00 00 46 00 46 44 00 46 00 00 46 46 44 46 46 44 46 00 46 46 00 00 00 46 46 46 44 46 00 46 48 00 48 46 46 48 00 00 00 00 46 46 00 44 48 46 00 00 46 44 46 46 00 46 48 46 48 48 46 46 46 46 00 46 00 48 46 00 46 46 44 48 46 46 00 46 00 48 00 46 00 46 44 00 46 48 46 46 46 46 00 46 46 00 46 46 00 00 00 46 00 00 46 46 46 00 00 00 00 00 46 00 00 46 46 46 00 44 48 48
*/

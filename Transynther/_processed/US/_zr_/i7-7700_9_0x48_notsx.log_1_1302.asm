.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x17086, %rsi
lea addresses_WC_ht+0x43e0, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $86, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $24058, %rdx
lea addresses_WC_ht+0x199c, %r12
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
cmp $49873, %rsi
lea addresses_UC_ht+0xb39c, %rsi
lea addresses_UC_ht+0x6e84, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %rax
mov $92, %rcx
rep movsl
nop
nop
and %rax, %rax
lea addresses_WC_ht+0x8ac, %rsi
lea addresses_WC_ht+0x115c, %rdi
nop
nop
nop
nop
sub $54472, %r12
mov $87, %rcx
rep movsw
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x37fc, %rdi
nop
nop
nop
nop
nop
cmp $44176, %rsi
movb $0x61, (%rdi)
nop
nop
xor $53722, %rbp
lea addresses_UC_ht+0x5f7c, %rdx
nop
nop
add %r15, %r15
movl $0x61626364, (%rdx)
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x819c, %r15
nop
nop
nop
inc %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r15)
nop
xor $61637, %rdx
lea addresses_D_ht+0x1599c, %rdi
nop
add %rax, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
and $0xffffffffffffffc0, %rdi
movaps %xmm7, (%rdi)
nop
nop
inc %rdi
lea addresses_WT_ht+0x1b29c, %rsi
lea addresses_WC_ht+0x1b99c, %rdi
nop
sub $32461, %rax
mov $61, %rcx
rep movsb
inc %rax
lea addresses_normal_ht+0x159c, %rsi
lea addresses_UC_ht+0x18f62, %rdi
clflush (%rdi)
nop
nop
and %r12, %r12
mov $118, %rcx
rep movsw
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x18e68, %rcx
nop
nop
nop
nop
add %rdx, %rdx
movw $0x6162, (%rcx)
cmp %r12, %r12
lea addresses_A_ht+0x1b2b3, %rdi
nop
nop
nop
nop
inc %rdx
movw $0x6162, (%rdi)
xor $16621, %rsi
lea addresses_D_ht+0x13d1c, %rsi
lea addresses_WC_ht+0x19c, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $44, %rcx
rep movsb
dec %rsi
lea addresses_WC_ht+0xd034, %rax
nop
sub $47960, %rbp
mov (%rax), %r15
nop
sub $8293, %rax
lea addresses_D_ht+0xae1c, %rcx
nop
nop
nop
nop
nop
dec %rdx
mov (%rcx), %r12
add %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0x1899c, %rbx
clflush (%rbx)
add %r10, %r10
movb (%rbx), %r8b
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_normal+0xa31c, %r14
nop
nop
add $22121, %rdx
movw $0x5152, (%r14)
add $54441, %rcx

// Store
lea addresses_A+0x7c1c, %rbx
nop
nop
nop
cmp $38811, %r14
movb $0x51, (%rbx)
nop
nop
nop
nop
dec %rdx

// REPMOV
lea addresses_A+0xedd1, %rsi
lea addresses_WT+0xe19c, %rdi
nop
dec %r14
mov $21, %rcx
rep movsl
nop
nop
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_US+0xa19c, %rdx
nop
nop
nop
add %rcx, %rcx
movb (%rdx), %r11b
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 7}}
{'00': 1}
00
*/

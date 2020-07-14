.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x33cb, %rsi
lea addresses_WC_ht+0x1ee3e, %rdi
nop
nop
nop
nop
nop
xor $1993, %r8
mov $95, %rcx
rep movsq
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x188be, %rsi
lea addresses_normal_ht+0x418c, %rdi
nop
nop
nop
nop
inc %r11
mov $12, %rcx
rep movsw
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0xc8be, %rsi
lea addresses_normal_ht+0x19474, %rdi
clflush (%rdi)
nop
dec %r14
mov $38, %rcx
rep movsl
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x1bbe, %rsi
lea addresses_D_ht+0xb9e6, %rdi
nop
nop
nop
inc %r10
mov $98, %rcx
rep movsl
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x10cd6, %r13
nop
nop
nop
nop
nop
inc %r8
movups (%r13), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
nop
sub $60225, %r10
lea addresses_D_ht+0x9cbe, %rsi
lea addresses_WC_ht+0xa3be, %rdi
clflush (%rdi)
nop
nop
add $12072, %r8
mov $114, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r13
lea addresses_WC_ht+0x17c8e, %rsi
lea addresses_A_ht+0x1297e, %rdi
nop
nop
sub %r8, %r8
mov $62, %rcx
rep movsl
inc %r14
lea addresses_D_ht+0x5572, %r8
nop
nop
nop
nop
cmp $12840, %r11
movb (%r8), %cl
nop
nop
xor $6445, %rcx
lea addresses_UC_ht+0xd009, %r11
nop
cmp $51957, %r13
movb $0x61, (%r11)
nop
inc %rdi
lea addresses_WT_ht+0x187be, %rsi
nop
nop
nop
sub $13684, %r8
movb (%rsi), %cl
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0xb3be, %rsi
lea addresses_WC_ht+0x1cf3e, %rdi
nop
cmp $32603, %r10
mov $119, %rcx
rep movsl
nop
cmp $28907, %r11
lea addresses_A_ht+0x6be, %r8
nop
nop
nop
nop
cmp $35870, %r13
mov (%r8), %edi
nop
nop
nop
nop
cmp $16670, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rdx

// Load
lea addresses_A+0x1f8de, %r11
clflush (%r11)
nop
nop
nop
nop
add $8370, %rax
movups (%r11), %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
add $58575, %r13

// Store
lea addresses_US+0x16fd4, %r10
nop
nop
nop
nop
cmp %r15, %r15
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
add $13921, %r10

// Store
lea addresses_normal+0x183be, %r10
nop
xor $48900, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
nop
add $49481, %rdx

// Store
lea addresses_D+0xd72, %r10
nop
nop
nop
nop
and $35955, %r15
movl $0x51525354, (%r10)
nop
nop
nop
sub %rdx, %rdx

// Load
lea addresses_A+0x1e1e, %rdx
add $48495, %r10
vmovups (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
xor $22759, %r10

// Store
lea addresses_US+0xc9be, %rax
nop
nop
sub $54698, %rdx
movl $0x51525354, (%rax)
nop
nop
cmp $36667, %r11

// Faulty Load
lea addresses_WT+0x1f3be, %r13
nop
nop
cmp $11571, %rax
movups (%r13), %xmm5
vpextrq $1, %xmm5, %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 15292}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

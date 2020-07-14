.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x90c8, %rsi
lea addresses_normal_ht+0x98c9, %rdi
nop
nop
nop
nop
add $55232, %rbp
mov $20, %rcx
rep movsw
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x3c08, %r11
nop
nop
nop
dec %rcx
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm6
vpextrq $0, %xmm6, %rbp
and %r11, %r11
lea addresses_WC_ht+0x9ec8, %rdi
nop
nop
nop
nop
xor %rax, %rax
movl $0x61626364, (%rdi)
dec %rdi
lea addresses_WC_ht+0xd70c, %rsi
lea addresses_A_ht+0xd664, %rdi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $100, %rcx
rep movsl
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x467e, %rsi
lea addresses_UC_ht+0x2f48, %rdi
nop
xor %rax, %rax
mov $92, %rcx
rep movsw
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x11b6c, %rsi
lea addresses_WC_ht+0x19548, %rdi
clflush (%rsi)
nop
nop
nop
add $62661, %r11
mov $102, %rcx
rep movsw
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x8648, %rdx
nop
and $22070, %rcx
mov (%rdx), %rax
and $39049, %r11
lea addresses_UC_ht+0x95a8, %rbp
clflush (%rbp)
nop
nop
nop
nop
xor $37363, %rcx
mov (%rbp), %rsi
and $46574, %rdi
lea addresses_normal_ht+0x18e88, %r11
nop
nop
nop
nop
cmp $42531, %rsi
movb $0x61, (%r11)
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x13f80, %rsi
lea addresses_A_ht+0xda52, %rdi
nop
and %r12, %r12
mov $70, %rcx
rep movsl
and $11174, %r11
lea addresses_WC_ht+0x1d048, %rdi
and $5562, %rsi
mov (%rdi), %dx
nop
xor $49462, %rdi
lea addresses_WT_ht+0x16c8, %rsi
lea addresses_WC_ht+0xae48, %rdi
nop
nop
sub $18647, %r11
mov $86, %rcx
rep movsq
add $3635, %rax
lea addresses_D_ht+0x4048, %rsi
lea addresses_A_ht+0x8b88, %rdi
nop
nop
dec %rax
mov $103, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x12a2a, %r11
nop
nop
cmp $15111, %rsi
mov (%r11), %rcx
nop
dec %rcx
lea addresses_WC_ht+0x3b48, %rsi
nop
nop
nop
nop
nop
and $15164, %rdx
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x69df190000000492, %rdx
nop
and $11583, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
and $9926, %rdx

// Faulty Load
lea addresses_WC+0x19348, %rax
nop
nop
nop
nop
xor $57458, %rsi
movntdqa (%rax), %xmm0
vpextrq $1, %xmm0, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'46': 2, '00': 4994, '48': 5210, '45': 11358, '49': 265}
45 45 45 45 48 48 45 48 00 45 45 00 45 48 00 45 45 45 45 45 48 45 49 45 00 45 00 45 00 45 45 45 48 45 45 45 00 48 45 00 45 45 00 48 45 45 48 45 49 00 45 48 45 48 49 45 45 45 00 45 00 48 45 45 45 45 48 00 45 45 45 45 00 45 45 48 00 45 45 00 48 00 48 00 45 45 48 00 48 45 48 00 45 00 48 45 00 00 48 48 45 00 45 48 48 45 45 45 45 45 48 48 48 48 45 45 48 45 45 48 45 45 45 45 48 00 00 45 00 48 48 45 45 45 48 49 00 45 48 45 48 45 48 00 45 45 45 45 45 00 48 00 45 00 00 45 00 00 45 48 45 00 45 45 45 45 00 45 00 45 00 45 48 00 45 00 00 45 45 00 45 45 48 48 00 45 00 48 45 45 45 00 45 45 45 00 45 45 48 00 45 45 45 00 48 45 48 00 45 48 00 45 48 00 00 45 45 45 45 00 45 45 00 48 45 00 00 45 45 45 48 00 45 45 45 45 00 48 45 00 48 45 45 48 48 45 00 00 48 45 45 48 00 45 48 00 45 45 45 45 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 48 45 45 45 00 45 45 48 48 00 45 45 48 48 48 00 45 00 48 45 00 48 45 00 48 45 48 48 45 00 00 45 48 45 45 48 00 45 48 00 48 45 48 00 00 45 45 45 45 00 45 48 45 45 45 48 45 45 00 48 00 00 45 48 48 45 00 45 00 48 45 48 48 45 48 45 45 45 48 48 45 45 48 00 45 48 45 45 45 48 45 45 00 00 45 00 00 45 45 48 48 45 00 48 45 45 00 45 45 00 00 45 45 00 48 45 48 48 48 45 45 45 45 45 00 45 48 48 45 45 00 00 45 45 48 00 45 45 48 00 00 45 45 00 45 00 45 45 45 48 45 00 45 45 49 45 48 48 45 45 00 45 00 45 45 48 00 45 48 00 45 45 45 45 48 00 45 45 48 48 45 45 45 00 48 45 48 48 00 45 45 45 00 45 45 48 48 45 48 48 45 48 48 45 45 00 45 00 48 48 45 45 00 48 48 00 45 45 45 45 48 45 45 45 00 45 45 00 45 45 00 48 00 45 49 45 45 45 00 00 45 48 48 45 45 00 45 48 48 48 00 45 45 00 45 45 48 45 45 48 00 45 45 45 48 00 45 48 49 45 45 48 45 00 45 00 00 00 45 45 48 48 45 45 48 45 48 48 45 45 00 45 00 00 00 45 45 48 48 45 45 48 45 45 48 00 45 00 48 48 45 48 45 45 45 48 45 45 00 45 45 45 48 48 45 45 00 45 48 00 45 48 00 45 45 48 00 00 45 45 45 48 45 45 48 45 45 48 45 00 00 48 45 45 48 48 00 45 00 45 45 45 00 45 45 48 48 45 45 48 48 45 45 45 45 00 00 45 45 00 45 45 00 45 45 45 45 45 00 45 48 45 45 45 48 00 45 48 00 00 45 45 00 48 45 49 00 45 45 00 45 48 45 00 48 45 45 48 00 45 45 45 48 00 45 45 45 45 45 48 45 45 45 48 45 45 48 00 45 45 49 00 45 48 00 48 45 48 00 45 45 00 49 45 00 00 45 48 00 45 48 00 45 45 00 00 45 00 48 45 00 45 45 48 45 45 45 48 48 45 00 48 45 00 48 45 45 45 00 45 45 48 45 45 48 00 45 48 49 45 45 48 00 45 48 48 45 45 45 48 48 45 48 45 45 00 45 45 45 45 48 45 48 45 45 48 45 45 48 00 45 45 00 48 45 45 00 00 45 45 48 45 48 45 45 48 45 45 48 45 45 45 48 45 45 45 48 00 45 48 00 45 45 48 48 45 49 45 48 00 00 45 45 48 48 45 00 00 45 45 48 48 45 48 00 45 45 48 00 45 45 45 49 45 45 00 45 45 48 45 45 45 00 00 45 45 45 45 45 00 00 45 45 48 45 45 45 48 00 45 00 48 48 45 45 48 45 45 45 48 45 00 00 45 48 48 45 00 00 45 00 45 00 45 45 45 49 00 45 48 00 00 45 45 45 48 00 45 45 00 45 48 48 45 45 48 00 45 45 48 00 48 45 45 00 45 48 48 45 48 45 45 00 48 48 45 48 48 45 48 00 45 45 00 00 45 45 45 45 00 45 45 45 00 45 45 00 48 45 49 48 00 45 45 00 45 48 00 45 48 45 45 00 45 45
*/

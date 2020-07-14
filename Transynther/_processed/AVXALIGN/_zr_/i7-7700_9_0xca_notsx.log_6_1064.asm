.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x19940, %rbx
nop
nop
add $25452, %r11
mov $0x6162636465666768, %rax
movq %rax, (%rbx)
nop
nop
nop
nop
and $22761, %rbp
lea addresses_A_ht+0xf208, %r9
xor %rsi, %rsi
mov (%r9), %eax
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x1888, %rsi
lea addresses_A_ht+0xa778, %rdi
nop
and %rbp, %rbp
mov $95, %rcx
rep movsb
nop
nop
dec %rdi
lea addresses_A_ht+0x74d8, %rcx
nop
and %r9, %r9
movb $0x61, (%rcx)
add $26111, %r11
lea addresses_WC_ht+0x254, %rdi
nop
nop
nop
and %r11, %r11
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
add $43949, %rbx
lea addresses_A_ht+0x4738, %rsi
lea addresses_A_ht+0xae88, %rdi
nop
nop
nop
and %rbx, %rbx
mov $35, %rcx
rep movsw
nop
nop
nop
sub $15733, %rdi
lea addresses_UC_ht+0xc086, %rax
add %rdi, %rdi
movb $0x61, (%rax)
nop
nop
add $5973, %r9
lea addresses_WT_ht+0x20a4, %r9
nop
nop
nop
nop
sub $40541, %rax
movw $0x6162, (%r9)
nop
nop
nop
xor $9757, %rbp
lea addresses_A_ht+0x4588, %r11
and %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r11)
sub $28858, %rbx
lea addresses_normal_ht+0x1cb98, %rbx
add %r11, %r11
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
nop
xor $12098, %rsi
lea addresses_WC_ht+0x13958, %rax
nop
nop
nop
nop
and $25015, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%rax)
nop
nop
cmp $6813, %rbp
lea addresses_WT_ht+0x16070, %r11
nop
and %r9, %r9
mov (%r11), %di
nop
xor %r9, %r9
lea addresses_normal_ht+0x19888, %rdi
nop
nop
nop
dec %rsi
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x11388, %rcx
and $63717, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
xor %rdi, %rdi

// Store
mov $0x36573a0000000458, %rdx
nop
nop
inc %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movntdq %xmm5, (%rdx)
nop
nop
nop
nop
xor $45489, %rdi

// Store
lea addresses_A+0xb3c, %r9
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%r9)
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_US+0x1b088, %r9
nop
xor %rdx, %rdx
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_RW+0x1d344, %r9
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%r9)
nop
nop
add $10290, %rax

// Faulty Load
mov $0x280fc30000000688, %rdx
nop
nop
and $61708, %r9
movb (%rdx), %r15b
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 6}
00 00 00 00 00 00
*/
